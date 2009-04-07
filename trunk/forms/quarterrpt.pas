unit quarterrpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ComCtrls;

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
  private
    { Private declarations }
  public
    procedure fill;
  end;

implementation

uses
  datamodule,
  model,
  regions,
  util;

{$R *.dfm}

procedure showreport;
var
  reportquarter:treportquarter;
  i:integer;
begin
  reportquarter:=treportquarter.create(application.owner);
  regions.fetch;
//  pbs.items.clear;
  reportquarter.pbs.items.add('*');
  for i:=0 to length(regions.cregion)-1 do
      reportquarter.pbs.items.add(regions.cregion[i].name);
  reportquarter.fill;
  reportquarter.showmodal;
end;

procedure treportquarter.fill;
var
  i:integer;
begin
  dm.query.sql.text:='SELECT '+commstr([model.contract.id,model.contract.reg,model.contract.cnt])+',SUM(subcontract.price) AS BALANCE'+#13+
                     'FROM ReestrDog'+#13+
                     'INNER JOIN subcontract ON '+model.cnt_id+'='+model.sub_id+#13+
                     'WHERE year('+model.sub_date+')='+year.text+#13+
                     'AND datepart(q,'+model.cnt_datecnt+')='+quarter.text+#13+
                     'GROUP BY '+commstr([model.contract.id,model.contract.reg,model.contract.cnt]);
  dm.query.open;
  status.panels[1].text:=inttostr(dm.query.recordcount);
  grid.rowcount:=dm.query.recordcount;
  for i:=0 to dm.query.recordcount-1 do
    begin
      grid.cells[0,i+1]:=dm.query.fieldbyname(ovp(model.contract.id)).asstring;
      grid.cells[1,i+1]:=dm.query.fieldbyname(ovp(model.contract.reg)).asstring;
      grid.cells[2,i+1]:=dm.query.fieldbyname(ovp(model.contract.cnt)).asstring;
      dm.query.next;
    end;
end;

procedure treportquarter.pbsChange(Sender: TObject);
begin
  fill;
end;

procedure treportquarter.printClick(Sender: TObject);
begin
  grid.RowCount:=-1;
end;

procedure treportquarter.yearChange(Sender: TObject);
begin
  fill;
end;

procedure treportquarter.quarterChange(Sender: TObject);
begin
  fill;
end;

procedure treportquarter.registeredClick(Sender: TObject);
begin
  fill;
end;

end.
