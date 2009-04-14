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
  tsumaryreport = class(TForm)
    panel: TPanel;
    grid: TStringGrid;
    startbox: TGroupBox;
    endbox: TGroupBox;
    startpick: TDateTimePicker;
    endpick: TDateTimePicker;
    detailbtn: TButton;
    status: TStatusBar;
    reportbtn: TButton;
    btnbox: TGroupBox;
    GroupBox1: TGroupBox;
    search: TEdit;
    closebox: TGroupBox;
    closebtn: TButton;
    procedure formshow(sender:tobject);
    procedure detailbtnClick(Sender: TObject);
    procedure startpickChange(Sender: TObject);
    procedure endpickChange(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure reportbtnClick(Sender: TObject);
    procedure searchChange(Sender: TObject);
    procedure closebtnClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
  private
  public
    selected:integer;
    procedure fill;
  end;

implementation

uses
  datamodel,
  datamodule,
  reportokved,
  util;

{$R *.dfm}

procedure showreport;
var
  report:tsumaryreport;
begin
  report:=tsumaryreport.create(application.owner);
  report.showmodal;
end;

procedure tsumaryreport.fill;
var
  i:integer;
  price:real;
begin
  price:=0;
  grid.create(owner);
  grid.defaultrowheight:=16;
  grid.fixedcols:=0;
  dm.query.sql.text:='SELECT subcontract.nomencl,subcontract.report,nomencldog.name,sum(subcontract.price) as price'+#13+
                     'FROM subcontract'+#13+
                     'INNER JOIN nomencldog ON '+subcontract.okved+'='+okved.id+#13+
                     'WHERE ('+subcontract.okved+'<>'+quotedstr('')+')'+#13+
                     'AND ('+subcontract.date+'>='+dateornull(startpick.date)+')'+#13+
                     'AND ('+subcontract.date+'<'+dateornull(endpick.date)+')'+#13+
                     'GROUP BY '+commstr([subcontract.okved,subcontract.skip,okved.name])+#13+
                     'ORDER BY '+commstr([subcontract.okved]);
  dm.query.open;
  grid.colcount:=4;
  grid.rowcount:=max(dm.query.recordcount+1,1);
  grid.colwidths[0]:=8*8;
  grid.colwidths[2]:=8*8;
  grid.colwidths[3]:=8*9;
  grid.colwidths[1]:=grid.width-(grid.colwidths[0]+grid.colwidths[2]+grid.colwidths[3]+24);
  status.panels.items[1].text:=inttostr(dm.query.recordcount);
  if dm.query.recordcount>0 then
    begin
      grid.fixedrows:=1;
      for i:=0 to dm.query.recordcount-1 do
        begin
          grid.cells[0,i+1]:=trim(dm.query.fieldbyname('nomencl').value);
          grid.cells[1,i+1]:=trim(dm.query.fieldbyname('name').value);
          if dm.query.fieldbyname('price').value>100000 then
            if not dm.query.fieldbyname('report').asboolean then
              grid.cells[3,i+1]:=floattostr(dm.query.fieldbyname('price').value-10000)
            else
              grid.cells[3,i+1]:='Нет'
          else
            grid.cells[3,i+1]:='Нет';
          grid.cells[2,i+1]:=dm.query.fieldbyname('price').value;
          price:=price+dm.query.fieldbyname('price').value;
          dm.query.next;
        end;
      status.panels.items[3].text:=floattostr(price);
    end;
  grid.rows[0].strings[0]:='ОКВЭД';
  grid.rows[0].strings[1]:='Наименование';
  grid.rows[0].strings[2]:='Сумма';
  grid.rows[0].strings[3]:='Превышение';
end;

procedure tsumaryreport.formshow(sender:tobject);
var
  month:word;
  temp:word;
begin
  decodedate(now,temp,month,temp);
  endpick.date:=encodedate(currentyear,month,1);
  startpick.datetime:=incmonth(endpick.date,-3);
  fill;
end;

procedure tsumaryreport.detailbtnClick(Sender: TObject);
begin
  if startpick.datetime>endpick.datetime then
    showmessage('Установите правильные даты!!!')
  else
    reportokved.showreport(startpick.datetime,endpick.datetime,grid.cells[0,selected]);
end;

procedure tsumaryreport.gridDblClick(Sender: TObject);
begin
  if startpick.datetime>endpick.datetime then
    showmessage('Установите правильные даты!!!')
  else
    reportokved.showreport(startpick.datetime,endpick.datetime,grid.cells[0,selected]);
end;

procedure tsumaryreport.searchChange(Sender: TObject);
var
  i:integer;
begin
  for i:=1 to grid.rowcount-1 do
      if copy(grid.cells[0,i],0,length(search.text))=search.text then
        begin
          grid.row:=i;
          exit;
        end;
end;

procedure tsumaryreport.startpickChange(Sender: TObject);
begin
  if startpick.datetime>endpick.datetime then
    startpick.color:=clred
  else
    startpick.color:=clwindow;
  fill;
end;

procedure tsumaryreport.endpickChange(Sender: TObject);
begin
  if endpick.datetime<startpick.datetime then
    endpick.color:=clred
  else
    endpick.color:=clwindow;
  fill;
end;

procedure tsumaryreport.gridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if arow>0 then
    selected:=arow;
end;

procedure tsumaryreport.reportbtnClick(Sender: TObject);
begin
  dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_summary.fr3');
  dm.report.variables.variables['start']:=startpick.datetime;
  dm.report.variables.variables['finish']:=endpick.datetime;
  dm.report.showreport;
end;

procedure tsumaryreport.closebtnClick(Sender: TObject);
begin
  close;
end;

end.

