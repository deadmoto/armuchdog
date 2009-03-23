program Uchet_Dog;

uses
  Forms,
  ACC in 'acc.pas' {Form1},
  DMUnit in 'dmunit.pas' {DM: TDataModule},
  About in 'About.pas' {AboutBox},
  FldNameDBGUnit in 'fldnamedbgunit.pas' {FormFldNameDBG},
  Name_DogDBGUnit in 'Name_DogDBGUnit.pas' {FormName_DogDBG},
  SupplierDBGUnit in 'SupplierDBGUnit.pas' {FormSupplierDBG},
  COSGUDBGUnit in 'cosgudbgunit.pas' {FormCOSGUDBG},
  Name_DogDBGEditUnit in 'Name_DogDBGEditUnit.pas' {FormName_DogDBGEdit},
  COSGUDBGEditUnit in 'cosgudbgeditunit.pas' {FormCOSGUDBGEdit},
  SupplierDBGEditUnit in 'SupplierDBGEditUnit.pas' {FormSupplierDBGEdit},
  FldNameDBGEditUnit in 'fldnamedbgeditunit.pas' {FormFldNameDBGEdit},
  sqltext in 'sqltext.pas',
  defs in 'defs.pas',
  ReportOKVED in 'reportokved.pas' {report_okved},
  balance in 'database\balance.pas',
  datamodule in 'database\datamodule.pas' {dmod: TDataModule},
  contracts in 'database\contracts.pas',
  providerfm in 'forms\providerfm.pas' {provider},
  provideredit in 'dialogs\provideredit.pas' {provdlg},
  util in 'database\util.pas',
  contractfm in 'forms\contractfm.pas' {contractform},
  regions in 'database\regions.pas',
  providers in 'database\providers.pas',
  subcontractdlg in 'dialogs\subcontractdlg.pas' {subcontractfm},
  nomencldlg in 'dialogs\nomencldlg.pas' {nomenclselect},
  nomencls in 'database\nomencls.pas',
  cosgus in 'database\cosgus.pas',
  cosgudlg in 'dialogs\cosgudlg.pas' {cosguselect},
  regiondlg in 'dialogs\regiondlg.pas' {regionselect},
  providerdlg in 'dialogs\providerdlg.pas' {providerselect},
  cosgufm in 'forms\cosgufm.pas' {cosgu},
  cosguedit in 'dialogs\cosguedit.pas' {cosgued},
  reportcosgu in 'forms\reportcosgu.pas' {report_cosgu},
  summaryrpt in 'forms\summaryrpt.pas' {report};

{$R *.res}

begin
  Application.Initialize;
  makelink;
  Application.Title := 'ְ׀ּ "׃ק¸ע המדמגמנמג"';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Treport_cosgu, report_cosgu);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.CreateForm(TFormFldNameDBG, FormFldNameDBG);
  Application.CreateForm(TFormName_DogDBG, FormName_DogDBG);
  Application.CreateForm(TFormSupplierDBG, FormSupplierDBG);
  Application.CreateForm(TFormCOSGUDBG, FormCOSGUDBG);
  Application.CreateForm(TFormName_DogDBGEdit, FormName_DogDBGEdit);
  Application.CreateForm(TFormCOSGUDBGEdit, FormCOSGUDBGEdit);
  Application.CreateForm(TFormSupplierDBGEdit, FormSupplierDBGEdit);
  Application.CreateForm(TFormFldNameDBGEdit, FormFldNameDBGEdit);
  Application.CreateForm(Tdmod, dmod);
  Application.CreateForm(Tcontractform, contractform);
  Application.CreateForm(Tsubcontractfm, subcontractfm);
  Application.CreateForm(Tnomenclselect, nomenclselect);
  Application.CreateForm(Tcosguselect, cosguselect);
  Application.CreateForm(Tregionselect, regionselect);
  Application.CreateForm(Tcosgu, cosgu);
  regions.fetch;
  providers.fetch;
  Application.Run;
end.
