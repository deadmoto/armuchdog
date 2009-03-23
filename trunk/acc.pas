unit ACC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, DB, DBTables, Grids, DBGrids, ComCtrls, StdCtrls, Buttons,
  AppEvnts, FR_Class, FR_DSet, FR_DBSet, ShellAPI, ExtCtrls;
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
    BitBtnAdd: TBitBtn;
    BitBtnChange: TBitBtn;
    BitBtnDel: TBitBtn;
    BitBtnFilter: TBitBtn;
    BitBtnExit: TBitBtn;
    QueryDelete: TQuery;
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
    procedure BitBtnExitClick(Sender: TObject);
    procedure ReestrDBGCellClick(Column: TColumn);
    procedure ReestrDBGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N21Click(Sender: TObject);
    procedure BitBtnAddClick(Sender: TObject);
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
    procedure BitBtnDelClick(Sender: TObject);
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
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
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
  contracts,
  cosgufm,
  providerfm,
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

procedure TForm1.BitBtnAddClick(Sender: TObject);
begin
//----------------------------------------------------------------//
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
  FormAdd.PageControl.TabIndex:=0;
  FormAdd.BitBtnChange.Visible:=False;
  FormAdd.BitBtnAdd.Visible:=True;
  DM.ADOQuery2.Active:=True;
  FormAdd.Visible:=True;
  FormAdd.Enabled:=False;
  Form1.Enabled:=False;
  FormFldNameDBG.Visible:=True;
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
  cosgu.showmodal;
//  FormCOSGUDBGEdit.Visible:=True;
//  Form1.Enabled:=False;
end;

procedure TForm1.N17Click(Sender: TObject);
begin
  FormName_DogDBGEdit.Visible:=True;
  Form1.Enabled:=False;
  FormName_DogDBGEdit.EditName_dog.Text:='';
  FormName_DogDBGEdit.RadioButton3.Checked:=True;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
  provider:=tprovider.create(owner);
  provider.showmodal;
end;

procedure TForm1.N15Click(Sender: TObject);
begin
  FormFldNameDBGEdit.Visible:=True;
  Form1.Enabled:=False;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
  report_okved.showmodal;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
  ShowMessage('Пока не работает, находится в стадии разработки!!!'+#13);
end;

procedure TForm1.BitBtnChangeClick(Sender: TObject);
var
strk, str, str1, strfldid, strid_supplier,
strid_nomencl1, strid_nomencl2, strid_nomencl3, strid_nomencl4, strid_nomencl5,
strcosgu1, strcosgu2, strcosgu3, strcosgu4, strcosgu5:string;
begin
  FormAdd.Caption:='Изменение договора';
  FormAdd.BitBtnAdd.Visible:=False;
  FormAdd.BitBtnChange.Visible:=True;
//----------------------------------------------------------------//
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
  FormAdd.PageControl.TabIndex:=0;

  strk:=Form1.LabelStrK.Caption;
//----------------------------------------------------------------//
  begin
    str:=ReestrDBG.Fields[0].AsString;
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select * from ReestrDog');
    DM.Query.SQL.Add('where ReestrDog.regn='+str);
    DM.Query.Open;
    FormAdd.EditRegN.Text:=DM.Query.FieldValues['regn'];
    str1:=DM.Query.FieldValues['fldid'];
    FormAdd.LabelFLDIDI.Caption:=DM.Query.FieldValues['fldid'];
    strfldid:=DM.Query.FieldValues['fldid'];
    if DM.Query.FieldValues['reg_n']=Null then FormAdd.EditReg_N.Text:=''
    else FormAdd.EditReg_N.Text:=DM.Query.FieldValues['reg_n'];
    formadd.editreg_n.enabled:=dm.query.fieldvalues['STATUS']=0;
    if DM.Query.FieldValues['n_dog']=Null then FormAdd.EditN_Dog.Text:=''
    else FormAdd.EditN_Dog.Text:=DM.Query.FieldValues['n_dog'];
    if DM.Query.FieldValues['id_supplier']=Null then begin
      FormAdd.LabelSupplierIDI.Caption:='';
      strid_supplier:='';
    end
    else begin
      FormAdd.LabelSupplierIDI.Caption:=DM.Query.FieldValues['id_supplier'];
      strid_supplier:=DM.Query.FieldValues['id_supplier'];
    end;
    if DM.Query.FieldValues['data_reg']=Null then FormAdd.MaskEditData_Reg.Text:='  .  .    '
    else FormAdd.MaskEditData_Reg.Text:=DM.Query.FieldValues['data_reg'];
    if DM.Query.FieldValues['data_dog']=Null then FormAdd.MaskEditData_Dog.Text:='  .  .    '
    else FormAdd.MaskEditData_Dog.Text:=DM.Query.FieldValues['data_dog'];
    if DM.Query.FieldValues['data_post']=Null then FormAdd.MaskEditData_Post.Text:='  .  .    '
    else FormAdd.MaskEditData_Post.Text:=DM.Query.FieldValues['data_post'];
    if DM.Query.FieldValues['sum_dog_all']=Null then FormAdd.EditSumDog.Text:=''
    else FormAdd.EditSumDog.Text:=DM.Query.FieldValues['sum_dog_all'];
    //-//
    if DM.Query.FieldValues['id_nomencl1']=Null then begin
      FormAdd.LabelNomenclID1.Caption:='';
      strid_nomencl1:='';
    end
    else begin FormAdd.LabelNomenclID1.Caption:=DM.Query.FieldValues['id_nomencl1'];
      strid_nomencl1:=DM.Query.FieldValues['id_nomencl1'];
    end;
    if DM.Query.FieldValues['cosgu1']=Null then begin FormAdd.LabelCOSGUID1.Caption:='';
      strcosgu1:='';
    end
    else begin FormAdd.LabelCOSGUID1.Caption:=DM.Query.FieldValues['cosgu1'];
      strcosgu1:=DM.Query.FieldValues['cosgu1']
    end;
    if DM.Query.FieldValues['sum_dog1']=Null then FormAdd.EditSumDog1.Text:=''
    else FormAdd.EditSumDog1.Text:=DM.Query.FieldValues['sum_dog1'];
    //--//
    if DM.Query.FieldValues['id_nomencl2']=Null then begin
      FormAdd.LabelNomenclID2.Caption:='';
      strid_nomencl2:='';
    end
    else begin FormAdd.LabelNomenclID2.Caption:=DM.Query.FieldValues['id_nomencl2'];
      strid_nomencl2:=DM.Query.FieldValues['id_nomencl2'];
    end;
    if DM.Query.FieldValues['cosgu2']=Null then begin FormAdd.LabelCOSGUID2.Caption:='';
      strcosgu2:='';
    end
    else begin FormAdd.LabelCOSGUID2.Caption:=DM.Query.FieldValues['cosgu2'];
      strcosgu2:=DM.Query.FieldValues['cosgu2']
    end;
    if DM.Query.FieldValues['sum_dog2']=Null then FormAdd.EditSumDog2.Text:=''
    else FormAdd.EditSumDog2.Text:=DM.Query.FieldValues['sum_dog2'];
    //---//
    if DM.Query.FieldValues['id_nomencl3']=Null then begin
      FormAdd.LabelNomenclID3.Caption:='';
      strid_nomencl3:='';
    end
    else begin FormAdd.LabelNomenclID3.Caption:=DM.Query.FieldValues['id_nomencl3'];
      strid_nomencl3:=DM.Query.FieldValues['id_nomencl3'];
    end;
    if DM.Query.FieldValues['cosgu3']=Null then begin FormAdd.LabelCOSGUID3.Caption:='';
      strcosgu3:='';
    end
    else begin FormAdd.LabelCOSGUID3.Caption:=DM.Query.FieldValues['cosgu3'];
      strcosgu3:=DM.Query.FieldValues['cosgu3']
    end;
    if DM.Query.FieldValues['sum_dog3']=Null then FormAdd.EditSumDog3.Text:=''
    else FormAdd.EditSumDog3.Text:=DM.Query.FieldValues['sum_dog3'];
    //----//
    if DM.Query.FieldValues['id_nomencl4']=Null then begin
      FormAdd.LabelNomenclID4.Caption:='';
      strid_nomencl4:='';
    end
    else begin FormAdd.LabelNomenclID4.Caption:=DM.Query.FieldValues['id_nomencl4'];
      strid_nomencl4:=DM.Query.FieldValues['id_nomencl4'];
    end;
    if DM.Query.FieldValues['cosgu4']=Null then begin FormAdd.LabelCOSGUID4.Caption:='';
      strcosgu4:='';
    end
    else begin FormAdd.LabelCOSGUID4.Caption:=DM.Query.FieldValues['cosgu4'];
      strcosgu4:=DM.Query.FieldValues['cosgu4']
    end;
    if DM.Query.FieldValues['sum_dog4']=Null then FormAdd.EditSumDog4.Text:=''
    else FormAdd.EditSumDog4.Text:=DM.Query.FieldValues['sum_dog4'];
    //-----//
    if DM.Query.FieldValues['id_nomencl5']=Null then begin
      FormAdd.LabelNomenclID5.Caption:='';
      strid_nomencl5:='';
    end
    else begin FormAdd.LabelNomenclID5.Caption:=DM.Query.FieldValues['id_nomencl5'];
      strid_nomencl5:=DM.Query.FieldValues['id_nomencl5'];
    end;
    if DM.Query.FieldValues['cosgu5']=Null then begin FormAdd.LabelCOSGUID5.Caption:='';
      strcosgu5:='';
    end
    else begin FormAdd.LabelCOSGUID5.Caption:=DM.Query.FieldValues['cosgu5'];
      strcosgu5:=DM.Query.FieldValues['cosgu5']
    end;
    if DM.Query.FieldValues['sum_dog5']=Null then FormAdd.EditSumDog5.Text:=''
    else FormAdd.EditSumDog5.Text:=DM.Query.FieldValues['sum_dog5'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select FLDNAME from RegionIDDog');
    DM.Query.SQL.Add('where fldid='+strfldid);
    DM.Query.Open;
    if DM.Query.FieldValues['fldname']=Null then FormAdd.LabelFLDNAMEI.Caption:=''
    else FormAdd.LabelFLDNAMEI.Caption:=DM.Query.FieldValues['fldname'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select supplier from SupplierDog');
    DM.Query.SQL.Add('where id_supplier='+strid_supplier);
    DM.Query.Open;
    if DM.Query.FieldValues['supplier']=Null then FormAdd.LabelSupplierI.Caption:=''
    else FormAdd.LabelSupplierI.Caption:=DM.Query.FieldValues['supplier'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name from NomenclDog');
    DM.Query.SQL.Add('where id_nomencl='+strk+strid_nomencl1+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name']=Null then FormAdd.LabelNomenclName1.Caption:=''
    else FormAdd.LabelNomenclName1.Caption:=DM.Query.FieldValues['name'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name from NomenclDog');
    DM.Query.SQL.Add('where id_nomencl='+strk+strid_nomencl2+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name']=Null then FormAdd.LabelNomenclName2.Caption:=''
    else FormAdd.LabelNomenclName2.Caption:=DM.Query.FieldValues['name'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name from NomenclDog');
    DM.Query.SQL.Add('where id_nomencl='+strk+strid_nomencl3+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name']=Null then FormAdd.LabelNomenclName3.Caption:=''
    else FormAdd.LabelNomenclName3.Caption:=DM.Query.FieldValues['name'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name from NomenclDog');
    DM.Query.SQL.Add('where id_nomencl='+strk+strid_nomencl4+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name']=Null then FormAdd.LabelNomenclName4.Caption:=''
    else FormAdd.LabelNomenclName4.Caption:=DM.Query.FieldValues['name'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name from NomenclDog');
    DM.Query.SQL.Add('where id_nomencl='+strk+strid_nomencl5+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name']=Null then FormAdd.LabelNomenclName5.Caption:=''
    else FormAdd.LabelNomenclName5.Caption:=DM.Query.FieldValues['name'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name_artic from ArticleDog');
    DM.Query.SQL.Add('where cosgu='+strk+strcosgu1+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name_artic']=Null then FormAdd.LabelCOSGUName1.Caption:=''
    else FormAdd.LabelCOSGUName1.Caption:=DM.Query.FieldValues['name_artic'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name_artic from ArticleDog');
    DM.Query.SQL.Add('where cosgu='+strk+strcosgu2+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name_artic']=Null then FormAdd.LabelCOSGUName2.Caption:=''
    else FormAdd.LabelCOSGUName2.Caption:=DM.Query.FieldValues['name_artic'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name_artic from ArticleDog');
    DM.Query.SQL.Add('where cosgu='+strk+strcosgu3+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name_artic']=Null then FormAdd.LabelCOSGUName3.Caption:=''
    else FormAdd.LabelCOSGUName3.Caption:=DM.Query.FieldValues['name_artic'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name_artic from ArticleDog');
    DM.Query.SQL.Add('where cosgu='+strk+strcosgu4+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name_artic']=Null then FormAdd.LabelCOSGUName4.Caption:=''
    else FormAdd.LabelCOSGUName4.Caption:=DM.Query.FieldValues['name_artic'];
  end;
//----------------------------------------------------------------//
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('select name_artic from ArticleDog');
    DM.Query.SQL.Add('where cosgu='+strk+strcosgu5+strk);
    DM.Query.Open;
    if DM.Query.FieldValues['name_artic']=Null then FormAdd.LabelCOSGUName5.Caption:=''
    else FormAdd.LabelCOSGUName5.Caption:=DM.Query.FieldValues['name_artic'];
  end;
//----------------------------------------------------------------//
{*******************************************************************************
*******************************************************************************}
//  formadd.contract:=tcontract.create(strtoint(ReestrDBG.Fields[0].AsString));
  formadd.editregn.text:=inttostr(formadd.contract.regn);

  FormAdd.Visible:=True;
  Form1.Enabled:=False;
end;

procedure TForm1.BitBtnDelClick(Sender: TObject);
var
str, str1: String;
begin
  str:=Form1.ReestrDBG.Fields[0].AsString;
  str1:=Form1.ReestrDBG.Fields[1].AsString;
  if MessageDlg('№ ' + str + #13#10 +
                'Вы уверенны, что хотите' + #13#10 +
                'удалить договор № ' + str1,
                mtWarning, [mbYes, mbNo], 0) = mrYes then
  begin
    QueryDelete.Close;
    QueryDelete.SQL.Clear;
    QueryDelete.SQL.Add('delete from reestrdog where regn = ' + str);
    QueryDelete.ExecSQL;
    dm.ReestrTb.Active:=true;
    DM.ReestrTb.Refresh;
    DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
    DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
  end;
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

procedure TForm1.Timer1Timer(Sender: TObject);
var  
  i: Integer; 
begin 
  Application.Title := CapForm1;
  Form1.Caption     := CapForm1;
  for i := 1 to (Length(CapForm1) - 1) do
    CapForm1[i] := Application.Title[i + 1];
  CapForm1[Length(CapForm1)] := Application.Title[1];
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

end.
