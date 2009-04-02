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
    skip:boolean;
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

type
  pcontract=^tcontract;

function maxregn(region:integer):integer;
function fetch(regn:integer):tcontract;
procedure insert(contract:tcontract);
procedure update(contract:tcontract);
procedure delete(id:integer);

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
    dm.query.sql.text:='SELECT MAX(REGN) AS REGN FROM ReestrDog WHERE (fldid=:fldid)';
    dm.query.parameters.parambyname('fldid').value:=region;
    dm.query.open;
    if dm.query.recordcount>0 then
      if dm.query.fieldbyname('regn').asinteger<>0 then
        result:=dm.query.fieldbyname('regn').value
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
    dm.query.sql.text:='select REGN,REG_N,N_DOG,DATA_REG,DATA_POST,FLDID,DATA_DOG,DATA_SROK,STATUS,ID_SUPPLIER'+#13+
                         'from reestrdog where regn=:regn';
    dm.query.parameters.parambyname('regn').value:=regn;
    dm.query.open;
    result.reg_n:=dm.query.fieldbyname('reg_n').asinteger;
    result.n_dog:=trim(dm.query.fieldbyname('n_dog').value);
    result.data_reg:=dm.query.fieldbyname('data_reg').asdatetime;
    result.data_post:=dm.query.fieldbyname('data_post').asdatetime;
    result.data_dog:=dm.query.fieldbyname('data_dog').asdatetime;
    result.data_srok:=dm.query.fieldbyname('data_srok').asdatetime;
    result.region:=dm.query.fieldbyname('fldid').value;
    result.id_supplier:=dm.query.fieldbyname('id_supplier').value;
    dm.query.sql.text:='SELECT * FROM subcontract WHERE id=:id';
    dm.query.parameters.parambyname('id').value:=regn;
    dm.query.open;
    dm.query.first;
    for i:=0 to dm.query.recordcount-1 do
      begin
        setlength(result.subcontract,length(result.subcontract)+1);
        result.subcontract[i].nomencl:=trim(dm.query.fieldbyname('nomencl').value);
        result.subcontract[i].code:=trim(dm.query.fieldbyname('code').value);
        result.subcontract[i].subdate:=dm.query.fieldbyname('subdate').asdatetime;
        result.subcontract[i].price:=dm.query.fieldbyname('price').value;
        result.subcontract[i].skip:=dm.query.fieldbyname('report').value;
        result.subcontract[i].comment:=trim(dm.query.fieldbyname('comment').value);
        dm.query.next;
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
    dm.query.connection.begintrans;
    dm.query.sql.text:='INSERT INTO ReestrDog'+#13+
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
    dm.query.execsql;
    dm.query.sql.text:='DELETE FROM subcontract WHERE id='+inttostr(contract.regn);
    dm.query.execsql;
    for i:=0 to length(contract.subcontract)-1 do
      begin
        dm.query.sql.text:='INSERT INTO subcontract'+#13+
                             '(id,nomencl,code,subdate,price,report,comment)'+#13+
                             'VALUES ('+
                             inttostr(contract.regn)+','+
                             quotedstr(contract.subcontract[i].nomencl)+','+
                             quotedstr(contract.subcontract[i].code)+','+
                             dateornull(contract.subcontract[i].subdate)+','+
                             float(contract.subcontract[i].price)+','+
                             booltobit(contract.subcontract[i].skip)+','+
                             quotedstr(contract.subcontract[i].comment)+')';
        dm.query.execsql;
        dm.query.connection.committrans;
      end;
    showmessage('Договор успешно добавлен!!!');
  except
    dm.query.connection.rollbacktrans;
    showmessage('Ошибка добавления договора!!!'+#13+dm.query.sql.text);
  end;
end;

procedure update(contract:tcontract);
var
  i:integer;
begin
  try
    dm.query.connection.begintrans;
    dm.query.sql.text:='UPDATE ReestrDog'+#13+
                       'SET '+
                       'reg_n=:reg_n,'+
                       'n_dog=:n_dog,'+
                       'data_reg='+dateornull(contract.data_reg)+','+
                       'data_post='+dateornull(contract.data_post)+','+
                       'data_dog='+dateornull(contract.data_dog)+','+
                       'data_srok='+dateornull(contract.data_srok)+','+
                       'id_supplier=:id_supplier'+#13+
                       'WHERE regn=:regn';
    dm.query.parameters.parambyname('regn').value:=contract.regn;
    dm.query.parameters.parambyname('reg_n').value:=contract.reg_n;
    dm.query.parameters.parambyname('n_dog').value:=contract.n_dog;
    dm.query.parameters.parambyname('id_supplier').value:=contract.id_supplier;
    dm.query.execsql;
    dm.query.sql.text:='DELETE FROM subcontract WHERE id=:id';
    dm.query.parameters.parambyname('id').value:=contract.regn;
    dm.query.execsql;
    for i:=0 to length(contract.subcontract)-1 do
      begin
        dm.query.sql.text:='INSERT INTO subcontract'+#13+
                             '(id,nomencl,code,subdate,price,report,comment)'+#13+
                             'VALUES ('+
                             inttostr(contract.regn)+','+
                             quotedstr(contract.subcontract[i].nomencl)+','+
                             quotedstr(contract.subcontract[i].code)+','+
                             dateornull(contract.subcontract[i].subdate)+','+
                             float(contract.subcontract[i].price)+','+
                             booltobit(contract.subcontract[i].skip)+','+
                             quotedstr(contract.subcontract[i].comment)+')';
        dm.query.execsql;
      end;
    dm.query.connection.committrans;
    showmessage('Договор успешно обновлён!!!');
  except
    dm.query.connection.rollbacktrans;
    showmessage('Ошибка обновления договора!!!'+#13+dm.query.sql.text);
  end;
end;

procedure delete(id:integer);
begin
  dm.query.connection.begintrans;
  try
    dm.query.sql.text:='DELETE FROM ReestrDog WHERE regn=:id';
    dm.query.parameters.parambyname('id').value:=id;
    dm.query.execsql;
    dm.query.sql.text:='DELETE FROM subcontract WHERE id=:id';
    dm.query.parameters.parambyname('id').value:=id;
    dm.query.execsql;
    dm.query.connection.committrans;
    showmessage('Договор успешно удалён!!!');
  except
    dm.query.connection.rollbacktrans;
    showmessage('Ошибка обновления договора!!!'+#13+dm.query.sql.text);
  end;
end;

end.
