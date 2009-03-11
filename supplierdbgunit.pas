unit SupplierDBGUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, DBTables, AppEvnts;

type
  TFormSupplierDBG = class(TForm)
    BitBtnSupplierDBGEnter: TBitBtn;
    BitBtnSupplierDBGCancel: TBitBtn;
    EditSupplierSearch: TEdit;
    QuerySupplierSearch: TQuery;
    LabelFiltr: TLabel;
    ApplicationEvents: TApplicationEvents;
    SupplierDBG: TDBGrid;
    QuerySupplierSearchid_supplier: TIntegerField;
    QuerySupplierSearchsupplier: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure SupplierDBGDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnSupplierDBGCancelClick(Sender: TObject);
    procedure BitBtnSupplierDBGEnterClick(Sender: TObject);
    procedure EditSupplierSearchChange(Sender: TObject);
    procedure ApplicationEventsMessage(var Msg: tagMSG;
      var Handled: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSupplierDBG: TFormSupplierDBG;

implementation

uses DMUnit, ACC, AddUnit;

{$R *.dfm}

procedure TFormSupplierDBG.FormCreate(Sender: TObject);
begin
  DM.ADOQuery4.Active:=True;
end;

procedure TFormSupplierDBG.SupplierDBGDblClick(Sender: TObject);
begin
  FormAdd.LabelSupplierIDI.Caption:=SupplierDBG.Fields[0].AsString;
  FormAdd.LabelSupplierI.Caption:=SupplierDBG.Fields[1].AsString;
  FormAdd.Enabled:=True;
  FormSupplierDBG.Visible:=False;
  if FormAdd.EditN_Dog.Text='' then FormAdd.BitBtnAdd.Enabled:=False
  else FormAdd.BitBtnAdd.Enabled:=True;
end;

procedure TFormSupplierDBG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormAdd.Enabled:=True;
  FormSupplierDBG.Visible:=False;
  DM.ADOQuery4.Active:=False;
end;

procedure TFormSupplierDBG.BitBtnSupplierDBGCancelClick(Sender: TObject);
begin
  FormAdd.Enabled:=True;
  DM.ADOQuery4.Active:=False;
  FormSupplierDBG.Close;
end;

procedure TFormSupplierDBG.BitBtnSupplierDBGEnterClick(Sender: TObject);
begin
  FormAdd.LabelSupplierIDI.Caption:=SupplierDBG.Fields[0].AsString;
  FormAdd.LabelSupplierI.Caption:=SupplierDBG.Fields[1].AsString;
  FormAdd.Enabled:=True;
  FormSupplierDBG.Visible:=False;
  if FormAdd.EditN_Dog.Text='' then FormAdd.BitBtnAdd.Enabled:=False
  else FormAdd.BitBtnAdd.Enabled:=True;
end;

procedure TFormSupplierDBG.EditSupplierSearchChange(Sender: TObject);
begin
  QuerySupplierSearch.Close;
  QuerySupplierSearch.Params[0].AsString:=EditSupplierSearch.Text;
  DM.DataSource4.DataSet:=QuerySupplierSearch;
  QuerySupplierSearch.Open;
  SupplierDBG.Refresh;
end;

procedure TFormSupplierDBG.ApplicationEventsMessage(var Msg: tagMSG;
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

procedure TFormSupplierDBG.FormShow(Sender: TObject);
begin
  DM.ADOQuery4.Active:=True;
  FormSupplierDBG.EditSupplierSearch.Text:=' ';
  FormSupplierDBG.EditSupplierSearch.Text:='';
end;

procedure TFormSupplierDBG.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
