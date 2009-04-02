unit progressdlg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  Tprogress = class(TForm)
    panel: TPanel;
    message: TLabel;
  private
  public
  end;

implementation

{$R *.dfm}

end.
