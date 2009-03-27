unit nomencls;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tnomencl=record
    id:string;
    name:string;
  end;

procedure fetch;overload;
procedure fetch(column,filter:string);overload;
procedure insert(nomencl:tnomencl);
procedure update(nomencl:tnomencl);
procedure delete(nomencl:tnomencl);
function byid(id:string):string;

var
  cnomencl:array of tnomencl;

implementation

uses
  datamodule,
  util;

procedure fetch;overload;
var
  i:integer;
begin
  setlength(cnomencl,0);
  try
    dmod.query.sql.text:='SELECT * FROM NomenclDog'+#13+
                         'ORDER BY id_nomencl';
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount do
      begin
        setlength(cnomencl,length(cnomencl)+1);
        cnomencl[i].id:=trim(dmod.query.fieldbyname('id_nomencl').value);
        cnomencl[i].name:=trim(dmod.query.fieldbyname('name').value);
        dmod.query.next;
      end
  except
    showmessage('Ошибка получения списка номенклатур!!!');
  end;
end;

procedure fetch(column,filter:string);overload;
var
  i:integer;
begin
  setlength(cnomencl,0);
  try
    dmod.query.sql.text:='SELECT * FROM NomenclDog'+#13+
                         'WHERE '+column+' LIKE '+quotedstr('%'+filter+'%');
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount-1 do
      begin
        setlength(cnomencl,length(cnomencl)+1);
        cnomencl[i].id:=trim(dmod.query.fieldbyname('id_nomencl').value);
        cnomencl[i].name:=trim(dmod.query.fieldbyname('name').value);
        dmod.query.next;
      end
  except
    showmessage('Ошибка получения списка номенклатур!!!');
  end;
end;

procedure insert(nomencl:tnomencl);
begin
  try
    dmod.query.sql.text:='INSERT INTO NomenclDog'+#13+
                         'VALUES ('+quotedstr(nomencl.id)+','+quotedstr(nomencl.name)+')';
    dmod.query.execsql;
    showmessage('ОКВЭД успешно добавлен!!!');
    fetch;
  except
    showmessage('Ошибка добавления ОКВЭД!!!');
  end;
end;

procedure update(nomencl:tnomencl);
begin
  try
    dmod.query.sql.text:='UPDATE NomenclDog'+#13+
                         'SET name='+quotedstr(nomencl.name)+#13+
                         ',id_nomencl='+quotedstr(nomencl.id)+#13+
                         'WHERE id_nomencl='+quotedstr(nomencl.id);
    dmod.query.execsql;
    showmessage('Статья успешно обновлен!!!');
    fetch;
  except
    showmessage('ОКВЭД обновления ОКВЭД!!!');
  end;
end;

procedure delete(nomencl:tnomencl);
begin
  try
    dmod.query.sql.text:='DELETE FROM NomenclDog'+#13+
                         'WHERE id_nomencl='+quotedstr(nomencl.id);
    dmod.query.execsql;
    showmessage('ОКВЭД успешно удален!!!');
    fetch;
  except
    showmessage('Ошибка удаления ОКВЭД!!!');
  end;
end;

function byid(id:string):string;
var
  i:integer;
begin
  fetch;
  for i:=0 to length(cnomencl)-1 do
    if cnomencl[i].id=id then
      result:=cnomencl[i].name;
end;

end.
