program Uchet_Dog;

uses
  Forms,
  ACC in 'acc.pas' {Form1},
  DMUnit in 'dmunit.pas' {DM: TDataModule},
  About in 'About.pas' {AboutBox},
  sqltext in 'sqltext.pas',
  defs in 'defs.pas',
  ReportOKVED in 'reportokved.pas' {report_okved},
  balance in 'database\balance.pas',
  datamodule in 'database\datamodule.pas' {dmod: TDataModule},
  contracts in 'database\contracts.pas',
  providerfm in 'forms\providerfm.pas' {providerform},
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
  summaryrpt in 'forms\summaryrpt.pas' {report},
  okvedfm in 'forms\okvedfm.pas' {okved},
  okvededit in 'dialogs\okvededit.pas' {okveded},
  mainfm in 'forms\mainfm.pas' {main};

{$R *.res}

begin
  Application.Initialize;
  makelink;
  Application.Title := 'ְ׀ּ "׃ק¸ע המדמגמנמג"';
  Application.CreateForm(Tmain, main);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Treport_cosgu, report_cosgu);
  Application.CreateForm(Tdmod, dmod);
  Application.CreateForm(Tcontractform, contractform);
  Application.CreateForm(Tsubcontractfm, subcontractfm);
  Application.CreateForm(Tnomenclselect, nomenclselect);
  Application.CreateForm(Tcosguselect, cosguselect);
  regions.fetch;
  providers.fetch;
  Application.Run;
end.
