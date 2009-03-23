unit cosgudlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  tcosguselect = class(TForm)
    btnbox: TGroupBox;
    cosgugrid: TStringGrid;
    ok: TButton;
    cancel: TButton;
    procedure cosgugridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public
    selected:integer;
    procedure fill;
    function select:string;
  end;

var
  cosguselect: tcosguselect;

implementation

uses
  cosgus;

{$R *.dfm}

procedure tcosguselect.cosgugridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  selected:=arow;
end;

procedure tcosguselect.fill;
var
  i:integer;
begin
  self.cosgugrid.colwidths[1]:=386;
  self.cosgugrid.rows[0].strings[0]:='КОСГУ';
  self.cosgugrid.rows[0].strings[1]:='Наименование';
  for i:=0 to length(cosgus.ccosgu)-1 do
    begin
      self.cosgugrid.rowcount:=i+1;
      self.cosgugrid.rows[i+1].strings[0]:=inttostr(cosgus.ccosgu[i].id);
      self.cosgugrid.rows[i+1].strings[1]:=cosgus.ccosgu[i].name;
    end;
  self.cosgugrid.fixedrows:=1;
end;

function tcosguselect.select:string;
begin
  cosguselect:=tcosguselect.create(owner);
  cosgus.fetch;
  self.fill;
  if self.showmodal=mrok then
    result:=self.cosgugrid.cols[0].strings[selected];
end;

end.
