unit COSGUDBGUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, DBTables, ADODB;

type
  TFormCOSGUDBG = class(TForm)
    COSGUDBG: TDBGrid;
    BitBtnCOSGUDBGEnter: TBitBtn;
    BitBtnCOSGUDBGCancel: TBitBtn;
    procedure BitBtnCOSGUDBGCancelClick(Sender: TObject);
    procedure BitBtnCOSGUDBGEnterClick(Sender: TObject);
    procedure COSGUDBGDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCOSGUDBG: TFormCOSGUDBG;

implementation

uses DMUnit, ACC, AddUnit, StrUtils;

{$R *.dfm}

procedure TFormCOSGUDBG.BitBtnCOSGUDBGCancelClick(Sender: TObject);
begin
  FormAdd.Enabled:=True;
  DM.ADOQuery5.Active:=False;
  FormCOSGUDBG.Close;
end;

procedure TFormCOSGUDBG.BitBtnCOSGUDBGEnterClick(Sender: TObject);
begin
{  if (FormAdd.PageControl.TabIndex=1) then begin
  FormAdd.LabelCOSGUID1.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName1.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=2) then begin
  FormAdd.LabelCOSGUID2.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName2.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=3) then begin
  FormAdd.LabelCOSGUID3.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName3.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=4) then begin
  FormAdd.LabelCOSGUID4.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName4.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=5) then begin
  FormAdd.LabelCOSGUID5.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName5.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  
  FormAdd.Enabled:=True;
  FormCOSGUDBG.Visible:=False;
}end;

procedure TFormCOSGUDBG.COSGUDBGDblClick(Sender: TObject);
begin
  if (FormAdd.PageControl.TabIndex=1) then begin
  FormAdd.LabelCOSGUID1.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName1.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=2) then begin
  FormAdd.LabelCOSGUID2.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName2.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=3) then begin
  FormAdd.LabelCOSGUID3.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName3.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=4) then begin
  FormAdd.LabelCOSGUID4.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName4.Caption:=COSGUDBG.Fields[1].AsString;
  end;
  if (FormAdd.PageControl.TabIndex=5) then begin
  FormAdd.LabelCOSGUID5.Caption:=COSGUDBG.Fields[0].AsString;
  FormAdd.LabelCOSGUName5.Caption:=COSGUDBG.Fields[1].AsString;
  end;

  FormAdd.Enabled:=True;
  FormCOSGUDBG.Visible:=False;
end;

procedure TFormCOSGUDBG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormAdd.Enabled:=True;
  DM.ADOQuery5.Active:=False;
  FormCOSGUDBG.Visible:=False;
end;

procedure TFormCOSGUDBG.FormCreate(Sender: TObject);
begin
  DM.ADOQuery5.Active:=True;
end;

procedure TFormCOSGUDBG.FormShow(Sender: TObject);
begin
  DM.ADOQuery5.Active:=True;
end;

procedure TFormCOSGUDBG.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  ReleaseCapture;
  Perform(WM_SYSCOMMAND, $F012, 0);
end;

end.
