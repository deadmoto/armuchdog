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
    registration:string;
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
procedure insert(input:tcontract);
procedure update(input:tcontract);
procedure delete(id:integer);

implementation

uses
  datamodel,
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
    dm.query.sql.text:='SELECT '+commstr([contract.id.name,contract.registration.name,
                                          contract.cnt.name,contract.datecnt.name,
                                          contract.datelim.name,contract.datercv.name,
                                          contract.datereg.name,contract.region.name,
                                          contract.provider.name])+#13+
                       'FROM '+contract.table+' WHERE regn=:regn';
    dm.query.parameters.parambyname('regn').value:=regn;
    dm.query.open;
    result.registration:=trim(dm.query.fieldbyname(contract.registration.column).value);
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

procedure insert;
var
  i:integer;
begin
  try
    dm.query.connection.begintrans;
    dm.query.sql.text:='INSERT INTO ReestrDog'+#13+
                       '('+commstr([contract.id.name,contract.registration.name,
                                    contract.cnt.name,contract.datecnt.name,
                                    contract.datelim.name,contract.datercv.name,
                                    contract.datereg.name,contract.region.name,
                                    contract.provider.name])+')'+#13+
                       'VALUES ('+inttostr(input.regn)+
                       ','+quotedstr(input.registration)+
                       ','+quotedstr(input.n_dog)+
                       ','+dateornull(input.data_dog)+
                       ','+dateornull(input.data_srok)+
                       ','+dateornull(input.data_post)+
                       ','+dateornull(input.data_reg)+
                       ','+inttostr(input.region)+
                       ','+inttostr(input.id_supplier)+')';
    dm.query.execsql;
    dm.query.sql.text:='DELETE FROM subcontract WHERE id='+inttostr(input.regn);
    dm.query.execsql;
    for i:=0 to length(input.subcontract)-1 do
      begin
        dm.query.sql.text:='INSERT INTO subcontract'+#13+
                             '(id,nomencl,code,subdate,price,report,comment)'+#13+
                             'VALUES ('+
                             inttostr(input.regn)+','+
                             quotedstr(input.subcontract[i].nomencl)+','+
                             quotedstr(input.subcontract[i].code)+','+
                             dateornull(input.subcontract[i].subdate)+','+
                             float(input.subcontract[i].price)+','+
                             booltobit(input.subcontract[i].skip)+','+
                             quotedstr(input.subcontract[i].comment)+')';
        dm.query.execsql;
        dm.query.connection.committrans;
      end;
    showmessage('Договор успешно добавлен!!!');
  except
    dm.query.connection.rollbacktrans;
    showmessage('Ошибка добавления договора!!!'+#13+dm.query.sql.text);
  end;
end;

procedure update;
var
  i:integer;
begin
  try
    dm.query.connection.begintrans;
    dm.query.sql.text:='UPDATE ReestrDog'+#13+
                       'SET '+
                       contract.registration.column+'='+quotedstr(input.registration)+','+
                       'n_dog=:n_dog,'+
                       'data_reg='+dateornull(input.data_reg)+','+
                       'data_post='+dateornull(input.data_post)+','+
                       'data_dog='+dateornull(input.data_dog)+','+
                       'data_srok='+dateornull(input.data_srok)+','+
                       'id_supplier=:id_supplier'+#13+
                       'WHERE regn=:regn';
    dm.query.parameters.parambyname('regn').value:=input.regn;
    dm.query.parameters.parambyname('n_dog').value:=input.n_dog;
    dm.query.parameters.parambyname('id_supplier').value:=input.id_supplier;
    dm.query.execsql;
    dm.query.sql.text:='DELETE FROM subcontract WHERE id=:id';
    dm.query.parameters.parambyname('id').value:=input.regn;
    dm.query.execsql;
    for i:=0 to length(input.subcontract)-1 do
      begin
        dm.query.sql.text:='INSERT INTO subcontract'+#13+
                             '(id,nomencl,code,subdate,price,report,comment)'+#13+
                             'VALUES ('+
                             inttostr(input.regn)+','+
                             quotedstr(input.subcontract[i].nomencl)+','+
                             quotedstr(input.subcontract[i].code)+','+
                             dateornull(input.subcontract[i].subdate)+','+
                             float(input.subcontract[i].price)+','+
                             booltobit(input.subcontract[i].skip)+','+
                             quotedstr(input.subcontract[i].comment)+')';
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
