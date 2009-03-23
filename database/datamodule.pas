unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB, FR_DSet, FR_DBSet, FR_Class;

type
  Tdmod = class(TDataModule)
    sqlsub: TADOConnection;
    report1: TADOQuery;
    query: TADOQuery;
    data: TDataSource;
    report: TfrReport;
    frdata: TfrDBDataSet;
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

