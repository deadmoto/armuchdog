unit okvedfm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Menus, ComCtrls;

procedure showeditor;

type
  tokved = class(TForm)
    grid: TStringGrid;
    popup: TPopupMenu;
    add: TMenuItem;
    N2: TMenuItem;
    upd: TMenuItem;
    N4: TMenuItem;
    del: TMenuItem;
    status: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure addClick(Sender: TObject);
    procedure updClick(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure delClick(Sender: TObject);
  private
  public
    selected:integer;
    procedure fill;
  end;

implementation

uses
  datamodule,
  okvededit,
  nomencls,
  util;

{$R *.dfm}

procedure showeditor;
var
  main:tokved;
begin
  main:=tokved.create(application.owner);
  main.showmodal;
  main.destroy;
end;

procedure tokved.fill;
var
  i:integer;
begin
  nomencls.fetch;
  grid.rowcount:=length(cnomencl)+1;
  grid.fixedrows:=1;
  grid.cells[0,0]:='�����';
  grid.cells[1,0]:='������������';
  for i:=0 to length(cnomencl)-1 do
    begin
      grid.cells[0,i+1]:=cnomencl[i].id;
      grid.cells[1,i+1]:=cnomencl[i].name;
    end;
  grid.colwidths[0]:=8*8;
  grid.colwidths[1]:=grid.width-grid.colwidths[0]-24;
  grid.row:=min(max(selected,1),grid.rowcount);
end;

procedure tokved.formshow(Sender: TObject);
begin
  fill;
end;

procedure tokved.addclick(Sender: TObject);
begin
  okvededit.insert;
  fill;
end;

procedure tokved.updClick(Sender: TObject);
begin
  okvededit.update(cnomencl[selected-1]);
  fill;
end;

procedure tokved.delClick(Sender: TObject);
begin
  if messagebox(handle,pchar('������� ����� '+cnomencl[selected-1].id+'?'),'��������!',mb_yesno)=id_yes then
    begin
      nomencls.delete(cnomencl[selected-1]);
      fill;
    end;
end;

procedure tokved.gridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if (arow>0) and (arow<grid.rowcount) then
    begin
      selected:=arow;
      status.panels.items[1].text:=grid.cells[0,arow];
      status.panels.items[3].text:=grid.cells[1,arow];
    end;
end;

end.