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
  sizers,
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
  sizers.fetch;
  grid.rowcount:=length(asizer)+1;
  grid.fixedrows:=1;
  grid.cells[0,0]:='ÐžÐšÐ’Ð­Ð”';
  grid.cells[1,0]:='ÐÐ°Ð¸Ð¼ÐµÐ½Ð¾Ð²Ð°Ð½Ð¸Ðµ';
  for i:=0 to length(asizer)-1 do
    begin
      grid.cells[0,i+1]:=asizer[i].id;
      grid.cells[1,i+1]:=asizer[i].name;
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
  okvededit.update(asizer[selected-1]);
  fill;
end;

procedure tokved.delClick(Sender: TObject);
begin
  if messagebox(handle,pchar('Óäàëèòü ÎÊÂÝÄ '+asizer[selected-1].id+'?'),'Âíèìàíèå!',mb_yesno)=id_yes then
    begin
      sizers.delete(asizer[selected-1]);
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
