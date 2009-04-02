unit quarterrpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids;

type
  Treportquarter = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  reportquarter: Treportquarter;

implementation

{$R *.dfm}

end.
