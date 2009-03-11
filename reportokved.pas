unit ReportOKVED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, FR_Class,
  FR_DSet, FR_DBSet;

const
  okved='SELECT ID_NOMENCL1'+#13+'FROM ReestrDog'+#13+'WHERE (ID_NOMENCL1<>'+'''+'''+')'+#13+'GROUP BY ID_NOMENCL1';

type
  Treport_okved = class(TForm)
    okvedbox: TGroupBox;
    regionbox: TGroupBox;
    okved: TComboBox;
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
    procedure okvedKeyPress(Sender: TObject; var Key: Char);
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
//filling okved combobox
  dm.query.sql.text:=reportokved.okved;
//  dm.query.parambyname('nomencl').value:='1';
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      okved.items.add(dm.query.fieldbyname('id_nomencl1').asstring);
      dm.query.next;
    end;
  okved.items.strings[0]:='*';
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

procedure Treport_okved.okvedKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure Treport_okved.BitBtn1Click(Sender: TObject);
begin
  dm.query.sql.text:=sqltext.report_okved;
  dm.query.parambyname('start').value:=startpick.date;
  dm.query.parambyname('end').value:=endpick.date;
  dm.query.parambyname('okved').value:=okved.text;
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
