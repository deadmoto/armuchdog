unit COSGUDBGEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, DBTables, AppEvnts;

type
  TFormCOSGUDBGEdit = class(TForm)
    COSGUDBG: TDBGrid;
    BitBtnCOSGUDBGAdd: TBitBtn;
    BitBtnCOSGUDBGChange: TBitBtn;
    BitBtnCOSGUDBGDel: TBitBtn;
    BitBtnCOSGUDBGExit: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    ApplicationEvents: TApplicationEvents;
    QueryDelete: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure COSGUDBGCellClick(Column: TColumn);
    procedure BitBtnCOSGUDBGAddClick(Sender: TObject);
    procedure BitBtnCOSGUDBGDelClick(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure BitBtnCOSGUDBGExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtnCOSGUDBGChangeClick(Sender: TObject);
    procedure COSGUDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure COSGUDBGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCOSGUDBGEdit: TFormCOSGUDBGEdit;

implementation

uses DMUnit, ACC, AddUnit, StrUtils;

{$R *.dfm}

procedure TFormCOSGUDBGEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form1.Enabled:=True;
  DM.ADOQuery5.Active:=False;
  FormCOSGUDBGEdit.Visible:=False;
end;

procedure TFormCOSGUDBGEdit.FormCreate(Sender: TObject);
begin
  DM.ADOQuery5.Active:=True;
end;

procedure TFormCOSGUDBGEdit.COSGUDBGCellClick(Column: TColumn);
begin
  Edit1.Text:=COSGUDBG.Fields[0].AsString;
  Edit2.Text:=COSGUDBG.Fields[1].AsString;
end;

procedure TFormCOSGUDBGEdit.BitBtnCOSGUDBGAddClick(Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormCOSGUDBGEdit.COSGUDBG.Fields[0].AsString;
  if MessageDlg('Добавить статью КОСГУ ' + str + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.COSGUTb.Insert;

    DM.COSGUTb.FieldByName('COSGU').AsInteger:=StrToInt(Edit1.Text);
    DM.COSGUTb.FieldByName('name_artic').AsString:=Edit2.Text;

    DM.COSGUTb.Post;
    DM.COSGUTb.Active;
    DM.ADOQuery5.Active:=not DM.ADOQuery5.Active;
    DM.ADOQuery5.Active:=not DM.ADOQuery5.Active;

    FormShow(COSGUDBG);
  end;
end;

procedure TFormCOSGUDBGEdit.BitBtnCOSGUDBGDelClick(Sender: TObject);
var
strk: String;
str: Integer;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormCOSGUDBGEdit.COSGUDBG.Fields[0].AsInteger;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'удалить статью КОСГУ ' + IntToStr(str) + '?',
                mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    QueryDelete.Close;
    QueryDelete.SQL.Clear;
    QueryDelete.SQL.Add('delete from articledog where COSGU = ' + IntToStr(str));
    QueryDelete.ExecSQL;
    DM.COSGUTb.Refresh;
    DM.ADOQuery5.Active:=not DM.ADOQuery5.Active;
    DM.ADOQuery5.Active:=not DM.ADOQuery5.Active;
    FormShow(COSGUDBG);
  end;
end;

procedure TFormCOSGUDBGEdit.ApplicationEventsMessage(var Msg: tagMSG;
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

procedure TFormCOSGUDBGEdit.BitBtnCOSGUDBGExitClick(Sender: TObject);
begin
  Form1.Enabled:=True;
  DM.ADOQuery5.Active:=False;
  FormCOSGUDBGEdit.Close;
end;

procedure TFormCOSGUDBGEdit.FormShow(Sender: TObject);
begin
  DM.ADOQuery5.Active:=True;
  Edit1.Text:=COSGUDBG.Fields[0].AsString;
  Edit2.Text:=COSGUDBG.Fields[1].AsString;
end;

procedure TFormCOSGUDBGEdit.BitBtnCOSGUDBGChangeClick(Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormCOSGUDBGEdit.COSGUDBG.Fields[0].AsString;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'изменить статью КОСГУ ' + str + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('update articledog');
    DM.Query.SQL.Add('set cosgu=:cosgu, name_artic=:name_artic');
    DM.Query.SQL.Add('where cosgu = ' + strk + str + strk);
    DM.Query.ParamByName('cosgu').AsInteger:=StrToInt(Edit1.Text);
    DM.Query.ParamByName('name_artic').AsString:=Edit2.Text;
    DM.Query.ExecSQL;
    DM.COSGUTb.Refresh;
    DM.ADOQuery5.Active:=not DM.ADOQuery5.Active;
    DM.ADOQuery5.Active:=not DM.ADOQuery5.Active;
    FormShow(COSGUDBG);
  end;
end;

procedure TFormCOSGUDBGEdit.COSGUDBGKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Edit1.Text:=COSGUDBG.Fields[0].AsString;
  Edit2.Text:=COSGUDBG.Fields[1].AsString;
end;

procedure TFormCOSGUDBGEdit.COSGUDBGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Edit1.Text:=COSGUDBG.Fields[0].AsString;
  Edit2.Text:=COSGUDBG.Fields[1].AsString;
end;

procedure TFormCOSGUDBGEdit.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
