unit quarterrpt;

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
  StdCtrls,
  ExtCtrls,
  Grids,
  ComCtrls;

procedure showreport;

type
  treportquarter = class(TForm)
    panel: TPanel;
    year: TComboBox;
    quarter: TComboBox;
    registered: TCheckBox;
    pbsbox: TGroupBox;
    print: TButton;
    yearbox: TGroupBox;
    quarterbox: TGroupBox;
    pbs: TComboBox;
    grid: TStringGrid;
    status: TStatusBar;
    procedure quarterChange(Sender: TObject);
    procedure yearChange(Sender: TObject);
    procedure pbsChange(Sender: TObject);
    procedure registeredClick(Sender: TObject);
    procedure printClick(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    selected:integer;
    function getfreewidth(index:integer):integer;
    procedure fill;
  end;

implementation

uses
  datamodel,
  datamodule,
  providers,
  regions,
  contractfm,
  util;

{$R *.dfm}

procedure treportquarter.gridselectcell;
begin
  selected:=arow;
end;

function treportquarter.getfreewidth;
var
  i:integer;
begin
  result:=grid.width-28;
  for i:=0 to grid.colcount-1 do
    if i<>index then
      result:=result-grid.colwidths[i];
end;

procedure showreport;
var
  reportquarter:treportquarter;
  i:integer;
begin
  reportquarter:=treportquarter.create(application.owner);
  regions.fetch;
  for i:=0 to length(regions.cregion)-1 do
      reportquarter.pbs.items.add(regions.cregion[i].name);
  reportquarter.fill;
  reportquarter.showmodal;
end;

procedure treportquarter.fill;
var
  i:integer;
  price:real;
begin
  price:=0;
  with grid do
    begin
      cells[0,0]:=contract.id.caption;
      cells[1,0]:=contract.cnt.caption;
      cells[2,0]:=contract.datecnt.caption;
      cells[3,0]:=contract.reg.caption;
      cells[4,0]:=contract.datereg.caption;
      cells[5,0]:=region.name.caption;
      cells[6,0]:=provider.name.caption;
      cells[7,0]:=subcontract.price.caption;
      colwidths[0]:=contract.id.width;
      colwidths[1]:=contract.cnt.width;
      colwidths[2]:=contract.datecnt.width;
      colwidths[3]:=contract.reg.width;
      colwidths[4]:=contract.datereg.width;
      colwidths[5]:=region.name.width;
      colwidths[7]:=subcontract.price.width;
      colwidths[6]:=getfreewidth(6);
    end;
  dm.query.sql.text:='SELECT '+commstr([contract.id.name,contract.cnt.name,
                                        contract.reg.name,contract.datecnt.name,
                                        contract.datereg.name,region.name.name,
                                        provider.name.name])+
                                        ',SUM('+subcontract.price.name+') AS '+
                                        subcontract.price.column+#13+
                     'FROM '+contract.table+#13+
                     'INNER JOIN '+subcontract.table+' ON '+contract.id.name+'='+subcontract.id.name+#13+
                     'INNER JOIN '+region.table+' ON '+contract.region.name+'='+region.id.name+#13+
                     'INNER JOIN '+provider.table+' ON '+contract.provider.name+'='+provider.id.name+#13+
                     'WHERE year('+subcontract.date.name+')='+year.text+#13+
                     'AND datepart(q,'+subcontract.date.name+')='+quarter.text+#13;
  if pbs.itemindex>0 then
    dm.query.sql.text:=dm.query.sql.text+
                      'AND '+contract.region.name+'='+inttostr(regions.cregion[pbs.itemindex-1].id)+#13;
  if registered.checked then
    dm.query.sql.text:=dm.query.sql.text+
                      'AND '+contract.datereg.name+' IS NOT NULL'+#13+
                      'AND '+contract.reg.name+' IS NOT NULL'+#13
  else
    dm.query.sql.text:=dm.query.sql.text+
                      'AND ('+contract.datereg.name+' IS NULL'+#13+
                      'OR '+contract.reg.name+' IS NULL)'+#13;
  dm.query.sql.text:=dm.query.sql.text+
                      'GROUP BY '+commstr([contract.id.name,contract.cnt.name,
                                           contract.reg.name,contract.datecnt.name,
                                           contract.datereg.name,region.name.name,
                                           provider.name.name]);
  dm.query.open;
  grid.rowcount:=dm.query.recordcount+1;
  status.panels[1].text:=inttostr(dm.query.recordcount);
  for i:=0 to dm.query.recordcount-1 do
    begin
      grid.cells[0,i+1]:=dm.query.fieldbyname(contract.id.column).asstring;
      grid.cells[1,i+1]:=dm.query.fieldbyname(contract.cnt.column).asstring;
      grid.cells[2,i+1]:=dm.query.fieldbyname(contract.datecnt.column).asstring;
      if (dm.query.fieldbyname(contract.reg.column).value<>0) then
        grid.cells[3,i+1]:=dm.query.fieldbyname(contract.reg.column).asstring
      else
        grid.cells[3,i+1]:='Нет';
      if (dm.query.fieldbyname(contract.datereg.column).value<>null) then
        grid.cells[4,i+1]:=dm.query.fieldbyname(contract.datereg.column).asstring
      else
        grid.cells[4,i+1]:='Нет';
      grid.cells[5,i+1]:=dm.query.fieldbyname(region.name.column).asstring;
      grid.cells[6,i+1]:=dm.query.fieldbyname(provider.name.column).asstring;
      grid.cells[7,i+1]:=dm.query.fieldbyname(subcontract.price.column).asstring;
      price:=price+dm.query.fieldbyname(subcontract.price.column).value;
      dm.query.next;
    end;
  status.panels.items[3].text:=floattostr(price);
end;

procedure treportquarter.griddblclick;
begin
  contractform.edit(strtoint(grid.cells[0,selected]));
end;

procedure treportquarter.pbschange;
begin
  fill;
end;

procedure treportquarter.yearchange;
begin
  fill;
end;

procedure treportquarter.quarterchange;
begin
  fill;
end;

procedure treportquarter.registeredclick;
begin
  fill;
end;

procedure treportquarter.printclick;
begin
  dm.report.loadfromfile(extractfilepath(paramstr(0))+'reports\quarter.fr3');
  dm.report.variables.variables['quarter']:=quarter.text;
  dm.report.variables.variables['year']:=year.text;
  dm.report.variables.variables['id']:='[frquery."'+contract.id.column+'"]';
  dm.report.variables.variables['cnt']:=contract.cnt.column;
  dm.report.variables.variables['price']:=subcontract.price.column;
  dm.report.showreport;
end;

end.
