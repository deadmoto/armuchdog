unit reportcosgu;

interface

uses
  datamodule,
  Messages,
  Variants,
  Classes,
  Windows,
  Controls,
  Graphics,
  Forms,
  Dialogs,
  SysUtils, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls;

type
  treport_cosgu = class(TForm)
    grid: TDBGrid;
    startbox: TGroupBox;
    startpick: TDateTimePicker;
    panel: TPanel;
    endbox: TGroupBox;
    endpick: TDateTimePicker;
    cosgubox: TGroupBox;
    pbsbox: TGroupBox;
    search: TButton;
    report: TButton;
    cosguselect: TComboBox;
    pbs: TComboBox;
    status: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure cosguselectKeyPress(Sender: TObject; var Key: Char);
    procedure pbsKeyPress(Sender: TObject; var Key: Char);
    procedure searchClick(Sender: TObject);
    procedure reportClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
  private
  public
    procedure fill;
  end;

var
  report_cosgu: treport_cosgu;

implementation

uses
  datamodel,
  contractfm,
  util;

{$R *.dfm}

procedure getcosgu;
var
  i:integer;
begin
  report_cosgu.cosguselect.items.clear;
  dm.query.sql.text:='SELECT code'+#13+
                       'FROM subcontract'+#13+
                       'WHERE code IS NOT NULL'+#13+
                       'GROUP BY code';
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      report_cosgu.cosguselect.items.add(trim(dm.query.fieldbyname('code').asstring));
      dm.query.next;
    end;
  dm.query.close;
  report_cosgu.cosguselect.items.strings[0]:='*';
end;

procedure getpbs;
var
  i:integer;
begin
  report_cosgu.pbs.items.clear;
  report_cosgu.pbs.items.add('*');
  dm.query.sql.text:='SELECT * FROM RegionID';
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      report_cosgu.pbs.items.add(trim(dm.query.fieldbyname('fldname').asstring));
      dm.query.next;
    end;
  dm.query.close;
end;

procedure treport_cosgu.fill;
var
  i:integer;
  price:real;
begin
  dm.query.sql.text:='SELECT '+commstr([subcontract.id.name,subcontract.cosgu.name,
                                        cosgu.name.name,region.name.name,provider.name.name,
                                        subcontract.price.name])+#13+
                     'FROM '+subcontract.table+#13+
                     'INNER JOIN '+cosgu.table+
                     ' ON '+subcontract.cosgu.name+'='+cosgu.id.name+#13+
                     'INNER JOIN '+contract.table+
                     ' ON '+contract.id.name+'='+subcontract.id.name+#13+
                     'INNER JOIN '+region.table+
                     ' ON '+contract.region.name+'='+region.id.name+#13+
                     'INNER JOIN '+provider.table+
                     ' ON '+contract.provider.name+'='+provider.id.name+#13+
                     'WHERE ('+subcontract.cosgu.name+
                     ' LIKE '+quotedstr('%'+starorstr(cosguselect.text)+'%')+')';
  if pbs.itemindex>0 then
    dm.query.sql.text:=dm.query.sql.text+
                       'AND ('+region.name.name+
                       '='+quotedstr(pbs.text)+')';
  dm.query.sql.text:=dm.query.sql.text+
                     'AND ('+subcontract.date.name+'>='+dateornull(startpick.date)+')'+
                     'AND ('+subcontract.date.name+'<'+dateornull(endpick.date)+')'+
                     'AND ('+subcontract.cosgu.name+'<>'+quotedstr('')+')'+#13+
                     'ORDER BY '+commstr([subcontract.cosgu.name,region.name.name]);
  grid.datasource.dataset:=dm.query;
  dm.query.open;
  status.panels.items[1].text:=inttostr(dm.query.recordcount);
  dm.query.fieldbyname('code').visible:=false;
  grid.columns.items[0].width:=8*9;
  grid.columns.items[1].width:=8*32;
  grid.columns.items[2].width:=8*12;
  grid.columns.items[4].width:=8*8;
  grid.columns.items[3].width:=grid.width-(grid.columns.items[0].width+grid.columns.items[1].width+grid.columns.items[2].width+grid.columns.items[4].width+36);
  grid.columns.items[0].title.caption:='№ договора';
  grid.columns.items[1].title.caption:='КОСГУ';
  grid.columns.items[2].title.caption:='ПБС';
  grid.columns.items[3].title.caption:='Поставщик';
  grid.columns.items[4].title.caption:='Сумма';
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      price:=price+dm.query.fieldbyname(subcontract.price.column).value;
      dm.query.next;
    end;
  status.panels.items[3].text:=floattostr(price);
end;

procedure treport_cosgu.FormShow(Sender: TObject);
var
  month:word;
  temp:word;
begin
  decodedate(now,temp,month,temp);
  if month>3 then
    startpick.date:=encodedate(currentyear,month-3,1)
  else
    startpick.date:=encodedate(currentyear-1,month-3+12,1);
  endpick.date:=encodedate(currentyear,month,1);
  getcosgu;
  getpbs;
  cosguselect.itemindex:=0;
  pbs.itemindex:=0;
end;

procedure treport_cosgu.cosguselectKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure treport_cosgu.pbsKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure treport_cosgu.searchClick(Sender: TObject);
begin
  fill;
end;

procedure treport_cosgu.reportClick(Sender: TObject);
begin
  if cosguselect.itemindex=0 then
    dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\cosgu_by_pbs.fr3')
  else
    dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\cosgu_by_cosgu.fr3');
  dm.report.variables.variables['start']:=startpick.datetime;
  dm.report.variables.variables['finish']:=endpick.datetime;
  dm.report.showreport;
  fill;
end;

procedure treport_cosgu.gridDblClick(Sender: TObject);
begin
  if dm.query.recordcount>0 then
    contractform.edit(strtoint(grid.fields[0].asstring));
  search.click;
end;

end.

