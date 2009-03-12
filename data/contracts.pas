unit contracts;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tcontract=record
    regn:integer;
    reg_n:integer;
    n_dog:string;
    data_reg:tdate;
    data_post:tdate;
    data_dog:tdate;
    data_srok:tdate;
    fldid:smallint;
    internal:integer;
    status:smallint;
    id_supplier:integer;
    id_nomencl:string;
    sumdog:real;
    cosgu:string;
    sum_dog_all:real;
  end;

implementation

uses
  datamodule;

procedure fetch(regn:integer);
begin
{  try
    dmod.query.sql.text:='select REGN,REG_N,N_DOG,DATA_REG,DATA_POST,FLDID,DATA_DOG,DATA_SROK,STATUS,ID_SUPPLIER'+#13+
                         'from reestrdog where regn=:regn';
    dmod.query.parameters.parambyname('regn').value:=regn;
    dmod.query.open;
    self.regn:=regn;
    self.reg_n:=dmod.query.fieldbyname('reg_n').value;
    self.n_dog:=dmod.query.fieldbyname('n_dog').value;
    self.data_reg:=dmod.query.fieldbyname('data_reg').asdatetime;
    self.data_post:=dmod.query.fieldbyname('data_post').asdatetime;
    self.data_dog:=dmod.query.fieldbyname('data_dog').asdatetime;
    self.data_srok:=dmod.query.fieldbyname('data_srok').asdatetime;
    self.fldid:=dmod.query.fieldbyname('fldid').value;
    self.id_supplier:=dmod.query.fieldbyname('id_supplier').value;
    self.status:=dmod.query.fieldbyname('status').value;
  except
    showmessage('Ошибка открытия договора!!!'+#13+'номер договора:'+inttostr(regn));
  end;
}end;



end.
