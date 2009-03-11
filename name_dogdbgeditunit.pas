unit Name_DogDBGEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, AppEvnts, Grids, DBGrids, StdCtrls, Buttons;

type
  TFormName_DogDBGEdit = class(TForm)
    LabelFiltr: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    EditName_dog: TEdit;
    Name_dogDBG: TDBGrid;
    ApplicationEvents: TApplicationEvents;
    QueryName_dogSearch1: TQuery;
    QueryName_dogSearch1ID_NOMENCL: TStringField;
    QueryName_dogSearch1name: TStringField;
    QueryName_dogSearch1NAME_SUBJ: TStringField;
    QueryName_dogSearch2: TQuery;
    QueryName_dogSearch2ID_NOMENCL: TStringField;
    StringField1: TStringField;
    QueryName_dogSearch2NAME_SUBJ: TStringField;
    QueryName_dogSearch3: TQuery;
    QueryName_dogSearch3ID_NOMENCL: TStringField;
    QueryName_dogSearch3NAME: TStringField;
    QueryName_dogSearch3NAME_SUBJ: TStringField;
    BitBtnName_dogDBGExit: TBitBtn;
    BitBtnName_dogDBGAdd: TBitBtn;
    BitBtnName_dogDBGChange: TBitBtn;
    BitBtnName_dogDBGDel: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    QueryDelete: TQuery;
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure EditName_dogChange(Sender: TObject);
    procedure BitBtnName_dogDBGExitClick(Sender: TObject);
    procedure Name_dogDBGCellClick(Column: TColumn);
    procedure BitBtnName_dogDBGAddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnName_dogDBGChangeClick(Sender: TObject);
    procedure BitBtnName_dogDBGDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Name_dogDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Name_dogDBGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormName_DogDBGEdit: TFormName_DogDBGEdit;

implementation

uses DMUnit, ACC;

{$R *.dfm}

procedure TFormName_DogDBGEdit.ApplicationEventsMessage(var Msg: tagMSG;
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

procedure TFormName_DogDBGEdit.EditName_dogChange(Sender: TObject);
begin
  if RadioButton1.Checked then begin
   QueryName_dogSearch1.Close;
   QueryName_dogSearch1.Params[0].AsString:=EditName_dog.Text;
   DM.DataSource3.DataSet:=QueryName_dogSearch1;
   QueryName_dogSearch1.Open;
   Name_dogDBG.Refresh;
   Edit1.Text:=Name_dogDBG.Fields[0].AsString;
   Edit2.Text:=Name_dogDBG.Fields[1].AsString;
   Edit3.Text:=Name_dogDBG.Fields[2].AsString;
  end
  else
  if RadioButton2.Checked then begin
   QueryName_dogSearch2.Close;
   QueryName_dogSearch2.Params[0].AsString:=EditName_dog.Text;
   DM.DataSource3.DataSet:=QueryName_dogSearch2;
   QueryName_dogSearch2.Open;
   Name_dogDBG.Refresh;
  end
  else
  if RadioButton3.Checked then begin
   QueryName_dogSearch3.Close;
   QueryName_dogSearch3.Params[0].AsString:=EditName_dog.Text;
   DM.DataSource3.DataSet:=QueryName_dogSearch3;
   QueryName_dogSearch3.Open;
   Name_dogDBG.Refresh;
  end;
end;

procedure TFormName_DogDBGEdit.BitBtnName_dogDBGExitClick(
  Sender: TObject);
begin
  Form1.Enabled:=True;
  FormName_DogDBGEdit.EditName_dog.Text:='';
  FormName_DogDBGEdit.Visible:=False;
  DM.ADOQuery3.Active:=False;
end;

procedure TFormName_DogDBGEdit.Name_dogDBGCellClick(Column: TColumn);
begin
  Edit1.Text:=Name_dogDBG.Fields[0].AsString;
  Edit2.Text:=Name_dogDBG.Fields[1].AsString;
  Edit3.Text:=Name_dogDBG.Fields[2].AsString;
end;

procedure TFormName_DogDBGEdit.BitBtnName_dogDBGAddClick(Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormName_DogDBGEdit.Name_dogDBG.Fields[0].AsString;
  if MessageDlg('Добавить предмет договора ' + str + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.NomenclTb.Insert;

    DM.NomenclTb.FieldByName('id_nomencl').AsString:=Edit1.Text;
    DM.NomenclTb.FieldByName('unit_measu').AsString:='';
    DM.NomenclTb.FieldByName('name').AsString:=Edit2.Text;
    DM.NomenclTb.FieldByName('name_subj').AsString:=Edit3.Text;

    DM.NomenclTb.Post;
    DM.NomenclTb.Active;
    DM.ADOQuery3.Active:=not DM.ADOQuery3.Active;
    DM.ADOQuery3.Active:=not DM.ADOQuery3.Active;

    FormShow(Name_dogDBG);
  end;
end;

procedure TFormName_DogDBGEdit.FormCreate(Sender: TObject);
begin
   DM.ADOQuery3.Active:=True;
end;

procedure TFormName_DogDBGEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form1.Enabled:=True;
  FormName_DogDBGEdit.Visible:=False;
  DM.ADOQuery3.Active:=False;
end;

procedure TFormName_DogDBGEdit.BitBtnName_dogDBGChangeClick(
  Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormName_DogDBGEdit.Name_dogDBG.Fields[0].AsString;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'изменить предмет договора ' + str + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('update nomencldog');
    DM.Query.SQL.Add('set id_nomencl=:id_nomencl, name=:name, name_subj=:name_subj');
    DM.Query.SQL.Add('where id_nomencl = ' + strk + str + strk);
    DM.Query.ParamByName('id_nomencl').AsString:=Edit1.Text;
    DM.Query.ParamByName('name').AsString:=Edit2.Text;
    DM.Query.ParamByName('name_subj').AsString:=Edit3.Text;
    DM.Query.ExecSQL;
    DM.NomenclTb.Refresh;
    DM.ADOQuery3.Active:=not DM.ADOQuery3.Active;
    DM.ADOQuery3.Active:=not DM.ADOQuery3.Active;
    FormShow(Name_dogDBG);
  end;
end;

procedure TFormName_DogDBGEdit.BitBtnName_dogDBGDelClick(Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormName_DogDBGEdit.Name_dogDBG.Fields[0].AsString;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'удалить предмет договора ' + str + '?',
                mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    QueryDelete.Close;
    QueryDelete.SQL.Clear;
    QueryDelete.SQL.Add('delete from nomencldog where id_nomencl = ' + strk + str + strk);
    QueryDelete.ExecSQL;
    DM.NomenclTb.Refresh;
    DM.ADOQuery3.Active:=not DM.ADOQuery3.Active;
    DM.ADOQuery3.Active:=not DM.ADOQuery3.Active;
    FormShow(Name_dogDBG);
  end;
end;

procedure TFormName_DogDBGEdit.FormShow(Sender: TObject);
begin
   FormName_DogDBGEdit.EditName_dog.Text:=' ';
   FormName_DogDBGEdit.EditName_dog.Text:='';
   Edit1.Text:=Name_dogDBG.Fields[0].AsString;
   Edit2.Text:=Name_dogDBG.Fields[1].AsString;
   Edit3.Text:=Name_dogDBG.Fields[2].AsString;
end;

procedure TFormName_DogDBGEdit.Name_dogDBGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Edit1.Text:=Name_dogDBG.Fields[0].AsString;
  Edit2.Text:=Name_dogDBG.Fields[1].AsString;
  Edit3.Text:=Name_dogDBG.Fields[2].AsString;
end;

procedure TFormName_DogDBGEdit.Name_dogDBGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Edit1.Text:=Name_dogDBG.Fields[0].AsString;
  Edit2.Text:=Name_dogDBG.Fields[1].AsString;
  Edit3.Text:=Name_dogDBG.Fields[2].AsString;
end;

procedure TFormName_DogDBGEdit.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.

