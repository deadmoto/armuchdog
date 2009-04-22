unit ReportOKVED;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, ComCtrls, Buttons,DB;

procedure showreport;overload;
procedure showreport(startd,endd:tdatetime;nomencl:string);overload;
type
  treport_okved = class(TForm)
    nomenclbox: TGroupBox;
    regionbox: TGroupBox;
    nomencl: TComboBox;
    regioncbx: TComboBox;
    panel: TPanel;
    status: TStatusBar;
    startpick: TDateTimePicker;
    startbox: TGroupBox;
    endbox: TGroupBox;
    endpick: TDateTimePicker;
    grid: TStringGrid;
    GroupBox1: TGroupBox;
    yearcbx: TComboBox;
    GroupBox2: TGroupBox;
    quarterud: TUpDown;
    quartered: TEdit;
    btnpanel: TPanel;
    exit: TButton;
    print: TButton;
    procedure FormShow(Sender: TObject);
    procedure nomenclKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure regioncbxChange(Sender: TObject);
    procedure nomenclChange(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure quarterudChangingEx(Sender: TObject; var AllowChange: Boolean;
      NewValue: SmallInt; Direction: TUpDownDirection);
    procedure exitClick(Sender: TObject);
    procedure yearcbxChange(Sender: TObject);
    procedure quarteredChange(Sender: TObject);
  private
    selected:integer;
    procedure getregions;
    procedure fill;
  public
  end;

implementation

uses
  datamodel,
  datamodule,
  contractfm,
  regions,
  providers,
  util;

{$R *.dfm}

procedure treport_okved.getregions;
var
  i:integer;
begin
  regioncbx.items.clear;
  regioncbx.items.add('*');
  dm.query.sql.text:='SELECT * FROM RegionID';
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      regioncbx.items.add(trim(dm.query.fieldbyname('fldname').asstring));
      dm.query.next;
    end;
  dm.query.close;
end;

procedure treport_okved.fill;
var
  i:integer;
  price:real;
begin
  with grid do
    begin
      cells[0,0]:=subcontract.okved.caption;
      cells[1,0]:=sizer.name.caption;
      cells[2,0]:=region.name.caption;
      cells[3,0]:=subcontract.price.caption;
      colwidths[0]:=subcontract.okved.width;
      colwidths[2]:=region.name.width;
      colwidths[3]:=subcontract.price.width;
      colwidths[1]:=width-(colwidths[0]+colwidths[2]+colwidths[3]+24);
    end;
  dm.query.sql.text:='SELECT '+commstr([subcontract.okved.name,sizer.name.name,
                                        region.name.name,sum(subcontract.price)])+#13+
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
                     'GROUP BY '+commstr([region.name.name,sizer.name.name,
                                          subcontract.okved.name])+#13+
                     'ORDER BY '+commstr([region.name.name,subcontract.okved.name]);
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
            grid.cells[2,i+1]:=fieldbyname(region.name.column).value;
            grid.cells[3,i+1]:=fieldbyname(subcontract.price.column).value;
            price:=price+fieldbyname(subcontract.price.column).value;
            dm.query.next;
          end;
    end
  else
    grid.rowheights[1]:=-1;
  status.panels.items[3].text:=floattostr(price);
end;

procedure treport_okved.formcreate;
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
      nomencl.items.add(trim(dm.query.fieldbyname(subcontract.okved.column).asstring));
      dm.query.next;
    end;
  nomencl.items.strings[0]:='*';
  yearcbx.text:=formatdatetime('yyyy',now);
  quarterud.position:=quarter(now);

end;

procedure treport_okved.FormShow(Sender: TObject);
var
  month:word;
  temp:word;
begin
  decodedate(now,temp,month,temp);
  endpick.date:=encodedate(currentyear,month,1);
  startpick.datetime:=incmonth(endpick.date,-3);
  getregions;
  nomencl.itemindex:=0;
  regioncbx.itemindex:=0;
  fill;
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
  report.getregions;
  report.nomencl.itemindex:=0;
  report.regioncbx.itemindex:=0;

  report.startpick.OnChange:=report.regioncbx.OnChange;

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
  report.getregions;
  for i:=0 to report.nomencl.items.count-1 do
    if report.nomencl.items.strings[i]=nomencl then
      report.nomencl.itemindex:=i;
//  report.search.click;
end;

procedure treport_okved.nomenclKeyPress(Sender: TObject; var Key: Char);
begin
  key:=chr(vk_cancel);
end;

procedure treport_okved.Button1Click(Sender: TObject);
begin
  if nomencl.itemindex=0 then
    dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_by_pbs.fr3')
  else
    dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\okved_by_okved.fr3');
  dm.report.variables.variables['start']:=startpick.datetime;
  dm.report.variables.variables['finish']:=endpick.datetime;
  dm.report.showreport;
end;

procedure treport_okved.gridDblClick;
begin
//  if dm.query.recordcount>0 then
//    contractform.edit(strtoint(grid.cells[0,selected]));
end;

procedure treport_okved.gridselectcell;
begin
  if arow>0 then
    selected:=arow;
end;

procedure treport_okved.quarterudchangingex;
begin
  if newvalue in [1..4] then
    quartered.text:=inttostr(newvalue);
end;

procedure treport_okved.yearcbxchange;
begin
  fill;
end;

procedure treport_okved.quarteredchange;
begin
  fill;
end;

procedure treport_okved.regioncbxChange;
begin
  fill;
end;

procedure treport_okved.nomenclChange;
begin
  fill;
end;

procedure treport_okved.exitclick;
begin
  close;
end;

end.

