unit About;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Messages, Dialogs, TypInfo;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    ProductName: TLabel;
    Version: TLabel;
    Copyright: TLabel;
    Comments: TLabel;
    OKButton: TButton;
    ProgramIcon: TImage;
    procedure OKButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

uses acc;

{$R *.dfm}

procedure TAboutBox.OKButtonClick(Sender: TObject);
begin
  AboutBox.Visible:=False;
  Form1.Enabled:=True;
end;

procedure TAboutBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AboutBox.Visible:=False;
  Form1.Enabled:=True;
end;

procedure TAboutBox.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
 
