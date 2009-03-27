unit ReportOKVED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, FR_Class,
  FR_DSet, FR_DBSet, DB;

procedure showreport;overload;
procedure showreport(startd,endd:tdatetime;nomencl:string);overload;
type
  Treport_okved = class(TForm)
    nomenclbox: TGroupBox;
    regionbox: TGroupBox;
    nomencl: TComboBox;
    region: TComboBox;
    report: TDBGrid;
    panel: TPanel;
    status: TStatusBar;
    search: TBitBtn;
    startpick: TDateTimePicker;
    startbox: TGroupBox;
    endbox: TGroupBox;
    endpick: TDateTimePicker;
    Button1: TButton;
    frquery: TfrDBDataSet;
    frsummary: TfrReport;
    source: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure nomenclKeyPress(Sender: TObject; var Key: Char);
    procedure searchClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure reportDblClick(Sender: TObject);
  private
    procedure getnomencls;
    procedure getregions;
  public
  end;

implementation

uses
  datamodule,
  contractfm,
  util;

{$R *.dfm}

procedure treport_okved.getnomencls;
var
  i:integer;
begin
  nomencl.items.clear;
  dmod.query.sql.text:='SELECT nomencl'+#13+
                       'FROM subcontract'+#13+
                       'WHERE nomencl IS NOT NULL'+#13+
                       'GROUP BY nomencl';
  dmod.query.open;
  dmod.query.first;
  for i:=0 to dmod.query.recordcount-1 do
    begin
      nomencl.items.add(trim(dmod.query.fieldbyname('nomencl').asstring));
      dmod.query.next;
    end;
  dmod.query.close;
  nomencl.items.strings[0]:='*';
end;

procedure treport_okved.getregions;
var
  i:integer;
begin
  region.items.clear;
  region.items.add('*');
  dmod.query.sql.text:='SELECT * FROM RegionID';
  dmod.query.open;
  dmod.query.first;
  for i:=0 to dmod.query.recordcount-1 do
    begin
      region.items.add(trim(dmod.query.fieldbyname('fldname').asstring));
      dmod.query.next;
    end;
  dmod.query.close;
end;

procedure Treport_okved.FormShow(Sender: TObject);
var
  month:word;
  temp:word;
begin
  decodedate(now,temp,month,temp);
  endpick.date:=encodedate(currentyear,month,1);
  startpick.datetime:=incmonth(endpick.date,-3);
  getnomencls;
  getregions;
  nomencl.itemindex:=0;
  region.itemindex:=0;
end;

procedure showreport;
var
  month:word;
  temp:word;
  report:treport_okved;
begin
  report:=treport_okved.create(application.owner);
  decodedate(now,temp,month,temp);
  report.endpick.date:=encodedate(currentyear,month,1);
  report.startpick.datetime:=incmonth(report.endpick.date,-3);
  report.getnomencls;
  report.getregions;
  report.nomencl.itemindex:=0;
  report.region.itemindex:=0;
  report.showmodal;
end;

procedure showreport(startd,endd:tdatetime;nomencl:string);
var
  i:integer;
  report:treport_okved;
begin
  report:=treport_okved.create(application.owner);
  report.show;
  report.startpick.date:=startd;
  report.endpick.date:=endd;
  report.getnomencls;
  report.getregions;
  for i:=0 to report.nomencl.items.count-1 do
    if report.nomencl.items.strings[i]=nomencl then
      report.nomencl.itemindex:=i;
  report.search.click;
end;

procedure Treport_okved.nomenclKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure Treport_okved.searchClick(Sender: TObject);
begin
  dmod.query.sql.text:='SELECT subcontract.id,subcontract.nomencl,NomenclDog.NAME,RegionIDDog.FLDNAME,SupplierDog.SUPPLIER,subcontract.price'+#13+
                       'FROM subcontract'+#13+
                       'INNER JOIN NomenclDog ON subcontract.nomencl=NomenclDog.ID_NOMENCL'+#13+
                       'INNER JOIN ReestrDog ON subcontract.id=ReestrDog.REGN'+#13+
                       'INNER JOIN RegionIDDog ON ReestrDog.FLDID=RegionIDDog.FLDID'+#13+
                       'INNER JOIN SupplierDog ON ReestrDog.ID_SUPPLIER = SupplierDog.ID_SUPPLIER'+#13+
                       'WHERE (subcontract.nomencl LIKE '+quotedstr('%'+starorstr(nomencl.text)+'%')+') '+
                       'AND (RegionIDDog.FLDNAME LIKE '+quotedstr('%'+starorstr(region.text)+'%')+') '+
                       'AND (subcontract.subdate>='+dateornull(startpick.date)+') '+
                       'AND (subcontract.subdate<'+dateornull(endpick.date)+')'+
                       'AND (subcontract.nomencl<>'+quotedstr('')+
                       'AND (subcontract.report<>1)'+')';
  source.dataset:=dmod.query;
  dmod.query.open;
  dmod.query.fieldbyname('NAME').visible:=false;
  report.columns.items[0].width:=8*9;
  report.columns.items[1].width:=8*9;
  report.columns.items[2].width:=8*12;
  report.columns.items[4].width:=8*8;
  report.columns.items[3].width:=report.width-(report.columns.items[0].width+report.columns.items[1].width+report.columns.items[2].width+report.columns.items[4].width+36);
  report.columns.items[0].title.caption:='� ��������';
  report.columns.items[1].title.caption:='�����';
  report.columns.items[2].title.caption:='���';
  report.columns.items[3].title.caption:='���������';
  report.columns.items[4].title.caption:='�����';
end;

procedure Treport_okved.Button1Click(Sender: TObject);
begin
  if nomencl.itemindex=0 then
    frsummary.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_bypbs.frf')
  else
    frsummary.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_byokved.frf');
  frsummary.dictionary.variables.variable['start']:=startpick.datetime;
  frsummary.dictionary.variables.variable['end']:=endpick.datetime;
  frsummary.showreport;
end;

procedure Treport_okved.reportDblClick(Sender: TObject);
begin
  if dmod.query.recordcount>0 then
    contractform.edit(strtoint(report.fields[0].asstring));
  search.click;
end;

end.
