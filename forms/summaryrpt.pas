unit summaryrpt;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Grids,
  ExtCtrls,
  StdCtrls,
  ComCtrls;

procedure showreport;

type
  treport = class(TForm)
    panel: TPanel;
    grid: TStringGrid;
    startbox: TGroupBox;
    endbox: TGroupBox;
    startpick: TDateTimePicker;
    endpick: TDateTimePicker;
    report: TButton;
    StatusBar1: TStatusBar;
    Button1: TButton;
    procedure formshow(sender:tobject);
    procedure reportClick(Sender: TObject);
    procedure startpickChange(Sender: TObject);
    procedure endpickChange(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button1Click(Sender: TObject);
  private
  public
    selected:integer;
    procedure fill;
  end;

implementation

uses
  datamodule,
  reportokved,
  util;

{$R *.dfm}

procedure showreport;
var
  report:treport;
begin
  report:=treport.create(application.owner);
  report.showmodal;
end;

procedure treport.fill;
var
  i:integer;
begin
  grid.create(owner);
  grid.defaultrowheight:=16;
  grid.fixedcols:=0;
  dmod.query.sql.text:='SELECT subcontract.nomencl,subcontract.report,nomencldog.name,sum(subcontract.price) as price'+#13+
                       'FROM subcontract'+#13+
                       'INNER JOIN nomencldog ON (subcontract.nomencl=nomencldog.id_nomencl)'+#13+
                       'WHERE (subcontract.nomencl<>'+quotedstr('')+')'+#13+
                       'AND (subcontract.subdate>='+dateornull(startpick.date)+')'+#13+
                       'AND (subcontract.subdate<'+dateornull(endpick.date)+')'+#13+
//                       'AND (subcontract.report<>1)'+#13+
                       'GROUP BY subcontract.nomencl,subcontract.report,nomencldog.name'+#13+
                       'ORDER BY subcontract.nomencl';
  dmod.query.open;
  grid.colcount:=4;
  grid.rowcount:=max(dmod.query.recordcount+1,1);
  grid.colwidths[0]:=8*8;
  grid.colwidths[2]:=8*8;
  grid.colwidths[3]:=8*9;
  grid.colwidths[1]:=grid.width-(grid.colwidths[0]+grid.colwidths[2]+grid.colwidths[3]+24);
  if dmod.query.recordcount>0 then
    begin
      grid.fixedrows:=1;
      for i:=0 to dmod.query.recordcount-1 do
        begin
          grid.cells[0,i+1]:=cropspace(dmod.query.fieldbyname('nomencl').value);
          grid.cells[1,i+1]:=cropspace(dmod.query.fieldbyname('name').value);
          if dmod.query.fieldbyname('price').value>100000 then
            if not dmod.query.fieldbyname('report').asboolean then
              grid.cells[3,i+1]:=floattostr(dmod.query.fieldbyname('price').value-10000)
            else
              grid.cells[3,i+1]:='���'
          else
            grid.cells[3,i+1]:='���';
          grid.cells[2,i+1]:=dmod.query.fieldbyname('price').value;
          dmod.query.next;
        end;
    end;
  grid.rows[0].strings[0]:='�����';
  grid.rows[0].strings[1]:='������������';
  grid.rows[0].strings[2]:='�����';
  grid.rows[0].strings[3]:='����������';
end;

procedure treport.formshow(sender:tobject);
var
  month:word;
  temp:word;
begin
  decodedate(now,temp,month,temp);
  endpick.date:=encodedate(currentyear,month,1);
  startpick.datetime:=incmonth(endpick.date,-3);
  fill;
end;

procedure treport.reportClick(Sender: TObject);
begin
  if startpick.datetime>endpick.datetime then
    showmessage('���������� ���������� ����!!!')
  else
    reportokved.showreport(startpick.datetime,endpick.datetime,grid.cells[0,selected]);
end;

procedure treport.startpickChange(Sender: TObject);
begin
  if startpick.datetime>endpick.datetime then
    startpick.color:=clred
  else
    startpick.color:=clwindow;
  fill;
end;

procedure treport.endpickChange(Sender: TObject);
begin
  if endpick.datetime<startpick.datetime then
    endpick.color:=clred
  else
    endpick.color:=clwindow;
  fill;
end;

procedure treport.gridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if arow>0 then
    selected:=arow;
end;

procedure treport.Button1Click(Sender: TObject);
begin
  dmod.report.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_summary.frf');
  dmod.report.dictionary.variables.variable['start']:=startpick.datetime;
  dmod.report.dictionary.variables.variable['finish']:=endpick.datetime;
  dmod.report.showreport;
end;

end.
