unit nomencldlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids;

type
  tnomenclselect = class(TForm)
    filterbox: TGroupBox;
    filter: TEdit;
    nomenclgrid: TStringGrid;
    btnbox: TGroupBox;
    ok: TButton;
    cancel: TButton;
    filterall: TRadioButton;
    filterid: TRadioButton;
    filtername: TRadioButton;
    procedure nomenclgridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure filterChange(Sender: TObject);
    procedure filterallClick(Sender: TObject);
    procedure filteridClick(Sender: TObject);
    procedure filternameClick(Sender: TObject);
  private
    { Private declarations }
  public
    selected:integer;
    procedure fill;
    function select:string;
  end;

var
  nomenclselect: tnomenclselect;

implementation

uses
  sizers;

{$R *.dfm}

procedure tnomenclselect.fill;
var
  i:integer;
begin
  self.nomenclgrid.colwidths[1]:=386;
  self.nomenclgrid.rows[0].strings[0]:='ОКВЭД';
  self.nomenclgrid.rows[0].strings[1]:='Наименование';
  for i:=0 to length(sizers.asizer)-1 do
    begin
      self.nomenclgrid.rowcount:=i+1;
      self.nomenclgrid.rows[i+1].strings[0]:=sizers.asizer[i].id;
      self.nomenclgrid.rows[i+1].strings[1]:=sizers.asizer[i].name;
    end;
  self.nomenclgrid.fixedrows:=1;
end;

function tnomenclselect.select:string;
begin
  nomenclselect:=tnomenclselect.create(owner);
  sizers.fetch;
  self.fill;
  if self.showmodal=mrok then
    result:=self.nomenclgrid.cols[0].strings[selected];
end;

procedure tnomenclselect.nomenclgridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  selected:=arow;
end;

procedure tnomenclselect.filterChange(Sender: TObject);
begin
  if filter.text<>'' then
    begin
      if filterid.checked then
        sizers.fetch('id_nomencl',filter.text);
      if filtername.checked then
        sizers.fetch('name',filter.text);
      self.fill;
    end;
end;

procedure tnomenclselect.filterallClick(Sender: TObject);
begin
  filterid.checked:=false;
  filtername.checked:=false;
end;

procedure tnomenclselect.filteridClick(Sender: TObject);
begin
  filterall.checked:=false;
  filtername.checked:=false;
end;

procedure tnomenclselect.filternameClick(Sender: TObject);
begin
  filterall.checked:=false;
  filterid.checked:=false;
end;

end.
