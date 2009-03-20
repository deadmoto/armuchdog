unit ReportOKVED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, FR_Class,
  FR_DSet, FR_DBSet;

type
  Treport_okved = class(TForm)
    nomenclbox: TGroupBox;
    regionbox: TGroupBox;
    nomencl: TComboBox;
    region: TComboBox;
    report: TDBGrid;
    panel: TPanel;
    status: TStatusBar;
    BitBtn1: TBitBtn;
    startpick: TDateTimePicker;
    startbox: TGroupBox;
    endbox: TGroupBox;
    endpick: TDateTimePicker;
    Button1: TButton;
    frquery: TfrDBDataSet;
    frsummary: TfrReport;
    procedure FormShow(Sender: TObject);
    procedure nomenclKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  report_okved: Treport_okved;

implementation

uses
  dmunit,
  sqltext;

{$R *.dfm}

procedure Treport_okved.FormShow(Sender: TObject);
var
  i:integer;
  month:word;
  temp:word;
begin
  decodedate(now,temp,month,temp);
  if month>3 then
    startpick.date:=encodedate(currentyear,month-3,1)
  else
    startpick.date:=encodedate(currentyear-1,month-3+12,1);
  endpick.date:=encodedate(currentyear,month,1);
//filling nomencl combobox
  dm.query.sql.text:='SELECT nomencl'+#13+
                     'FROM subcontract'+#13+
                     'WHERE nomencl IS NOT NULL'+#13+
                     'GROUP BY nomencl';
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      nomencl.items.add(dm.query.fieldbyname('nomencl').asstring);
      dm.query.next;
    end;
  nomencl.items.strings[0]:='*';
//filling region combobox
  region.items.add('*');
  dm.query.sql.text:=sqltext.regionid;
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      region.items.add(dm.query.fieldbyname('fldname').asstring);
      dm.query.next;
    end;
  dm.query.close;
end;

procedure Treport_okved.nomenclKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure Treport_okved.BitBtn1Click(Sender: TObject);
begin
//  dm.query.sql.text:=sqltext.report_okved;
  dm.query.sql.text:='SELECT subcontract.id,subcontract.nomencl,RegionIDDog.FLDNAME,SupplierDog.SUPPLIER,subcontract.price'+#13+
                     'FROM subcontract'+#13+
                     'INNER JOIN ReestrDog ON subcontract.id=ReestrDog.REGN'+#13+
                     'INNER JOIN RegionIDDog ON ReestrDog.FLDID=RegionIDDog.FLDID'+#13+
                     'INNER JOIN SupplierDog ON ReestrDog.ID_SUPPLIER = SupplierDog.ID_SUPPLIER'+#13+
                     'WHERE (subcontract.nomencl LIKE '+quotedstr('%'+nomencl.text+'%')+') '+
                     'AND (subcontract.subdate >= :start) '+
                     'AND (subcontract.subdate < :finish) '+
                     'AND (subcontract.nomencl <> '+quotedstr('')+')';
  dm.query.parambyname('start').value:=startpick.date;
  dm.query.parambyname('finish').value:=endpick.date;
//  dm.query.parambyname('nomencl').value:=nomencl.text;
  dm.query.open;
  report.columns.items[0].width:=8*10;
  report.columns.items[1].width:=8*28;
  report.columns.items[2].width:=8*10;
  report.columns.items[3].width:=8*10;
  report.columns.items[4].width:=8*28;
end;

procedure Treport_okved.Button1Click(Sender: TObject);
var
  s:string;
begin
  frsummary.loadfromfile('reports\summary.frf');
  s:=datetostr(startpick.date);
  frsummary.dictionary.variables.variable['start']:=startpick.datetime;
  frsummary.dictionary.variables.variable['end']:=endpick.datetime;
  frsummary.showreport;
end;

end.
