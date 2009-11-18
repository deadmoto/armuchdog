unit cosgufm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Menus, ComCtrls;

procedure showeditor;

type
  tcosgu = class(TForm)
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
    { Private declarations }
  public
    selected:^integer;
    procedure fill;
  end;

var
  cosgu: tcosgu;

implementation

uses
  datamodule,
  cosguedit,
  cosgus;

{$R *.dfm}

procedure showeditor;
var
  main:tcosgu;
begin
  main:=tcosgu.create(application.owner);
  main.showmodal;
  main.destroy;
end;

procedure tcosgu.gridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if (arow>0) and (arow<grid.rowcount) then
    begin
      selected:=@arow;
      status.panels.items[1].text:=grid.cells[0,arow];
      status.panels.items[3].text:=grid.cells[1,arow];
    end;
end;

procedure tcosgu.fill;
var
  i:integer;
begin
  cosgus.fetch;
  for i:=0 to length(ccosgu)-1 do
    begin
      grid.rowcount:=i+1;
      grid.rows[i+1].strings[0]:=ccosgu[i].id;
      grid.rows[i+1].strings[1]:=ccosgu[i].name;
    end;
  grid.fixedrows:=1;
  grid.rows[0].strings[0]:='КОСГУ';
  grid.rows[0].strings[1]:='Наименование';
  grid.colwidths[0]:=8*8;
  grid.colwidths[1]:=grid.width-grid.colwidths[0]-24;
end;

procedure tcosgu.formshow(Sender: TObject);
begin
  fill;
end;

procedure tcosgu.addclick(Sender: TObject);
begin
  if cosguedit.insert(owner) then
    fill;
end;

procedure tcosgu.updClick(Sender: TObject);
begin
  if cosguedit.update(owner,ccosgu[selected^-1]) then
    fill;
end;

procedure tcosgu.delClick(Sender: TObject);
begin
  if messagebox(handle,'Удалить?','',mb_yesno)=id_yes then
    begin
      cosgus.delete(ccosgu[selected^-1]);
      fill;
    end;
end;

end.
