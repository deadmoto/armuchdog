unit providerdlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

function select:integer;

type
  tproviderselect = class(TForm)
    ok: TButton;
    cancel: TButton;
    btnbox: TGroupBox;
    grid: TStringGrid;
    filterbox: TGroupBox;
    filter: TEdit;
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure filterChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    selected:integer;
    procedure fill;
  end;

implementation

uses
  providers;

{$R *.dfm}

procedure tproviderselect.fill;
var
  i:integer;
begin
  grid.colwidths[0]:=8*5;
  grid.colwidths[1]:=grid.width-(grid.colwidths[0]+24);
  grid.rows[0].strings[0]:='Номер';
  grid.rows[0].strings[1]:='Наименование';
  for i:=0 to length(cprovider)-1 do
    begin
      self.grid.rowcount:=i+2;
      self.grid.rows[i+1].strings[0]:=inttostr(cprovider[i].id);
      self.grid.rows[i+1].strings[1]:=cprovider[i].name;
    end;
  self.grid.fixedrows:=1;
end;

function select:integer;
var
  provider:tproviderselect;
begin
  result:=-1;
  fetch;
  provider:=tproviderselect.create(application);
  provider.fill;
  if provider.showmodal=mrok then
    result:=cprovider[provider.selected-1].id;
  provider.free;
end;

procedure tproviderselect.gridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  selected:=arow;
end;

procedure tproviderselect.filterChange(Sender: TObject);
begin
  if filter.text<>'' then
    begin
      fetch('supplier',filter.text);
      fill;
    end;
end;

procedure tproviderselect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fetch;
end;

end.
