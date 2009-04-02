unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet;

type
  Tdm = class(TDataModule)
    sqlsub: TADOConnection;
    report1: TADOQuery;
    query: TADOQuery;
    data: TDataSource;
    report: TfrxReport;
    frquery: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.

