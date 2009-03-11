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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmod: Tdmod;

implementation

{$R *.dfm}

end.

