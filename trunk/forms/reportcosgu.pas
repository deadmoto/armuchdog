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
    cosgu: TComboBox;
    pbs: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure cosguKeyPress(Sender: TObject; var Key: Char);
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
  contractfm,
  util;

{$R *.dfm}

procedure getcosgu;
var
  i:integer;
begin
  report_cosgu.cosgu.items.clear;
  dm.query.sql.text:='SELECT code'+#13+
                       'FROM subcontract'+#13+
                       'WHERE code IS NOT NULL'+#13+
                       'GROUP BY code';
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      report_cosgu.cosgu.items.add(trim(dm.query.fieldbyname('code').asstring));
      dm.query.next;
    end;
  dm.query.close;
  report_cosgu.cosgu.items.strings[0]:='*';
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
begin
  dm.query.sql.text:='SELECT subcontract.id,subcontract.code,ArticleDog.name_artic,RegionIDDog.FLDNAME,SupplierDog.SUPPLIER,subcontract.price'+#13+
                       'FROM subcontract'+#13+
                       'INNER JOIN ArticleDog ON subcontract.code=ArticleDog.cosgu'+#13+
                       'INNER JOIN ReestrDog ON subcontract.id=ReestrDog.REGN'+#13+
                       'INNER JOIN RegionIDDog ON ReestrDog.FLDID=RegionIDDog.FLDID'+#13+
                       'INNER JOIN SupplierDog ON ReestrDog.ID_SUPPLIER = SupplierDog.ID_SUPPLIER'+#13+
                       'WHERE (subcontract.code LIKE '+quotedstr('%'+starorstr(cosgu.text)+'%')+') '+
                       'AND (RegionIDDog.FLDNAME LIKE '+quotedstr('%'+starorstr(pbs.text)+'%')+') '+
                       'AND (subcontract.subdate>='+dateornull(startpick.date)+') '+
                       'AND (subcontract.subdate<'+dateornull(endpick.date)+')'+
                       'AND (subcontract.code<>'+quotedstr('')+')'+#13+
                       'ORDER BY RegionIDDog.FLDNAME';
  grid.datasource.dataset:=dm.query;
  dm.query.open;
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
  cosgu.itemindex:=0;
  pbs.itemindex:=0;
end;

procedure treport_cosgu.cosguKeyPress(Sender: TObject; var Key: Char);
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
  if cosgu.itemindex=0 then
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

