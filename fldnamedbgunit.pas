unit FldNameDBGUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DB, DBTables,
  AppEvnts;

type
  TFormFldNameDBG = class(TForm)
    FldNameDBG: TDBGrid;
    BitBtnFldNameDBGEnter: TBitBtn;
    BitBtnFldNameDBGCancel: TBitBtn;
    EditFldSearch: TEdit;
    QueryFldSearch: TQuery;
    LabelFiltr: TLabel;
    QueryMaxRegn: TQuery;
    ApplicationEvents: TApplicationEvents;
    QueryFldSearchfldid: TSmallintField;
    QueryFldSearchfldname: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtnFldNameDBGEnterClick(Sender: TObject);
    procedure BitBtnFldNameDBGCancelClick(Sender: TObject);
    procedure EditFldSearchChange(Sender: TObject);
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
  FormFldNameDBG: TFormFldNameDBG;

implementation

uses DMUnit, ACC, AddUnit;

{$R *.dfm}

procedure TFormFldNameDBG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form1.Enabled:=True;
  DM.ADOQuery2.Active:=False;
  FormFldNameDBG.Visible:=False;
//  FormAdd.Close;
end;

procedure TFormFldNameDBG.FormCreate(Sender: TObject);
begin
  DM.ADOQuery2.Active:=True;
end;

procedure TFormFldNameDBG.BitBtnFldNameDBGEnterClick(Sender: TObject);
var
strmaxr, fldstr: String;
int: Integer;
begin
{//----------------------------------------------------------------//
  FormFldNameDBG.EditFldSearch.Text:='';
  FormAdd.LabelFLDNAMEI.Caption:='';
  FormAdd.LabelFLDIDI.Caption:='';
  FormAdd.EditReg_N.Text:='';
  FormAdd.EditN_Dog.Text:='';
  FormAdd.LabelSupplierIDI.Caption:='';
  FormAdd.LabelSupplierI.Caption:='';
  FormAdd.MaskEditData_Reg.Text:='  .  .    ';
  FormAdd.MaskEditData_Dog.Text:='  .  .    ';
  FormAdd.MaskEditData_Post.Text:='  .  .    ';
  FormAdd.EditSumDog.Text:='';
  //-//
  FormAdd.LabelNomenclID1.Caption:='';
  FormAdd.LabelNomenclName1.Caption:='';
  FormAdd.LabelCOSGUID1.Caption:='';
  FormAdd.LabelCOSGUName1.Caption:='';
  FormAdd.EditSumDog1.Text:='';
  //--//
  FormAdd.LabelNomenclID2.Caption:='';
  FormAdd.LabelNomenclName2.Caption:='';
  FormAdd.LabelCOSGUID2.Caption:='';
  FormAdd.LabelCOSGUName2.Caption:='';
  FormAdd.EditSumDog2.Text:='';
  //---//
  FormAdd.LabelNomenclID3.Caption:='';
  FormAdd.LabelNomenclName3.Caption:='';
  FormAdd.LabelCOSGUID3.Caption:='';
  FormAdd.LabelCOSGUName3.Caption:='';
  FormAdd.EditSumDog3.Text:='';
  //----//
  FormAdd.LabelNomenclID4.Caption:='';
  FormAdd.LabelNomenclName4.Caption:='';
  FormAdd.LabelCOSGUID4.Caption:='';
  FormAdd.LabelCOSGUName4.Caption:='';
  FormAdd.EditSumDog4.Text:='';
  //-----//
  FormAdd.LabelNomenclID5.Caption:='';
  FormAdd.LabelNomenclName5.Caption:='';
  FormAdd.LabelCOSGUID5.Caption:='';
  FormAdd.LabelCOSGUName5.Caption:='';
  FormAdd.EditSumDog5.Text:='';
//----------------------------------------------------------------//
  FormAdd.LabelFLDIDI.Caption:=FldNameDBG.Fields[0].AsString;
  FormAdd.LabelFLDNAMEI.Caption:=FldNameDBG.Fields[1].AsString;
  fldstr:=FldNameDBG.Fields[0].AsString;
  FormFldNameDBG.QueryMaxRegn.Close;
  FormFldNameDBG.QueryMaxRegn.SQL.Clear;
  FormFldNameDBG.QueryMaxRegn.SQL.Add('SELECT MAX(REGN) FROM ReestrDog');
  FormFldNameDBG.QueryMaxRegn.SQL.Add('WHERE (FLDID = '+fldstr+')');
  FormFldNameDBG.QueryMaxRegn.ExecSQL;
  FormFldNameDBG.QueryMaxRegn.Open;
  int:=0;
  int:=FormFldNameDBG.QueryMaxRegn.Fields.Fields[0].AsInteger;
  int:=int+1;
  strmaxr:=IntToStr(int);
  if (strmaxr='1') then begin
   if (StrToInt(fldstr)<10) then FormAdd.EditRegN.Text:='90'+fldstr+'000001'
     else
     FormAdd.EditRegN.Text:='9'+fldstr+'000001';
   end
  else
  FormAdd.EditRegN.Text:=strmaxr;
  FormAdd.PageControl.TabIndex:=0;
  FormAdd.Enabled:=True;
//  FormFldNameDBG.Visible:=False;
}end;

procedure TFormFldNameDBG.BitBtnFldNameDBGCancelClick(Sender: TObject);
begin
  Form1.Enabled:=True;
  DM.ADOQuery2.Active:=False;
  FormFldNameDBG.Close;
  FormAdd.Close;
end;

procedure TFormFldNameDBG.EditFldSearchChange(Sender: TObject);
begin
  QueryFldSearch.Close;
  QueryFldSearch.Params[0].AsString:=EditFldSearch.Text;
  DM.DataSource2.DataSet:=QueryFldSearch;
  QueryFldSearch.Open;
  FldNameDBG.Refresh;
end;

procedure TFormFldNameDBG.ApplicationEventsMessage(var Msg: tagMSG;
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

procedure TFormFldNameDBG.FormShow(Sender: TObject);
begin
  DM.ADOQuery2.Active:=True;
  FormFldNameDBG.EditFldSearch.Text:=' ';
  FormFldNameDBG.EditFldSearch.Text:='';
end;

procedure TFormFldNameDBG.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
