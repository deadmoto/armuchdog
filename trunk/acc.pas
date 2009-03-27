unit ACC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, Buttons,
  AppEvnts, FR_Class, FR_DSet, FR_DBSet, ShellAPI, ExtCtrls, XPMan;
type
  TForm1 = class(TForm)
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N7: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    ReestrDBG: TDBGrid;
    StatusBar: TStatusBar;
    BitBtnFilter: TBitBtn;
    BitBtnExit: TBitBtn;
    ApplicationEvents: TApplicationEvents;
    LabelFiltr: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    EditForm1: TEdit;
    QueryForm1Search1: TQuery;
    QueryForm1Search2: TQuery;
    QueryForm1Search3: TQuery;
    LabelStrK: TLabel;
    frReport: TfrReport;
    BitBtnKarta: TBitBtn;
    frDBDataSet: TfrDBDataSet;
    frReport_All: TfrReport;
    N22: TMenuItem;
    BitBtnSpisok_Dog: TBitBtn;
    N23: TMenuItem;
    Timer1: TTimer;
    Button1: TButton;
    Button2: TButton;
    N24: TMenuItem;
    summary: TMenuItem;
    Button3: TButton;
    Button4: TButton;
    XPManifest1: TXPManifest;
    procedure BitBtnExitClick(Sender: TObject);
    procedure ReestrDBGCellClick(Column: TColumn);
    procedure ReestrDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N21Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure BitBtnChangeClick(Sender: TObject);
    procedure BitBtnFilterClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure EditForm1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ReestrDBGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtnKartaClick(Sender: TObject);
    procedure BitBtnSpisok_DogClick(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure summaryClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CapForm1: String;

implementation

uses
  mainfm,
  contracts,
  cosgufm,
  okvedfm,
  providerfm,
  summaryrpt,
  AddUnit, COSGUDBGUnit, About, DMUnit, FldNameDBGUnit, Name_DogDBGUnit,
SupplierDBGUnit, Name_DogDBGEditUnit, COSGUDBGEditUnit, SupplierDBGEditUnit,
FldNameDBGEditUnit,
  reportokved, contractfm, reportcosgu;

{$R *.dfm}

procedure TForm1.BitBtnExitClick(Sender: TObject);
begin
  if MessageDlg('Вы уверенны, что хотите выйти из программы?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then Application.Terminate;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Вы уверенны, что хотите выйти из программы?',
                mtCustom, [mbYes, mbNo], 0) = mrNo then Action:=caNone;
end;

procedure TForm1.ReestrDBGCellClick(Column: TColumn);
begin
  StatusBar.Panels[0].Text := ' № Договора: ' + ReestrDBG.Fields[1].AsString;
  StatusBar.Panels[1].Text := ' Дата договора: ' + ReestrDBG.Fields[2].AsString + 'г.';
  StatusBar.Panels[2].Text := ' Район: ' + ReestrDBG.Fields[5].AsString;
  StatusBar.Panels[3].Text := ' Внутренний рег.номер: ' + ReestrDBG.Fields[0].AsString;
end;

procedure TForm1.ReestrDBGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  StatusBar.Panels[0].Text := ' № Договора: ' + ReestrDBG.Fields[1].AsString;
  StatusBar.Panels[1].Text := ' Дата договора: ' + ReestrDBG.Fields[2].AsString + 'г.';
  StatusBar.Panels[2].Text := ' Район: ' + ReestrDBG.Fields[5].AsString;
  StatusBar.Panels[3].Text := ' Внутренний рег.номер: ' + ReestrDBG.Fields[0].AsString;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
  AboutBox.Visible:=True;
  Form1.Enabled:=False;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  DM.ReestrTb.Refresh;
  DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
  DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
end;

procedure TForm1.N9Click(Sender: TObject);
begin
  ShowMessage('Пока не работает, находится в стадии разработки!!!'+#13);
end;

procedure TForm1.N14Click(Sender: TObject);
begin
  ShowMessage('Пока не работает, находится в стадии разработки!!!'+#13);
end;

procedure TForm1.N13Click(Sender: TObject);
begin
  ShowMessage('Пока не работает, находится в стадии разработки!!!'+#13);
end;

procedure TForm1.N16Click(Sender: TObject);
begin
  cosgufm.showeditor;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  okvedfm.showeditor;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
//говнокод
  providerform:=tproviderform.create(owner);
  providerform.showmodal;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
//
end;

procedure TForm1.N19Click(Sender: TObject);
begin
  reportokved.showreport;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
  ShowMessage('Пока не работает, находится в стадии разработки!!!'+#13);
end;

procedure TForm1.BitBtnChangeClick(Sender: TObject);
begin
  contractform.edit(strtoint(reestrdbg.fields[0].asstring));
end;

procedure TForm1.BitBtnFilterClick(Sender: TObject);
begin
  ShowMessage('Пока не работает, находится в стадии разработки!!!'+#13);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  StatusBar.Panels[4].Text:='' + FormatDateTime('dd mmm yyyy г. dddd', Date);
  CapForm1 := 'АРМ "Учёт договоров"...   ';
end;

procedure TForm1.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
var
i: SmallInt;
begin
if Msg.message = WM_MOUSEWHEEL then
begin
Msg.message := WM_KEYDOWN;
Msg.lParam := 0;
i := HiWord(Msg.wParam) ;
if i > 0 then
Msg.wParam := VK_UP
else
Msg.wParam := VK_DOWN;
Handled := False;
end;
end;

procedure TForm1.EditForm1Change(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    QueryForm1Search1.Close;
    QueryForm1Search1.Params[0].AsString:=EditForm1.Text;
    DM.DataSource1.DataSet:=QueryForm1Search1;
    QueryForm1Search1.Open;
    ReestrDBG.Refresh;
  end
  else
  if RadioButton2.Checked then begin
    QueryForm1Search2.Close;
    QueryForm1Search2.Params[0].AsString:=EditForm1.Text;
    DM.DataSource1.DataSet:=QueryForm1Search2;
    QueryForm1Search2.Open;
    ReestrDBG.Refresh;
  end
  else
  if RadioButton3.Checked then begin
    QueryForm1Search3.Close;
    QueryForm1Search3.Params[0].AsString:=EditForm1.Text;
    DM.DataSource1.DataSet:=QueryForm1Search3;
    QueryForm1Search3.Open;
    ReestrDBG.Refresh;
  end;
end;

procedure TForm1.ReestrDBGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  StatusBar.Panels[0].Text := ' № Договора: ' + ReestrDBG.Fields[1].AsString;
  StatusBar.Panels[1].Text := ' Дата договора: ' + ReestrDBG.Fields[2].AsString + 'г.';
  StatusBar.Panels[2].Text := ' Район: ' + ReestrDBG.Fields[5].AsString;
  StatusBar.Panels[3].Text := ' Внутренний рег.номер: ' + ReestrDBG.Fields[0].AsString;
end;

procedure TForm1.BitBtnKartaClick(Sender: TObject);
var
str, str1: String;
begin
  str:=Form1.ReestrDBG.Fields[0].AsString;
  str1:=Form1.ReestrDBG.Fields[1].AsString;
  if MessageDlg('№ ' + str + #13#10 +
                'Вы хотите посмотреть карту ' + #13#10 +
                'договора № ' + str1,
                mtCustom, [mbYes, mbNo], 0) = mrYes then
    begin
      frReport.LoadFromFile('reports\KartaFR.frf');
      frReport.ShowReport;
    end;
end;

procedure TForm1.BitBtnSpisok_DogClick(Sender: TObject);
begin
  if MessageDlg('Вы хотите посмотреть весь список договоров?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
    begin
      frReport_All.LoadFromFile('reports\Spisok_DogFR.frf');
      frReport_All.ShowReport;
    end;
end;

procedure TForm1.N23Click(Sender: TObject);
begin
  ShellAbout(Form1.Handle, 'АРМ "Учёт договоров"',
  'Авторские права на программу спрашивать у' + #13#10 +
  'хозяина мира!!! Вот! ;)))', Application.Icon.Handle);
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  contractform.add;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  contractform.edit(strtoint(reestrdbg.fields[0].asstring));
end;

procedure TForm1.N24Click(Sender: TObject);
begin
  report_cosgu.showmodal;
end;

procedure TForm1.summaryClick(Sender: TObject);
begin
  summaryrpt.showreport;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  mainfm.main.show;
end;

end.
