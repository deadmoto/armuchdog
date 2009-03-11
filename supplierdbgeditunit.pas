unit SupplierDBGEditUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AppEvnts, Grids, DBGrids, StdCtrls, DB, DBTables, Buttons;

type
  TFormSupplierDBGEdit = class(TForm)
    LabelFiltr: TLabel;
    EditSupplierSearch: TEdit;
    SupplierDBG: TDBGrid;
    ApplicationEvents: TApplicationEvents;
    BitBtnSupplierDBGAdd: TBitBtn;
    BitBtnSupplierDBGChange: TBitBtn;
    BitBtnSupplierDBGDel: TBitBtn;
    BitBtnSupplierDBGExit: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    QuerySupplierSearch: TQuery;
    QueryDelete: TQuery;
    QuerySupplierSearchid_supplier: TIntegerField;
    QuerySupplierSearchsupplier: TStringField;
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure BitBtnSupplierDBGExitClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnSupplierDBGAddClick(Sender: TObject);
    procedure BitBtnSupplierDBGChangeClick(Sender: TObject);
    procedure BitBtnSupplierDBGDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditSupplierSearchChange(Sender: TObject);
    procedure SupplierDBGCellClick(Column: TColumn);
    procedure SupplierDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SupplierDBGDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSupplierDBGEdit: TFormSupplierDBGEdit;

implementation

uses DMUnit, ACC;

{$R *.dfm}

procedure TFormSupplierDBGEdit.ApplicationEventsMessage(var Msg: tagMSG;
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

procedure TFormSupplierDBGEdit.BitBtnSupplierDBGExitClick(Sender: TObject);
begin
  Form1.Enabled:=True;
  FormSupplierDBGEdit.EditSupplierSearch.Text:='';
  DM.ADOQuery4.Active:=False;
  FormSupplierDBGEdit.Close;
end;

procedure TFormSupplierDBGEdit.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form1.Enabled:=True;
  DM.ADOQuery4.Active:=False;
  FormSupplierDBGEdit.Visible:=False;
end;

procedure TFormSupplierDBGEdit.FormCreate(Sender: TObject);
begin
  DM.ADOQuery4.Active:=True;
end;

procedure TFormSupplierDBGEdit.BitBtnSupplierDBGAddClick(Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=Edit1.Text;
  if MessageDlg('Добавить нового поставщика № ' + str + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    dm.SupplierTb.Active:=true;
    DM.SupplierTb.Insert;

    DM.SupplierTb.FieldByName('id_supplier').AsInteger:=StrToInt(Edit1.Text);
    DM.SupplierTb.FieldByName('supplier').AsString:=Edit2.Text;

    DM.SupplierTb.Post;
    DM.SupplierTb.Active;
    DM.ADOQuery4.Active:=not DM.ADOQuery4.Active;
    DM.ADOQuery4.Active:=not DM.ADOQuery4.Active;
    FormShow(SupplierDBG);
  end;
end;

procedure TFormSupplierDBGEdit.BitBtnSupplierDBGChangeClick(
  Sender: TObject);
var
str, strk: String;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormSupplierDBGEdit.SupplierDBG.Fields[0].AsString;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'изменить данные поставщика № ' + str + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('update supplierdog');
    DM.Query.SQL.Add('set id_supplier=:id_supplier, supplier=:supplier');
    DM.Query.SQL.Add('where id_supplier=' + strk + str + strk);
    DM.Query.ParamByName('id_supplier').AsInteger:=StrToInt(Edit1.Text);
    DM.Query.ParamByName('supplier').AsString:=Edit2.Text;
    DM.Query.ExecSQL;
    DM.SupplierTb.Refresh;
    DM.ADOQuery4.Active:=not DM.ADOQuery4.Active;
    DM.ADOQuery4.Active:=not DM.ADOQuery4.Active;
    FormShow(SupplierDBG);
  end;
end;

procedure TFormSupplierDBGEdit.BitBtnSupplierDBGDelClick(Sender: TObject);
var
strk: String;
str: Integer;
begin
  strk:=Form1.LabelStrK.Caption;
  str:=FormSupplierDBGEdit.SupplierDBG.Fields[0].AsInteger;
  if MessageDlg('Вы уверенны, что хотите' + #13#10 +
                'удалить поставщика № ' + IntToStr(str) + '?',
                mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    QueryDelete.Close;
    QueryDelete.SQL.Clear;
    QueryDelete.SQL.Add('delete from supplierdog where id_supplier = ' + IntToStr(str));
    QueryDelete.ExecSQL;
    DM.SupplierTb.Refresh;
    DM.ADOQuery4.Active:=not DM.ADOQuery4.Active;
    DM.ADOQuery4.Active:=not DM.ADOQuery4.Active;
  end;
  FormShow(SupplierDBG);
end;

procedure TFormSupplierDBGEdit.FormShow(Sender: TObject);
begin
  DM.ADOQuery4.Active:=True;
  FormSupplierDBGEdit.EditSupplierSearch.Text:=' ';
  FormSupplierDBGEdit.EditSupplierSearch.Text:='';
  Edit1.Text:=SupplierDBG.Fields[0].AsString;
  Edit2.Text:=SupplierDBG.Fields[1].AsString;
end;

procedure TFormSupplierDBGEdit.EditSupplierSearchChange(Sender: TObject);
begin
  QuerySupplierSearch.Close;
  QuerySupplierSearch.Params[0].AsString:=EditSupplierSearch.Text;
  DM.DataSource4.DataSet:=QuerySupplierSearch;
  QuerySupplierSearch.Open;
  SupplierDBG.Refresh;
end;

procedure TFormSupplierDBGEdit.SupplierDBGCellClick(Column: TColumn);
begin
  Edit1.Text:=SupplierDBG.Fields[0].AsString;
  Edit2.Text:=SupplierDBG.Fields[1].AsString;
end;

procedure TFormSupplierDBGEdit.SupplierDBGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  Edit1.Text:=SupplierDBG.Fields[0].AsString;
  Edit2.Text:=SupplierDBG.Fields[1].AsString;
end;

procedure TFormSupplierDBGEdit.SupplierDBGDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  Edit1.Text:=SupplierDBG.Fields[0].AsString;
  Edit2.Text:=SupplierDBG.Fields[1].AsString;
end;

procedure TFormSupplierDBGEdit.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
