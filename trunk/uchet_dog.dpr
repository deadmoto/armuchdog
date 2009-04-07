program Uchet_Dog;

uses
  Forms,
  sqltext in 'sqltext.pas',
  defs in 'defs.pas',
  reportokved in 'forms\reportokved.pas' {report_okved},
  balance in 'database\balance.pas',
  datamodule in 'database\datamodule.pas' {dm: TDataModule},
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
  summaryrpt in 'forms\summaryrpt.pas' {sumaryreport},
  okvedfm in 'forms\okvedfm.pas' {okved},
  okvededit in 'dialogs\okvededit.pas' {okveded},
  mainfm in 'forms\mainfm.pas' {main},
  version in 'version.pas',
  progressdlg in 'dialogs\progressdlg.pas' {progress},
  model in 'database\model.pas',
  quarterrpt in 'forms\quarterrpt.pas' {reportquarter};

{$R *.res}

begin
  application.initialize;
  makelink;
  application.title:='АРМ "Учёт договоров"';
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tmain, main);
  Application.CreateForm(Treport_cosgu, report_cosgu);
  Application.CreateForm(Tcontractform, contractform);
  Application.CreateForm(Tsubcontractfm, subcontractfm);
  Application.CreateForm(Tnomenclselect, nomenclselect);
  Application.CreateForm(Tcosguselect, cosguselect);
  regions.fetch;
  providers.fetch;
  application.run;
end.
