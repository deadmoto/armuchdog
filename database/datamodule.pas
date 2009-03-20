unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdmod = class(TDataModule)
    sqlsub: TADOConnection;
    report1: TADOQuery;
    query: TADOQuery;
    data: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmod: Tdmod;

implementation

uses
  providers,
  regions;

{$R *.dfm}

procedure Tdmod.DataModuleCreate(Sender: TObject);
begin
  regions.fetch;
  providers.fetch;
end;

end.

