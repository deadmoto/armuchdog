unit contracts;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tsubcontract=record
    nomencl:string;
    code:string;
    subdate:tdatetime;
    price:real;
    comment:string;
  end;

type
  psubcontract=^tsubcontract;

type
  tcontract=record
    regn:integer;
    reg_n:integer;
    n_dog:string;
    data_reg:tdatetime;
    data_post:tdatetime;
    data_dog:tdatetime;
    data_srok:tdatetime;
    region:smallint;
    id_supplier:integer;
    subcontract:array of tsubcontract;
  end;

function maxregn(region:integer):integer;
function fetch(regn:integer):tcontract;
procedure insert(contract:tcontract);
procedure update(contract:tcontract);
procedure delete(contract:tcontract);

implementation

uses
  datamodule,
  util;

function float(float:real):string;
var
  i:integer;
begin
  result:=floattostr(float);
  for i:=0 to length(result)-1 do
    if result[i]=',' then
      result[i]:='.';
end;

function maxregn(region:integer):integer;
begin
  result:=-1;
  try
    dmod.query.sql.text:='SELECT MAX(REGN) AS REGN FROM ReestrDog WHERE (fldid=:fldid)';
    dmod.query.parameters.parambyname('fldid').value:=region;
    dmod.query.open;
    if dmod.query.fieldbyname('regn').asinteger<>0 then
      result:=dmod.query.fieldbyname('regn').value
    else
      result:=900000000+region*1000000;
  except
    showmessage('Ошибка получения максимального регистрационного номера договора!!!');
  end;
end;

function fetch(regn:integer):tcontract;
var
  i:integer;
begin
  result.regn:=regn;
  setlength(result.subcontract,0);
  try
    dmod.query.sql.text:='select REGN,REG_N,N_DOG,DATA_REG,DATA_POST,FLDID,DATA_DOG,DATA_SROK,STATUS,ID_SUPPLIER'+#13+
                         'from reestrdog where regn=:regn';
    dmod.query.parameters.parambyname('regn').value:=regn;
    dmod.query.open;
    result.reg_n:=dmod.query.fieldbyname('reg_n').asinteger;
    result.n_dog:=cropspace(dmod.query.fieldbyname('n_dog').value);
    result.data_reg:=dmod.query.fieldbyname('data_reg').asdatetime;
    result.data_post:=dmod.query.fieldbyname('data_post').asdatetime;
    result.data_dog:=dmod.query.fieldbyname('data_dog').asdatetime;
    result.data_srok:=dmod.query.fieldbyname('data_srok').asdatetime;
    result.region:=dmod.query.fieldbyname('fldid').value;
    result.id_supplier:=dmod.query.fieldbyname('id_supplier').value;
    dmod.query.sql.text:='SELECT * FROM subcontract WHERE id=:id';
    dmod.query.parameters.parambyname('id').value:=regn;
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount-1 do
      begin
        setlength(result.subcontract,length(result.subcontract)+1);
        result.subcontract[i].nomencl:=cropspace(dmod.query.fieldbyname('nomencl').value);
        result.subcontract[i].code:=cropspace(dmod.query.fieldbyname('code').value);
        result.subcontract[i].subdate:=dmod.query.fieldbyname('subdate').asdatetime;
        result.subcontract[i].price:=dmod.query.fieldbyname('price').value;
        result.subcontract[i].comment:=cropspace(dmod.query.fieldbyname('comment').value);
        dmod.query.next;
      end;
  except
    showmessage('Ошибка открытия договора!!!'+#13+'номер договора:'+inttostr(regn));
  end;
end;

procedure insert(contract:tcontract);
var
  i:integer;
begin
  try
    dmod.query.connection.begintrans;
    dmod.query.sql.text:='INSERT INTO ReestrDog'+#13+
                         '(regn,reg_n,n_dog,data_reg,data_post,data_dog,data_srok,fldid,id_supplier)'+#13+
                         'VALUES ('+inttostr(contract.regn)+
                         ','+inttostr(contract.reg_n)+
                         ','+quotedstr(contract.n_dog)+
                         ','+dateornull(contract.data_reg)+
                         ','+dateornull(contract.data_post)+
                         ','+dateornull(contract.data_dog)+
                         ','+dateornull(contract.data_srok)+
                         ','+inttostr(contract.region)+
                         ','+inttostr(contract.id_supplier)+')';
    dmod.query.execsql;
    dmod.query.sql.text:='DELETE FROM subcontract WHERE id=:id';
    dmod.query.parameters.parambyname('id').value:=contract.regn;
    dmod.query.execsql;
    for i:=0 to length(contract.subcontract)-1 do
      begin
        dmod.query.sql.text:='INSERT INTO subcontract'+#13+
                             '(id,nomencl,code,subdate,price,comment)'+#13+
                             'VALUES ('+
                             inttostr(contract.regn)+','+
                             quotedstr(contract.subcontract[i].nomencl)+','+
                             quotedstr(contract.subcontract[i].code)+','+
                             dateornull(contract.subcontract[i].subdate)+','+
                             float(contract.subcontract[i].price)+','+
                             quotedstr(contract.subcontract[i].comment)+')';
        dmod.query.execsql;
        dmod.query.connection.committrans;
      end;
    showmessage('Договор успешно добавлен!!!');
  except
    dmod.query.connection.rollbacktrans;
    showmessage('Ошибка добавления договора!!!'+#13+
                dmod.query.sql.text);
  end;
end;

procedure update(contract:tcontract);
var
  i:integer;
begin
  try
    dmod.query.connection.begintrans;
    dmod.query.sql.text:='UPDATE ReestrDog'+#13+
                         'SET '+
                         'reg_n=:reg_n,'+
                         'n_dog=:n_dog,'+
                         'data_reg='+dateornull(contract.data_reg)+','+
                         'data_post='+dateornull(contract.data_post)+','+
                         'data_dog='+dateornull(contract.data_dog)+','+
                         'data_srok='+dateornull(contract.data_srok)+','+
                         'id_supplier=:id_supplier'+#13+
                         'WHERE regn=:regn';
    dmod.query.parameters.parambyname('regn').value:=contract.regn;
    dmod.query.parameters.parambyname('reg_n').value:=contract.reg_n;
    dmod.query.parameters.parambyname('n_dog').value:=contract.n_dog;
    dmod.query.parameters.parambyname('id_supplier').value:=contract.id_supplier;
    dmod.query.execsql;
    dmod.query.sql.text:='DELETE FROM subcontract WHERE id=:id';
    dmod.query.parameters.parambyname('id').value:=contract.regn;
    dmod.query.execsql;
    for i:=0 to length(contract.subcontract)-1 do
      begin
        dmod.query.sql.text:='INSERT INTO subcontract'+#13+
                             '(id,nomencl,code,subdate,price,comment)'+#13+
                             'VALUES ('+
                             inttostr(contract.regn)+','+
                             quotedstr(contract.subcontract[i].nomencl)+','+
                             quotedstr(contract.subcontract[i].code)+','+
                             dateornull(contract.subcontract[i].subdate)+','+
                             float(contract.subcontract[i].price)+','+
                             quotedstr(contract.subcontract[i].comment)+')';
        dmod.query.execsql;
      end;
    dmod.query.connection.committrans;
    showmessage('Договор успешно обновлён!!!');
  except
    dmod.query.connection.rollbacktrans;
    showmessage('Ошибка обновления договора!!!'+#13+
                 dmod.query.sql.text);
  end;
end;

procedure delete(contract:tcontract);
begin
end;

end.
