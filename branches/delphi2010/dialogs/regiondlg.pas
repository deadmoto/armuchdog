unit regiondlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

function select:integer;

type
  tregionselect = class(TForm)
    ok: TButton;
    cancel: TButton;
    btnbox: TGroupBox;
    grid: TStringGrid;
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    selected:integer;
    procedure fill;
  end;

implementation

uses
  regions;

{$R *.dfm}

procedure tregionselect.gridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  selected:=arow;
end;

procedure tregionselect.fill;
var
  i:integer;
begin
  grid.colwidths[0]:=8*5;
  grid.colwidths[1]:=grid.width-(grid.colwidths[0]+24);
  grid.rows[0].strings[0]:='Номер';
  grid.rows[0].strings[1]:='Наименование';
  for i:=0 to length(cregion)-1 do
    begin
      self.grid.rowcount:=i+2;
      self.grid.rows[i+1].strings[0]:=inttostr(cregion[i].id);
      self.grid.rows[i+1].strings[1]:=cregion[i].name;
    end;
  self.grid.fixedrows:=1;
end;

function select:integer;
var
  region:tregionselect;
begin
  result:=-1;
  fetch;
  region:=tregionselect.create(application);
  region.fill;
  if region.showmodal=mrok then
    result:=cregion[region.selected-1].id;
  region.free;
end;

end.
