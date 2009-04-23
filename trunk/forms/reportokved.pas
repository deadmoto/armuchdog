unit reportokved;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,DB;

procedure showreport;overload;
procedure showreport(startd,endd:tdatetime;nomencl:string);overload;
type
  tsizerrpt = class(TForm)
    nomenclbox: TGroupBox;
    regionbox: TGroupBox;
    nomencl: TComboBox;
    regioncbx: TComboBox;
    panel: TPanel;
    status: TStatusBar;
    grid: TStringGrid;
    GroupBox1: TGroupBox;
    yearcbx: TComboBox;
    GroupBox2: TGroupBox;
    quarterud: TUpDown;
    quartered: TEdit;
    btnpanel: TPanel;
    exit: TButton;
    print: TButton;
    left: TButton;
    procedure nomenclKeyPress(Sender: TObject; var Key: Char);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure regioncbxChange(Sender: TObject);
    procedure nomenclChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quarterudChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: SmallInt; Direction: TUpDownDirection);
    procedure exitClick(Sender: TObject);
    procedure yearcbxChange(Sender: TObject);
    procedure quarteredChange(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure leftClick(Sender: TObject);
  private
    selected:integer;
    procedure fill;
  public
  end;

implementation

uses
  datamodel,
  datamodule,
  defs,
  balance,
  regions,
  providers,
  util;

{$R *.dfm}

procedure tsizerrpt.fill;
var
  i:integer;
  price:real;
begin
  price:=0;
  with grid do
    begin
      cells[0,0]:=subcontract.okved.caption;
      cells[1,0]:=sizer.name.caption;
      cells[2,0]:=subcontract.price.caption;
      cells[3,0]:='Остаток';
      colwidths[0]:=subcontract.okved.width;
      colwidths[2]:=subcontract.price.width;
      colwidths[3]:=subcontract.price.width;
      colwidths[1]:=width-(colwidths[0]+colwidths[2]+colwidths[3]+32);
    end;
  dm.query.sql.text:='SELECT '+commstr([subcontract.okved.name,sizer.name.name,
                                        sum(subcontract.price),
                                        lim(subcontract.price)])+#13+
                     'FROM '+subcontract.table+#13+
                     'INNER JOIN '+contract.table+
                     ' ON '+subcontract.id.name+'='+contract.id.name+#13+
                     'INNER JOIN '+sizer.table+
                     ' ON '+subcontract.okved.name+'='+sizer.id.name+#13+
                     'INNER JOIN '+region.table+
                     ' ON '+contract.region.name+'='+region.id.name+#13+
                     'WHERE ('+subcontract.okved.name+' LIKE '+
                     quotedstr('%'+starorstr(nomencl.text)+'%')+')'+#13;
  if regioncbx.itemindex>0 then
    dm.query.sql.text:=dm.query.sql.text+'AND ('+contract.region.name+'='+
                       inttostr(regions.cregion[regioncbx.itemindex-1].id)+')'+#13;
  dm.query.sql.text:=dm.query.sql.text+
                     'AND YEAR('+subcontract.date.name+')='+yearcbx.text+#13+
                     'AND DATEPART(quarter,'+subcontract.date.name+')='+quartered.text+#13+
                     'AND ('+subcontract.okved.name+'<>'+quotedstr('')+
                     'AND ('+subcontract.skip.name+'<>1)'+')'+#13+
                     'GROUP BY '+commstr([subcontract.okved.name,sizer.name.name])+#13+
                     'ORDER BY '+commstr([subcontract.okved.name,sizer.name.name]);
  dm.query.open;
  grid.rowcount:=max(dm.query.recordcount+1,2);
  status.panels.items[1].text:=inttostr(dm.query.recordcount);
  if dm.query.recordcount>0 then
    begin
      grid.rowheights[1]:=grid.defaultrowheight;
      dm.query.first;
      with dm.query do
        for i:=0 to recordcount-1 do
          begin
            grid.cells[0,i+1]:=fieldbyname(subcontract.okved.column).value;
            grid.cells[1,i+1]:=fieldbyname(sizer.name.column).value;
            grid.cells[2,i+1]:=fieldbyname(subcontract.price.column).value;
            grid.cells[3,i+1]:=fieldbyname('limit').value;
            price:=price+fieldbyname(subcontract.price.column).value;
            dm.query.next;
          end;
    end
  else
    grid.rowheights[1]:=-1;
  status.panels.items[3].text:=floattostr(price);
end;

procedure tsizerrpt.formcreate;
var
  i:integer;
begin
  dm.query.sql.text:='SELECT YEAR('+subcontract.date.name+') '+
                     'AS '+subcontract.date.column+#13+
                     'FROM '+subcontract.table+#13+
                     'WHERE ('+subcontract.date.name+' IS NOT NULL)'+#13+
                     'GROUP BY YEAR('+subcontract.date.name+')'+#13+
                     'ORDER BY YEAR('+subcontract.date.name+')';
  dm.query.open;
  for i:=0 to dm.query.recordcount-1 do
    begin
      yearcbx.items.add(dm.query.fieldbyname(subcontract.date.column).value);
      dm.query.next;
    end;
  nomencl.items.clear;
  dm.query.sql.text:='SELECT '+subcontract.okved.name+#13+
                     'FROM '+subcontract.table+#13+
                     'WHERE '+subcontract.okved.name+' IS NOT NULL'+#13+
                     'GROUP BY '+subcontract.okved.name;
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      nomencl.items.add(trim(dm.query.fieldbyname(subcontract.okved.column).value));
      dm.query.next;
    end;
  regioncbx.items.add('*');
  for i:=0 to length(cregion)-1 do
    regioncbx.items.add(cregion[i].name);
  nomencl.items.strings[0]:='*';
  yearcbx.text:=formatdatetime('yyyy',now);
  quarterud.position:=quarter(now);
  fill;
end;

procedure showreport;
var
  report:tsizerrpt;
begin
  report:=tsizerrpt.create(application.owner);
  report.showmodal;
end;

procedure showreport(startd,endd:tdatetime;nomencl:string);
var
  i:integer;
  report:tsizerrpt;
begin
  report:=tsizerrpt.create(application.owner);
  report.show;
  for i:=0 to report.nomencl.items.count-1 do
    if report.nomencl.items.strings[i]=nomencl then
      report.nomencl.itemindex:=i;
end;

procedure tsizerrpt.printclick;
begin
  if nomencl.itemindex=0 then
    dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_by_pbs.fr3')
  else
    dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_by_okved.fr3');
  dm.report.variables.variables['year']:=yearcbx.text;
  dm.report.variables.variables['quarter']:=quartered.text;
  dm.report.showreport;
end;

procedure tsizerrpt.gridselectcell;
begin
  if arow>0 then
    selected:=arow;
end;

procedure tsizerrpt.leftclick;
var
  i:integer;
begin
  for i:=1 to grid.rowcount-1 do
    begin
      grid.cells[4,i]:=floattostr(contractlimit-getbalance(0,grid.cells[0,i],
                       strtoint(yearcbx.text),strtoint(quartered.text)));
      refresh;
    end;
end;

procedure tsizerrpt.quarterudchangingex;
begin
  if newvalue in [1..4] then
    quartered.text:=inttostr(newvalue);
end;

procedure tsizerrpt.nomenclKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure tsizerrpt.yearcbxchange;
begin
  fill;
end;

procedure tsizerrpt.quarteredchange;
begin
  fill;
end;

procedure tsizerrpt.regioncbxChange;
begin
  fill;
end;

procedure tsizerrpt.nomenclChange;
begin
  fill;
end;

procedure tsizerrpt.exitclick;
begin
  close;
end;

end.

