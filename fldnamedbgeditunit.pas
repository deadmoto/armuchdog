unit FldNameDBGEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, AppEvnts, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormFldNameDBGEdit = class(TForm)
    LabelFiltr: TLabel;
    EditFldSearch: TEdit;
    FldNameDBG: TDBGrid;
    ApplicationEvents: TApplicationEvents;
    QueryFldSearch: TQuery;
    BitBtnFldNameDBGAdd: TBitBtn;
    BitBtnFldNameDBGChange: TBitBtn;
    BitBtnFldNameDBGDel: TBitBtn;
    BitBtnFldNameDBGExit: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    QueryDelete: TQuery;
    QueryFldSearchfldid: TSmallintField;
    QueryFldSearchfldname: TStringField;
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FldNameDBGCellClick(Column: TColumn);
    procedure EditFldSearchChange(Sender: TObject);
    procedure BitBtnFldNameDBGAddClick(Sender: TObject);
    procedure BitBtnFldNameDBGChangeClick(Sender: TObject);
    procedure BitBtnFldNameDBGDelClick(Sender: TObject);
    procedure BitBtnFldNameDBGExitClick(Sender: TObject);
    procedure FldNameDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FldNameDBGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFldNameDBGEdit: TFormFldNameDBGEdit;

implementation

uses DMUnit, ACC;

{$R *.dfm}

procedure TFormFldNameDBGEdit.ApplicationEventsMessage(var Msg: tagMSG;
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

procedure TFormFldNameDBGEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form1.Enabled:=True;
  DM.ADOQuery2.Active:=False;
  FormFldNameDBGEdit.Visible:=False;
end;

procedure TFormFldNameDBGEdit.FormCreate(Sender: TObject);
begin
  DM.ADOQuery2.Active:=True;
end;

procedure TFormFldNameDBGEdit.FormShow(Sender: TObject);
begin
  DM.ADOQuery2.Active:=True;
  FormFldNameDBGEdit.EditFldSearch.Text:=' ';
  FormFldNameDBGEdit.EditFldSearch.Text:='';
  Edit1.Text:=FldNameDBG.Fields[0].AsString;
  Edit2.Text:=FldNameDBG.Fields[1].AsString;
end;

procedure TFormFldNameDBGEdit.FldNameDBGCellClick(Column: TColumn);
begin
  Edit1.Text:=FldNameDBG.Fields[0].AsString;
  Edit2.Text:=FldNameDBG.Fields[1].AsString;
end;

procedure TFormFldNameDBGEdit.EditFldSearchChange(Sender: TObject);
begin
  QueryFldSearch.Close;
  QueryFldSearch.Params[0].AsString:=EditFldSearch.Text;
  DM.DataSource2.DataSet:=QueryFldSearch;
  QueryFldSearch.Open;
  FldNameDBG.Refresh;
  Edit1.Text:=FldNameDBG.Fields[0].AsString;
  Edit2.Text:=FldNameDBG.Fields[1].AsString;
end;

procedure TFormFldNameDBGEdit.BitBtnFldNameDBGAddClick(Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormFldNameDBGEdit.FldNameDBG.Fields[0].AsString;
  if MessageDlg('Добавить новый район?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.FldNameTb.Insert;

    DM.FldNameTb.FieldByName('fldid').AsInteger:=StrToInt(Edit1.Text);
    DM.FldNameTb.FieldByName('fldname').AsString:=Edit2.Text;

    DM.FldNameTb.Post;
    DM.FldNameTb.Active;
    DM.ADOQuery2.Active:=not DM.ADOQuery2.Active;
    DM.ADOQuery2.Active:=not DM.ADOQuery2.Active;

    FormShow(FldNameDBG);
  end;
end;

procedure TFormFldNameDBGEdit.BitBtnFldNameDBGChangeClick(Sender: TObject);
var
str, str1, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormFldNameDBGEdit.FldNameDBG.Fields[0].AsString;
  str1:=FormFldNameDBGEdit.FldNameDBG.Fields[1].AsString;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'изменить данный район?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('update regioniddog');
    DM.Query.SQL.Add('set fldid=:fldid, fldname=:fldname');
    DM.Query.SQL.Add('where fldid = ' + strk + str + strk);
    DM.Query.ParamByName('fldid').AsInteger:=StrToInt(Edit1.Text);
    DM.Query.ParamByName('fldname').AsString:=Edit2.Text;
    DM.Query.ExecSQL;
    DM.FldNameTb.Refresh;
    DM.ADOQuery2.Active:=not DM.ADOQuery2.Active;
    DM.ADOQuery2.Active:=not DM.ADOQuery2.Active;
    FormShow(FldNameDBG);
  end;
end;

procedure TFormFldNameDBGEdit.BitBtnFldNameDBGDelClick(Sender: TObject);
var
str1, strk: String;
str: Integer;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormFldNameDBGEdit.FldNameDBG.Fields[0].AsInteger;
  str1:=FormFldNameDBGEdit.FldNameDBG.Fields[1].AsString;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'удалить текущий район?',
                mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    QueryDelete.Close;
    QueryDelete.SQL.Clear;
    QueryDelete.SQL.Add('delete from regioniddog where fldid = ' + IntToStr(str));
    QueryDelete.ExecSQL;
    DM.FldNameTb.Refresh;
    DM.ADOQuery2.Active:=not DM.ADOQuery2.Active;
    DM.ADOQuery2.Active:=not DM.ADOQuery2.Active;
    FormShow(FldNameDBG);
  end;
end;

procedure TFormFldNameDBGEdit.BitBtnFldNameDBGExitClick(Sender: TObject);
begin
  Form1.Enabled:=True;
  DM.ADOQuery2.Active:=False;
  FormFldNameDBGEdit.Close;
end;

procedure TFormFldNameDBGEdit.FldNameDBGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Edit1.Text:=FldNameDBG.Fields[0].AsString;
  Edit2.Text:=FldNameDBG.Fields[1].AsString;
end;

procedure TFormFldNameDBGEdit.FldNameDBGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Edit1.Text:=FldNameDBG.Fields[0].AsString;
  Edit2.Text:=FldNameDBG.Fields[1].AsString;
end;

procedure TFormFldNameDBGEdit.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
