unit DMUnit;

interface

uses
  SysUtils, Classes, DB, DBTables, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection: TADOConnection;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    ReestrTb: TTable;
    ReestrDS: TDataSource;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    ADOQuery4: TADOQuery;
    NomenclTb: TTable;
    NomenclDS: TDataSource;
    Query: TQuery;
    COSGUTb: TTable;
    COSGUDS: TDataSource;
    SupplierDS: TDataSource;
    SupplierTb: TTable;
    FldNameDS: TDataSource;
    FldNameTb: TTable;
    ADOQuery1Regn: TLargeintField;
    ADOQuery1n_dog: TStringField;
    ADOQuery1data_dog: TDateTimeField;
    ADOQuery1data_post: TDateTimeField;
    ADOQuery1data_reg: TDateTimeField;
    ADOQuery1fldname: TStringField;
    ADOQuery1reg_n: TIntegerField;
    ADOQuery1supplier: TStringField;
    ADOQuery1sum_dog_all: TFloatField;
    ADOQuery2fldid: TWordField;
    ADOQuery2fldname: TStringField;
    ADOQuery3ID_NOMENCL: TStringField;
    ADOQuery3NAME: TStringField;
    ADOQuery3NAME_SUBJ: TStringField;
    ADOQuery4id_supplier: TIntegerField;
    ADOQuery4supplier: TStringField;
    ADOQuery5cosgu: TLargeintField;
    ADOQuery5name_artic: TStringField;
    ADOQuery6: TADOQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DataSource6: TDataSource;
    DQuery: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

uses acc, FldNameDBGUnit, COSGUDBGUnit, AddUnit, Name_DogDBGUnit, About,
SupplierDBGUnit;

{$R *.dfm}

end.
