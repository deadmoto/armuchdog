unit providerdlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls;

type
  Tprovdlg = class(TForm)
    ok: TButton;
    cancel: TButton;
    provbox: TGroupBox;
    prov: TEdit;
    btnbox: TGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  provdlg: Tprovdlg;

implementation

{$R *.dfm}

end.
