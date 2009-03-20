unit Name_DogDBGUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, DBTables, AppEvnts;

type
  TFormName_DogDBG = class(TForm)
    BitBtnName_dogDBGCancel: TBitBtn;
    BitBtnName_dogDBGEnter: TBitBtn;
    QueryName_dogSearch1: TQuery;
    EditName_dog: TEdit;
    LabelFiltr: TLabel;
    Name_dogDBG: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    QueryName_dogSearch2: TQuery;
    StringField1: TStringField;
    QueryName_dogSearch1ID_NOMENCL: TStringField;
    QueryName_dogSearch1NAME_SUBJ: TStringField;
    QueryName_dogSearch2ID_NOMENCL: TStringField;
    QueryName_dogSearch2NAME_SUBJ: TStringField;
    QueryName_dogSearch3: TQuery;
    QueryName_dogSearch3ID_NOMENCL: TStringField;
    QueryName_dogSearch3NAME: TStringField;
    QueryName_dogSearch3NAME_SUBJ: TStringField;
    ApplicationEvents: TApplicationEvents;
    procedure BitBtnName_dogDBGCancelClick(Sender: TObject);
    procedure BitBtnName_dogDBGEnterClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditName_dogChange(Sender: TObject);
    procedure Name_dogDBGDblClick(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure Name_dogDBGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Name_dogDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Name_dogDBGKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormName_DogDBG: TFormName_DogDBG;

implementation

uses DMUnit, ACC, AddUnit, SupplierDBGUnit, Name_DogDBGEditUnit;

{$R *.dfm}

procedure TFormName_DogDBG.BitBtnName_dogDBGCancelClick(Sender: TObject);
begin
  FormAdd.Enabled:=True;
  FormName_DogDBG.Visible:=False;
  DM.ADOQuery3.Active:=False;
end;

procedure TFormName_DogDBG.BitBtnName_dogDBGEnterClick(Sender: TObject);
begin
  if (FormAdd.PageControl.TabIndex=1) then begin
  FormAdd.LabelNomenclID1.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName1.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab1Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=2) then begin
  FormAdd.LabelNomenclID2.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName2.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab2Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=3) then begin
  FormAdd.LabelNomenclID3.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName3.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab3Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=4) then begin
  FormAdd.LabelNomenclID4.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName4.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab4Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=5) then begin
  FormAdd.LabelNomenclID5.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName5.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab5Click(Sender);
  end;
end;

procedure TFormName_DogDBG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormAdd.Enabled:=True;
  FormName_DogDBG.Visible:=False;
  DM.ADOQuery3.Active:=False;
end;

procedure TFormName_DogDBG.FormCreate(Sender: TObject);
begin
  DM.ADOQuery3.Active:=True;
end;

procedure TFormName_DogDBG.EditName_dogChange(Sender: TObject);
begin
  if RadioButton1.Checked then begin
    QueryName_dogSearch1.Close;
    QueryName_dogSearch1.Params[0].AsString:=EditName_dog.Text;
    DM.DataSource3.DataSet:=QueryName_dogSearch1;
    QueryName_dogSearch1.Open;
    Name_dogDBG.Refresh;
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
//  Name_dogDBG.Refresh;
end;

procedure TFormName_DogDBG.Name_dogDBGDblClick(Sender: TObject);
begin
  if (FormAdd.PageControl.TabIndex=1) then begin
  FormAdd.LabelNomenclID1.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName1.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab1Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=2) then begin
  FormAdd.LabelNomenclID2.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName2.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab2Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=3) then begin
  FormAdd.LabelNomenclID3.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName3.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab3Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=4) then begin
  FormAdd.LabelNomenclID4.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName4.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab4Click(Sender);
  end;
  if (FormAdd.PageControl.TabIndex=5) then begin
  FormAdd.LabelNomenclID5.Caption:=Name_dogDBG.Fields[0].AsString;
  FormAdd.LabelNomenclName5.Caption:=Name_dogDBG.Fields[1].AsString;
  FormAdd.balancelab5Click(Sender);
  end;
  FormAdd.Enabled:=True;
  FormName_DogDBG.Visible:=False;
end;

procedure TFormName_DogDBG.ApplicationEventsMessage(var Msg: tagMSG;
  var Handled: Boolean);
var
i: SmallInt;
begin
Name_dogDBG.ShowHint:=True;
//Name_dogDBG.Hint:=Name_dogDBG.Fields[1].AsString;

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

procedure TFormName_DogDBG.FormShow(Sender: TObject);
begin
  DM.ADOQuery3.Active:=True;
  FormName_DogDBG.EditName_dog.Text:=' ';
  FormName_DogDBG.EditName_dog.Text:='';
end;

procedure TFormName_DogDBG.Name_dogDBGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Name_dogDBG.ShowHint:=True;
  Name_dogDBG.Hint:=Name_dogDBG.Fields[1].AsString;
end;

procedure TFormName_DogDBG.Name_dogDBGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Name_dogDBG.ShowHint:=True;
  Name_dogDBG.Hint:=Name_dogDBG.Fields[1].AsString;
end;

procedure TFormName_DogDBG.Name_dogDBGKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Name_dogDBG.ShowHint:=True;
  Name_dogDBG.Hint:=Name_dogDBG.Fields[1].AsString;
end;

procedure TFormName_DogDBG.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
