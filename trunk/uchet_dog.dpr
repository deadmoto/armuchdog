program Uchet_Dog;

uses
  Forms,
  ACC in 'ACC.pas' {Form1},
  DMUnit in 'DMUnit.pas' {DM: TDataModule},
  About in 'About.pas' {AboutBox},
  AddUnit in 'AddUnit.pas' {FormAdd},
  FldNameDBGUnit in 'FldNameDBGUnit.pas' {FormFldNameDBG},
  Name_DogDBGUnit in 'Name_DogDBGUnit.pas' {FormName_DogDBG},
  SupplierDBGUnit in 'SupplierDBGUnit.pas' {FormSupplierDBG},
  COSGUDBGUnit in 'COSGUDBGUnit.pas' {FormCOSGUDBG},
  Name_DogDBGEditUnit in 'Name_DogDBGEditUnit.pas' {FormName_DogDBGEdit},
  COSGUDBGEditUnit in 'COSGUDBGEditUnit.pas' {FormCOSGUDBGEdit},
  SupplierDBGEditUnit in 'SupplierDBGEditUnit.pas' {FormSupplierDBGEdit},
  FldNameDBGEditUnit in 'FldNameDBGEditUnit.pas' {FormFldNameDBGEdit},
  sqltext in 'sqltext.pas',
  defs in 'defs.pas',
  ReportOKVED in 'ReportOKVED.pas' {report_okved},
  balance in 'data\balance.pas',
  datamodule in 'database\datamodule.pas' {dmod: TDataModule},
  contracts in 'data\contracts.pas',
  providerfm in 'forms\providerfm.pas' {provider},
  providerdlg in 'dialogs\providerdlg.pas' {provdlg},
  util in 'database\util.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ְ׀ּ "׃ק¸ע המדמגמנמג"';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TFormAdd, FormAdd);
  Application.CreateForm(TFormFldNameDBG, FormFldNameDBG);
  Application.CreateForm(TFormName_DogDBG, FormName_DogDBG);
  Application.CreateForm(TFormSupplierDBG, FormSupplierDBG);
  Application.CreateForm(TFormCOSGUDBG, FormCOSGUDBG);
  Application.CreateForm(TFormName_DogDBGEdit, FormName_DogDBGEdit);
  Application.CreateForm(TFormCOSGUDBGEdit, FormCOSGUDBGEdit);
  Application.CreateForm(TFormSupplierDBGEdit, FormSupplierDBGEdit);
  Application.CreateForm(TFormFldNameDBGEdit, FormFldNameDBGEdit);
  Application.CreateForm(Treport_okved, report_okved);
  Application.CreateForm(Tdmod, dmod);
  Application.Run;
end.
