unit AddUnit;

interface

uses
  contracts,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ExtCtrls, DBCtrls, Buttons, FR_Ctrls, StrUtils,
  ComCtrls, DB;

type
  TFormAdd = class(TForm)
    PanelAdd: TPanel;
    BitBtnAdd: TBitBtn;
    BitBtnCancel: TBitBtn;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    LabelReg_N: TLabel;
    LabelData_Reg: TLabel;
    LabelData_Post: TLabel;
    LabelFLDNAME: TLabel;
    LabelN_Dog: TLabel;
    LabelData_Dog: TLabel;
    Label10: TLabel;
    LabelSupplier: TLabel;
    LabelSupplierI: TLabel;
    LabelRegN: TLabel;
    EditReg_N: TEdit;
    MaskEditData_Reg: TMaskEdit;
    MaskEditData_Post: TMaskEdit;
    EditN_Dog: TEdit;
    MaskEditData_Dog: TMaskEdit;
    Edit4: TEdit;
    BitBtnSupplier: TBitBtn;
    EditRegN: TEdit;
    LabelFLDNAMEI: TLabel;
    LabelNomencl1: TLabel;
    LabelNomenclID1: TLabel;
    BitBtnNomencl1: TBitBtn;
    EditSumDog1: TEdit;
    LabelSumDog1: TLabel;
    LabelCOSGU1: TLabel;
    LabelCOSGUID1: TLabel;
    BitBtnCOSGU1: TBitBtn;
    LabelFLDIDI: TLabel;
    LabelSupplierIDI: TLabel;
    LabelNomenclName1: TLabel;
    LabelCOSGUName1: TLabel;
    LabelNomencl2: TLabel;
    LabelNomenclID2: TLabel;
    LabelSumDog2: TLabel;
    LabelCOSGU2: TLabel;
    LabelCOSGUID2: TLabel;
    LabelNomenclName2: TLabel;
    LabelCOSGUName2: TLabel;
    BitBtnNomencl2: TBitBtn;
    EditSumDog2: TEdit;
    BitBtnCOSGU2: TBitBtn;
    LabelNomencl3: TLabel;
    LabelNomenclID3: TLabel;
    LabelSumDog3: TLabel;
    LabelCOSGU3: TLabel;
    LabelCOSGUID3: TLabel;
    LabelNomenclName3: TLabel;
    LabelCOSGUName3: TLabel;
    BitBtnNomencl3: TBitBtn;
    EditSumDog3: TEdit;
    BitBtnCOSGU3: TBitBtn;
    LabelNomencl4: TLabel;
    LabelNomenclID4: TLabel;
    LabelSumDog4: TLabel;
    LabelCOSGU4: TLabel;
    LabelCOSGUID4: TLabel;
    LabelNomenclName4: TLabel;
    LabelCOSGUName4: TLabel;
    BitBtnNomencl4: TBitBtn;
    EditSumDog4: TEdit;
    BitBtnCOSGU4: TBitBtn;
    LabelNomencl5: TLabel;
    LabelNomenclID5: TLabel;
    LabelSumDog5: TLabel;
    LabelCOSGU5: TLabel;
    LabelCOSGUID5: TLabel;
    LabelNomenclName5: TLabel;
    LabelCOSGUName5: TLabel;
    BitBtnNomencl5: TBitBtn;
    EditSumDog5: TEdit;
    BitBtnCOSGU5: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LabelSumDog: TLabel;
    EditSumDog: TEdit;
    BitBtnChange: TBitBtn;
    Zerro1: TButton;
    Zerro2: TButton;
    Zerro3: TButton;
    Label6: TLabel;
    MaskEditData_Srok: TMaskEdit;
    Zerro4: TButton;
    Label7: TLabel;
    balancebox1: TGroupBox;
    balancelab1: TLabel;
    balancebox3: TGroupBox;
    balancelab3: TLabel;
    balancebox4: TGroupBox;
    balancelab4: TLabel;
    balancebox2: TGroupBox;
    balancelab2: TLabel;
    balancebox5: TGroupBox;
    balancelab5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure BitBtnSupplierClick(Sender: TObject);
    procedure BitBtnAddClick(Sender: TObject);
    procedure BitBtnCOSGUClick(Sender: TObject);
    procedure EditN_dogExit(Sender: TObject);
    procedure BitBtnCancelClick(Sender: TObject);
    procedure BitBtnNomencl1Click(Sender: TObject);
    procedure EditSumDog1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EditSumDog2Exit(Sender: TObject);
    procedure EditSumDog3Exit(Sender: TObject);
    procedure EditSumDog4Exit(Sender: TObject);
    procedure EditSumDog5Exit(Sender: TObject);
    procedure BitBtnSumDogAllClick(Sender: TObject);
    procedure BitBtnChangeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Zerro1Click(Sender: TObject);
    procedure Zerro2Click(Sender: TObject);
    procedure Zerro4Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure balancelab1Click(Sender: TObject);
    procedure PageControlChange(Sender: TObject);
    procedure EditSumDog1Change(Sender: TObject);
    procedure balancelab2Click(Sender: TObject);
    procedure balancelab3Click(Sender: TObject);
    procedure balancelab4Click(Sender: TObject);
    procedure balancelab5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    contract:tcontract;
    procedure edit(regn:integer);
  end;

var
  FormAdd: TFormAdd;

implementation

uses
  defs,
  balance,
  ACC, DMUnit, ADODB, FldNameDBGUnit, Name_DogDBGUnit, Math,
SupplierDBGUnit, COSGUDBGUnit, DBTables,
  sqltext;

{$R *.dfm}

procedure TFormAdd.edit(regn:integer);
begin
  TFormAdd.Create(self.owner);

end;

procedure TFormAdd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Enabled:=True;
  FormAdd.Visible:=False;
end;

procedure TFormAdd.DBComboBox1Click(Sender: TObject);
begin
  DM.ADOQuery2.Active:=True;
end;

procedure TFormAdd.DBComboBox1Exit(Sender: TObject);
begin
  FormAdd.Enabled:=True;
  DM.ADOQuery2.Active:=False;
end;

procedure TFormAdd.BitBtnSupplierClick(Sender: TObject);
begin
  FormSupplierDBG.Visible:=True;
  DM.ADOQuery4.Active:=True;
  FormAdd.Enabled:=False;
  FormSupplierDBG.EditSupplierSearch.Text:='';
end;

procedure TFormAdd.BitBtnAddClick(Sender: TObject);
begin
  dm.reestrtb.Active:=true;
  DM.ReestrTb.Insert;

  DM.ReestrTb.FieldByName('regn').AsInteger:=StrToInt(EditRegN.Text);

  if (EditReg_N.Text='') then
  DM.ReestrTb.FieldByName('reg_n').AsString:='' else
  DM.ReestrTb.FieldByName('reg_n').AsInteger:=StrToInt(EditReg_N.Text);

  if (EditN_dog.Text='') then begin
  ShowMessage('Номер договора обязательно должен быть введён!!!'+#13);
  Exit; End
  else
  DM.ReestrTb.FieldByName('N_dog').AsString:=EditN_dog.Text;

  if (LabelSupplierIDI.Caption='') then
  DM.ReestrTb.FieldByName('ID_Supplier').AsString:='' else
  DM.ReestrTb.FieldByName('ID_Supplier').AsInteger:=StrToInt(LabelSupplierIDI.Caption);

  if (MaskEditData_reg.Text='  .  .    ') then
  DM.ReestrTb.FieldByName('data_reg').AsString:='' else
  DM.ReestrTb.FieldByName('data_reg').AsDateTime:=StrToDate(MaskEditData_reg.Text);

  if (MaskEditData_dog.Text='  .  .    ') then
  DM.ReestrTb.FieldByName('data_dog').AsString:='' else
  DM.ReestrTb.FieldByName('data_dog').AsDateTime:=StrToDate(MaskEditData_dog.Text);

  if (MaskEditData_Post.Text='  .  .    ') then
  DM.ReestrTb.FieldByName('data_post').AsString:='' else
  DM.ReestrTb.FieldByName('data_post').AsDateTime:=StrToDate(MaskEditData_post.Text);

  if (MaskEditData_Srok.Text='  .  .    ') then
  DM.ReestrTb.FieldByName('data_srok').AsString:='' else
  DM.ReestrTb.FieldByName('data_srok').AsDateTime:=StrToDate(MaskEditData_srok.Text);

//
  DM.ReestrTb.FieldByName('STATUS').AsInteger:=0;
//

  if (LabelFLDIDI.Caption='') then
  DM.ReestrTb.FieldByName('fldid').AsString:='' else
  DM.ReestrTb.FieldByName('fldid').AsFloat:=StrToFloat(LabelFLDIDI.Caption);
//-------------------------------------------------------------------------//
  if (LabelNomenclID1.Caption='') then
  DM.ReestrTb.FieldByName('id_nomencl1').AsString:=''  else
  DM.ReestrTb.FieldByName('id_nomencl1').AsString:=LabelNomenclID1.Caption;

  if (LabelCOSGUID1.Caption='') then
  DM.ReestrTb.FieldByName('cosgu1').AsString:='' else
  DM.ReestrTb.FieldByName('cosgu1').AsFloat:=StrToFloat(LabelCOSGUID1.Caption);

  if (EditSumDog1.Text='') then
  DM.ReestrTb.FieldByName('sum_dog1').AsString:='' else
  DM.ReestrTb.FieldByName('sum_dog1').AsFloat:=StrToFloat(EditSumDog1.Text);
//-------------------------------------------------------------------------//
  if (LabelNomenclID2.Caption='') then
  DM.ReestrTb.FieldByName('id_nomencl2').AsString:='' else
  DM.ReestrTb.FieldByName('id_nomencl2').AsString:=LabelNomenclID2.Caption;

  if (LabelCOSGUID2.Caption='') then
  DM.ReestrTb.FieldByName('cosgu2').AsString:='' else
  DM.ReestrTb.FieldByName('cosgu2').AsFloat:=StrToFloat(LabelCOSGUID2.Caption);

  if (EditSumDog2.Text='') then
  DM.ReestrTb.FieldByName('sum_dog2').AsString:='' else
  DM.ReestrTb.FieldByName('sum_dog2').AsFloat:=StrToFloat(EditSumDog2.Text);
//-------------------------------------------------------------------------//
  if (LabelNomenclID3.Caption='') then
  DM.ReestrTb.FieldByName('id_nomencl3').AsString:='' else
  DM.ReestrTb.FieldByName('id_nomencl3').AsString:=LabelNomenclID3.Caption;

  if (LabelCOSGUID3.Caption='') then
  DM.ReestrTb.FieldByName('cosgu3').AsString:='' else
  DM.ReestrTb.FieldByName('cosgu3').AsFloat:=StrToFloat(LabelCOSGUID3.Caption);

  if (EditSumDog3.Text='') then
  DM.ReestrTb.FieldByName('sum_dog3').AsString:='' else
  DM.ReestrTb.FieldByName('sum_dog3').AsFloat:=StrToFloat(EditSumDog3.Text);
//-------------------------------------------------------------------------//
  if (LabelNomenclID4.Caption='') then
  DM.ReestrTb.FieldByName('id_nomencl4').AsString:='' else
  DM.ReestrTb.FieldByName('id_nomencl4').AsString:=LabelNomenclID4.Caption;

  if (LabelCOSGUID4.Caption='') then
  DM.ReestrTb.FieldByName('cosgu4').AsString:='' else
  DM.ReestrTb.FieldByName('cosgu4').AsFloat:=StrToFloat(LabelCOSGUID4.Caption);

  if (EditSumDog4.Text='') then
  DM.ReestrTb.FieldByName('sum_dog4').AsString:='' else
  DM.ReestrTb.FieldByName('sum_dog4').AsFloat:=StrToFloat(EditSumDog4.Text);
//-------------------------------------------------------------------------//
  if (LabelNomenclID5.Caption='') then
  DM.ReestrTb.FieldByName('id_nomencl5').AsString:='' else
  DM.ReestrTb.FieldByName('id_nomencl5').AsString:=LabelNomenclID5.Caption;

  if (LabelCOSGUID5.Caption='') then
  DM.ReestrTb.FieldByName('cosgu5').AsString:='' else
  DM.ReestrTb.FieldByName('cosgu5').AsFloat:=StrToFloat(LabelCOSGUID5.Caption);

  DM.ReestrTb.FieldByName('INTERNAL').value:=0;
  DM.ReestrTb.FieldByName('ID_NOMENCL').value:='';
  DM.ReestrTb.FieldByName('SUM_DOG').value:=0;
  DM.ReestrTb.FieldByName('COSGU').value:=0;

  if (EditSumDog5.Text='') then
  DM.ReestrTb.FieldByName('sum_dog5').AsString:='' else
  DM.ReestrTb.FieldByName('sum_dog5').AsFloat:=StrToFloat(EditSumDog5.Text);
//-------------------------------------------------------------------------//
  if (EditSumDog.Text='') then
  DM.ReestrTb.FieldByName('sum_dog_all').AsString:='' else
  DM.ReestrTb.FieldByName('sum_dog_all').AsFloat:=StrToFloat(EditSumDog.Text);

  Form1.Enabled:=True;
  FormAdd.Visible:=False;

  DM.ReestrTb.Post;
  DM.ReestrTb.Active;
  DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
  DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
end;

procedure TFormAdd.BitBtnCOSGUClick(Sender: TObject);
begin
  FormCOSGUDBG.Visible:=True;
  DM.ADOQuery5.Active:=True;
  FormAdd.Enabled:=False;
end;

procedure TFormAdd.EditN_dogExit(Sender: TObject);
begin
  if (EditN_dog.Text='') then begin
  ShowMessage('Номер договора обязательно должен быть введён!!!'+#13);
  end
  else
  if LabelSupplierIDI.Caption='' then FormAdd.BitBtnAdd.Enabled:=False
  else FormAdd.BitBtnAdd.Enabled:=True;
end;

procedure TFormAdd.BitBtnCancelClick(Sender: TObject);
begin
  Form1.Enabled:=True;
  FormAdd.Visible:=False;
end;

procedure TFormAdd.BitBtnNomencl1Click(Sender: TObject);
begin
  FormName_DogDBG.Visible:=True;
  DM.ADOQuery3.Active:=True;
  FormAdd.Enabled:=False;
  FormName_DogDBG.EditName_dog.Text:='';
  FormName_DogDBG.RadioButton3.Checked:=True;
end;

procedure TFormAdd.EditSumDog1Exit(Sender: TObject);
var Str1, Str2, Str3, StrRes: String;
sumall, sum1, sum2, sum3, sum4, sum5: real;
begin
Str1:=EditSumDog1.Text;
Str2:='.';
Str3:=',';
StrRes:=AnsiReplaceStr(Str1, Str2, Str3);
EditSumdog1.Text:=StrRes;
//-------------------------------------------------------------------//
  if (EditSumDog1.Text='') then sum1:=StrToFloat('0,00') else
  sum1:=StrToFloat(EditSumDog1.Text);
  if (EditSumDog2.Text='') then sum2:=StrToFloat('0,00') else
  sum2:=StrToFloat(EditSumDog2.Text);
  if (EditSumDog3.Text='') then sum3:=StrToFloat('0,00') else
  sum3:=StrToFloat(EditSumDog3.Text);
  if (EditSumDog4.Text='') then sum4:=StrToFloat('0,00') else
  sum4:=StrToFloat(EditSumDog4.Text);
  if (EditSumDog5.Text='') then sum5:=StrToFloat('0,00') else
  sum5:=StrToFloat(EditSumDog5.Text);
  sumall:=sum1+sum2+sum3+sum4+sum5;
  EditSumDog.Text:=FloatToStr(sumall);
//-------------------------------------------------------------------//
end;

procedure TFormAdd.FormCreate(Sender: TObject);
begin
  PageControl.TabIndex:=0;
end;

procedure TFormAdd.EditSumDog2Exit(Sender: TObject);
var Str1, Str2, Str3, StrRes: String;
sumall, sum1, sum2, sum3, sum4, sum5: real;
begin
Str1:=EditSumDog2.Text;
Str2:='.';
Str3:=',';
StrRes:=AnsiReplaceStr(Str1, Str2, Str3);
EditSumdog2.Text:=StrRes;
//-------------------------------------------------------------------//
  if (EditSumDog1.Text='') then sum1:=StrToFloat('0,00') else
  sum1:=StrToFloat(EditSumDog1.Text);
  if (EditSumDog2.Text='') then sum2:=StrToFloat('0,00') else
  sum2:=StrToFloat(EditSumDog2.Text);
  if (EditSumDog3.Text='') then sum3:=StrToFloat('0,00') else
  sum3:=StrToFloat(EditSumDog3.Text);
  if (EditSumDog4.Text='') then sum4:=StrToFloat('0,00') else
  sum4:=StrToFloat(EditSumDog4.Text);
  if (EditSumDog5.Text='') then sum5:=StrToFloat('0,00') else
  sum5:=StrToFloat(EditSumDog5.Text);
  sumall:=sum1+sum2+sum3+sum4+sum5;
  EditSumDog.Text:=FloatToStr(sumall);
//-------------------------------------------------------------------//
end;

procedure TFormAdd.EditSumDog3Exit(Sender: TObject);
var Str1, Str2, Str3, StrRes: String;
sumall, sum1, sum2, sum3, sum4, sum5: real;
begin
Str1:=EditSumDog3.Text;
Str2:='.';
Str3:=',';
StrRes:=AnsiReplaceStr(Str1, Str2, Str3);
EditSumdog3.Text:=StrRes;
//-------------------------------------------------------------------//
  if (EditSumDog1.Text='') then sum1:=StrToFloat('0,00') else
  sum1:=StrToFloat(EditSumDog1.Text);
  if (EditSumDog2.Text='') then sum2:=StrToFloat('0,00') else
  sum2:=StrToFloat(EditSumDog2.Text);
  if (EditSumDog3.Text='') then sum3:=StrToFloat('0,00') else
  sum3:=StrToFloat(EditSumDog3.Text);
  if (EditSumDog4.Text='') then sum4:=StrToFloat('0,00') else
  sum4:=StrToFloat(EditSumDog4.Text);
  if (EditSumDog5.Text='') then sum5:=StrToFloat('0,00') else
  sum5:=StrToFloat(EditSumDog5.Text);
  sumall:=sum1+sum2+sum3+sum4+sum5;
  EditSumDog.Text:=FloatToStr(sumall);
//-------------------------------------------------------------------//
end;

procedure TFormAdd.EditSumDog4Exit(Sender: TObject);
var Str1, Str2, Str3, StrRes: String;
sumall, sum1, sum2, sum3, sum4, sum5: real;
begin
Str1:=EditSumDog4.Text;
Str2:='.';
Str3:=',';
StrRes:=AnsiReplaceStr(Str1, Str2, Str3);
EditSumdog4.Text:=StrRes;
//-------------------------------------------------------------------//
  if (EditSumDog1.Text='') then sum1:=StrToFloat('0,00') else
  sum1:=StrToFloat(EditSumDog1.Text);
  if (EditSumDog2.Text='') then sum2:=StrToFloat('0,00') else
  sum2:=StrToFloat(EditSumDog2.Text);
  if (EditSumDog3.Text='') then sum3:=StrToFloat('0,00') else
  sum3:=StrToFloat(EditSumDog3.Text);
  if (EditSumDog4.Text='') then sum4:=StrToFloat('0,00') else
  sum4:=StrToFloat(EditSumDog4.Text);
  if (EditSumDog5.Text='') then sum5:=StrToFloat('0,00') else
  sum5:=StrToFloat(EditSumDog5.Text);
  sumall:=sum1+sum2+sum3+sum4+sum5;
  EditSumDog.Text:=FloatToStr(sumall);
//-------------------------------------------------------------------//
end;

procedure TFormAdd.EditSumDog5Exit(Sender: TObject);
var Str1, Str2, Str3, StrRes: String;
sumall, sum1, sum2, sum3, sum4, sum5: real;
begin
Str1:=EditSumDog5.Text;
Str2:='.';
Str3:=',';
StrRes:=AnsiReplaceStr(Str1, Str2, Str3);
EditSumdog5.Text:=StrRes;
//-------------------------------------------------------------------//
  if (EditSumDog1.Text='') then sum1:=StrToFloat('0,00') else
  sum1:=StrToFloat(EditSumDog1.Text);
  if (EditSumDog2.Text='') then sum2:=StrToFloat('0,00') else
  sum2:=StrToFloat(EditSumDog2.Text);
  if (EditSumDog3.Text='') then sum3:=StrToFloat('0,00') else
  sum3:=StrToFloat(EditSumDog3.Text);
  if (EditSumDog4.Text='') then sum4:=StrToFloat('0,00') else
  sum4:=StrToFloat(EditSumDog4.Text);
  if (EditSumDog5.Text='') then sum5:=StrToFloat('0,00') else
  sum5:=StrToFloat(EditSumDog5.Text);
  sumall:=sum1+sum2+sum3+sum4+sum5;
  EditSumDog.Text:=FloatToStr(sumall);
//-------------------------------------------------------------------//
end;

procedure TFormAdd.BitBtnSumDogAllClick(Sender: TObject);
var
sumall, sum1, sum2, sum3, sum4, sum5: real;
begin
  if (EditSumDog1.Text='') then sum1:=StrToFloat('0,00') else
  sum1:=StrToFloat(EditSumDog1.Text);
  if (EditSumDog2.Text='') then sum2:=StrToFloat('0,00') else
  sum2:=StrToFloat(EditSumDog2.Text);
  if (EditSumDog3.Text='') then sum3:=StrToFloat('0,00') else
  sum3:=StrToFloat(EditSumDog3.Text);
  if (EditSumDog4.Text='') then sum4:=StrToFloat('0,00') else
  sum4:=StrToFloat(EditSumDog4.Text);
  if (EditSumDog5.Text='') then sum5:=StrToFloat('0,00') else
  sum5:=StrToFloat(EditSumDog5.Text);
  sumall:=sum1+sum2+sum3+sum4+sum5;
  EditSumDog.Text:=FloatToStr(sumall);
  //sumall:=fl sum1+sum2+sum3+sum4+sum5;
//  Edit4.Text := FlToStr(StrToFloat(Edit4.Text)+subs);
//  EditSumDog.Text:=FloatToStr(StrToFloat((EditSumDog1.Text)+(EditSumDog2.Text)+
//  (EditSumDog3.Text)+(EditSumDog4.Text)+(EditSumDog5.Text)));

end;

procedure TFormAdd.BitBtnChangeClick(Sender: TObject);
var
str, str1, strk: String;
begin
  begin
// DM.ADOQuery3.Parameters.ParamValues[0]:=LabelNomenclID1.Caption
      DM.ADOQuery3.Active:=True;
{MessageDlg('№ ' + str + #13#10 +
            'Вы уверенны, что хотите' + #13#10 +
          'изменить договор # ' + str1 + '?',
        mtCustom, [mbYes, mbNo], 0) = mrYes then
 }
      strk:=Form1.LabelStrK.Caption;
      str:=FormAdd.EditRegN.Text;
      str1:=FormAdd.EditN_Dog.Text;
      if MessageDlg('№ ' + str + #13#10 +
                'Вы уверенны, что хотите' + #13#10 +
                'изменить договор # ' + str1 + '?',
                mtCustom, [mbYes, mbNo], 0) = mrYes then
  begin
    DM.Query.Close;
    DM.Query.SQL.Clear;
    DM.Query.SQL.Add('update reestrdog');
    DM.Query.SQL.Add('set REGN=:REGN, REG_N=:REG_N, N_DOG=:N_DOG, DATA_REG=:DATA_REG,');
    DM.Query.SQL.Add('DATA_POST=:DATA_POST, FLDID=:FLDID, DATA_DOG=:DATA_DOG, DATA_SROK=:DATA_SROK, ID_SUPPLIER=:ID_SUPPLIER,');
    DM.Query.SQL.Add('ID_NOMENCL1=:ID_NOMENCL1, SUM_DOG1=:SUM_DOG1, COSGU1=:COSGU1,');
    DM.Query.SQL.Add('ID_NOMENCL2=:ID_NOMENCL2, SUM_DOG2=:SUM_DOG2, COSGU2=:COSGU2,');
    DM.Query.SQL.Add('ID_NOMENCL3=:ID_NOMENCL3, SUM_DOG3=:SUM_DOG3, COSGU3=:COSGU3,');
    DM.Query.SQL.Add('ID_NOMENCL4=:ID_NOMENCL4, SUM_DOG4=:SUM_DOG4, COSGU4=:COSGU4,');
    DM.Query.SQL.Add('ID_NOMENCL5=:ID_NOMENCL5, SUM_DOG5=:SUM_DOG5, COSGU5=:COSGU5,');
    DM.Query.SQL.Add('SUM_DOG_ALL=:SUM_DOG_ALL, STATUS=:STATUS');
    DM.Query.SQL.Add('where REGN = ' + str);
    DM.Query.Params[0].DataType:=ftInteger;//REGN
    DM.Query.Params[1].DataType:=ftInteger;//REG_N
    DM.Query.Params[2].DataType:=ftString;//N_DOG
    DM.Query.Params[3].DataType:=ftDateTime;//DATA_REG
    DM.Query.Params[4].DataType:=ftDateTime;//DATA_POST
    DM.Query.Params[5].DataType:=ftSmallint;//FLDID
    DM.Query.Params[6].DataType:=ftDateTime;//DATA_DOG
    DM.Query.Params[7].DataType:=ftDateTime;//DATA_SROK
    DM.Query.Params[8].DataType:=ftInteger;//ID_SUPPLIER
    DM.Query.Params[9].DataType:=ftString;//ID_NOMENCL1
    DM.Query.Params[10].DataType:=ftFloat;//SUM_DOG1
    DM.Query.Params[11].DataType:=ftInteger;//COSGU1
    DM.Query.Params[12].DataType:=ftString;//ID_NOMENCL2
    DM.Query.Params[13].DataType:=ftFloat;//SUM_DOG2
    DM.Query.Params[14].DataType:=ftInteger;//COSGU2
    DM.Query.Params[15].DataType:=ftString;//ID_NOMENCL3
    DM.Query.Params[16].DataType:=ftFloat;//SUM_DOG3
    DM.Query.Params[17].DataType:=ftInteger;//COSGU3
    DM.Query.Params[18].DataType:=ftString;//ID_NOMENCL4
    DM.Query.Params[19].DataType:=ftFloat;//SUM_DOG4
    DM.Query.Params[20].DataType:=ftInteger;//COSGU4
    DM.Query.Params[21].DataType:=ftString;//ID_NOMENCL5
    DM.Query.Params[22].DataType:=ftFloat;//SUM_DOG5
    DM.Query.Params[23].DataType:=ftInteger;//COSGU4
    DM.Query.Params[24].DataType:=ftFloat;//SUM_DOG_ALL

    DM.Query.ParamByName('regn').AsInteger:=StrToInt(EditRegN.Text);
    if EditReg_N.Text='' then DM.Query.ParamByName('reg_n').AsString:=DM.Query.Params[1].Value
    else DM.Query.ParamByName('reg_n').AsInteger:=StrToInt(EditReg_N.Text);
    if EditN_Dog.Text='' then DM.Query.ParamByName('n_dog').AsString:=DM.Query.Params[2].Value
    else DM.Query.ParamByName('n_dog').AsString:=EditN_Dog.Text;
    if MaskEditData_Reg.Text='  .  .    ' then DM.Query.Params[3].Value
    else DM.Query.ParamByName('data_reg').AsDateTime:=StrToDate(MaskEditData_Reg.Text);
    if MaskEditData_Post.Text='  .  .    ' then DM.Query.Params[4].Value
    else DM.Query.ParamByName('data_post').AsDateTime:=StrToDate(MaskEditData_Post.Text);
    if LabelFLDIDI.Caption='' then DM.Query.Params[5].Value
    else DM.Query.ParamByName('fldid').AsInteger:=StrToInt(LabelFLDIDI.Caption);
    if MaskEditData_Dog.Text='  .  .    ' then DM.Query.Params[6].Value
    else DM.Query.ParamByName('data_dog').AsDateTime:=StrToDate(MaskEditData_Dog.Text);
    if MaskEditData_Srok.Text='  .  .    ' then DM.Query.Params[7].Value
    else DM.Query.ParamByName('data_srok').AsDateTime:=StrToDate(MaskEditData_srok.Text);
    if LabelSupplierIDI.Caption='' then DM.Query.Params[8].Value
    else DM.Query.ParamByName('id_supplier').AsInteger:=StrToInt(LabelSupplierIDI.Caption);

//
    if editreg_n.enabled then
      if editreg_n.text='' then
        dm.query.parambyname('STATUS').value:=0
      else
        dm.query.parambyname('STATUS').value:=2
    else
      if editreg_n.text='' then
        dm.query.parambyname('STATUS').value:=1
      else
        dm.query.parambyname('STATUS').value:=2;
//

    if LabelNomenclID1.Caption='' then DM.Query.Params[9].Value
    else DM.Query.ParamByName('id_nomencl1').AsString:=LabelNomenclID1.Caption;
    if EditSumDog1.Text='' then DM.Query.Params[10].Value
    else DM.Query.ParamByName('sum_dog1').AsFloat:=StrToFloat(EditSumDog1.Text);
    if LabelCOSGUID1.Caption='' then DM.Query.Params[11].Value
    else DM.Query.ParamByName('cosgu1').AsInteger:=StrToInt(LabelCOSGUID1.Caption);

    if LabelNomenclID2.Caption='' then DM.Query.Params[12].Value
    else DM.Query.ParamByName('id_nomencl2').AsString:=LabelNomenclID2.Caption;
    if EditSumDog2.Text='' then DM.Query.Params[13].Value
    else DM.Query.ParamByName('sum_dog2').AsFloat:=StrToFloat(EditSumDog2.Text);
    if LabelCOSGUID2.Caption='' then DM.Query.Params[14].Value
    else DM.Query.ParamByName('cosgu2').AsInteger:=StrToInt(LabelCOSGUID2.Caption);

    if LabelNomenclID3.Caption='' then DM.Query.Params[15].Value
    else DM.Query.ParamByName('id_nomencl3').AsString:=LabelNomenclID3.Caption;
    if EditSumDog3.Text='' then DM.Query.Params[16].Value
    else DM.Query.ParamByName('sum_dog3').AsFloat:=StrToFloat(EditSumDog3.Text);
    if LabelCOSGUID3.Caption='' then DM.Query.Params[17].Value
    else DM.Query.ParamByName('cosgu3').AsInteger:=StrToInt(LabelCOSGUID3.Caption);

    if LabelNomenclID4.Caption='' then DM.Query.Params[18].Value
    else DM.Query.ParamByName('id_nomencl4').AsString:=LabelNomenclID4.Caption;
    if EditSumDog4.Text='' then DM.Query.Params[19].Value
    else DM.Query.ParamByName('sum_dog4').AsFloat:=StrToFloat(EditSumDog4.Text);
    if LabelCOSGUID4.Caption='' then DM.Query.Params[20].Value
    else DM.Query.ParamByName('cosgu4').AsInteger:=StrToInt(LabelCOSGUID4.Caption);

    if LabelNomenclID5.Caption='' then DM.Query.Params[21].Value
    else DM.Query.ParamByName('id_nomencl5').AsString:=LabelNomenclID5.Caption;
    if EditSumDog5.Text='' then DM.Query.Params[22].Value
    else DM.Query.ParamByName('sum_dog5').AsFloat:=StrToFloat(EditSumDog5.Text);
    if LabelCOSGUID5.Caption='' then DM.Query.Params[23].Value
    else DM.Query.ParamByName('cosgu5').AsInteger:=StrToInt(LabelCOSGUID5.Caption);

    if EditSumDog.Text='' then DM.Query.Params[24].Value
    else DM.Query.ParamByName('sum_dog_all').AsFloat:=StrToFloat(EditSumDog.Text);

    DM.Query.ExecSQL;

    DM.ReestrTb.Refresh;
    DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
    DM.ADOQuery1.Active:=not DM.ADOQuery1.Active;
    Form1.Enabled:=True;
    FormAdd.Visible:=False;
//    FormShow(Form1);
    end;
  end;
end;

procedure TFormAdd.FormShow(Sender: TObject);
begin
  FormAdd.BitBtnAdd.Enabled:=False;
end;

procedure TFormAdd.Zerro1Click(Sender: TObject);
begin
  MaskEditData_Reg.Text:='';
end;

procedure TFormAdd.Zerro2Click(Sender: TObject);
begin
  MaskEditData_Dog.Text:='';
end;

procedure TFormAdd.Zerro4Click(Sender: TObject);
begin
  MaskEditData_Srok.Text:='';
end;

procedure TFormAdd.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

procedure TFormAdd.PageControlChange(Sender: TObject);
begin
  balancelab1Click(Sender);
  balancelab2Click(Sender);
  balancelab3Click(Sender);
  balancelab4Click(Sender);
  balancelab5Click(Sender);
end;

procedure TFormAdd.EditSumDog1Change(Sender: TObject);
begin
  balancelab1Click(sender);
end;

procedure TFormAdd.balancelab1Click(Sender: TObject);
begin
  if labelnomenclid1.caption<>'' then
    begin
//      balancelab1.caption:=floattostr(defs.contractlimit-balance.getsum(labelnomenclid1.caption));
//      editreg_n.enabled:=balance.getsum(labelnomenclid1.caption)<defs.contractlimit;
//    if balance.getsum(labelnomenclid1.caption)>defs.contractlimit then
//      balancelab1.font.color:=clred
//    else
//      balancelab1.font.color:=clnone;
    end;
end;

procedure TFormAdd.balancelab2Click(Sender: TObject);
begin
{  if labelnomenclid2.caption<>'' then
    begin
      balancelab2.caption:=floattostr(defs.contractlimit-balance.getsum(labelnomenclid2.caption));
      editreg_n.enabled:=balance.getsum(labelnomenclid2.caption)<defs.contractlimit;
      if balance.getsum(labelnomenclid2.caption)>defs.contractlimit then
        balancelab2.font.color:=clred
      else
        balancelab2.font.color:=clnone;
    end;
}end;

procedure TFormAdd.balancelab3Click(Sender: TObject);
begin
{  if labelnomenclid3.caption<>'' then
    begin
      balancelab3.caption:=floattostr(defs.contractlimit-balance.getsum(labelnomenclid3.caption));
      editreg_n.enabled:=balance.getsum(labelnomenclid3.caption)<defs.contractlimit;
      if balance.getsum(labelnomenclid3.caption)>defs.contractlimit then
        balancelab3.font.color:=clred
      else
        balancelab3.font.color:=clnone;
    end;
}end;

procedure TFormAdd.balancelab4Click(Sender: TObject);
begin
{  if labelnomenclid4.caption<>'' then
    begin
      balancelab4.caption:=floattostr(defs.contractlimit-balance.getsum(labelnomenclid4.caption));
      editreg_n.enabled:=balance.getsum(labelnomenclid4.caption)<defs.contractlimit;
      if balance.getsum(labelnomenclid4.caption)>defs.contractlimit then
        balancelab4.font.color:=clred
      else
        balancelab4.font.color:=clnone;
    end;}
end;

procedure TFormAdd.balancelab5Click(Sender: TObject);
begin
{  if labelnomenclid5.caption<>'' then
    begin
      balancelab5.caption:=floattostr(defs.contractlimit-balance.getsum(labelnomenclid5.caption));
      editreg_n.enabled:=balance.getsum(labelnomenclid5.caption)<defs.contractlimit;
      if balance.getsum(labelnomenclid5.caption)>defs.contractlimit then
        balancelab5.font.color:=clred
      else
        balancelab5.font.color:=clnone;
    end;   }
end;

end.
