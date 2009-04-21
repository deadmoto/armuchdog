unit sizers;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tsizer=record
    id:string;
    name:string;
  end;

procedure fetch;overload;
procedure fetch(column,filter:string);overload;
procedure insert(sizer:tsizer);
procedure update(sizer:tsizer);
procedure delete(sizer:tsizer);
function byid(id:string):string;

var
  asizer:array of tsizer;

implementation

uses
  datamodule,
  util;

procedure fetch;overload;
var
  i:integer;
begin
  setlength(asizer,0);
  try
    dm.query.sql.text:='SELECT * FROM NomenclDog'+#13+
                         'ORDER BY id_nomencl';
    dm.query.open;
    dm.query.first;
    for i:=0 to dm.query.recordcount-1 do
      begin
        setlength(asizer,length(asizer)+1);
        asizer[i].id:=trim(dm.query.fieldbyname('id_nomencl').value);
        asizer[i].name:=trim(dm.query.fieldbyname('name').value);
        dm.query.next;
      end
  except
    showmessage('Ошибка получения списка номенклатур!!!');
  end;
end;

procedure fetch(column,filter:string);overload;
var
  i:integer;
begin
  setlength(asizer,0);
  try
    dm.query.sql.text:='SELECT * FROM NomenclDog'+#13+
                         'WHERE '+column+' LIKE '+quotedstr('%'+filter+'%');
    dm.query.open;
    dm.query.first;
    for i:=0 to dm.query.recordcount-1 do
      begin
        setlength(asizer,length(asizer)+1);
        asizer[i].id:=trim(dm.query.fieldbyname('id_nomencl').value);
        asizer[i].name:=trim(dm.query.fieldbyname('name').value);
        dm.query.next;
      end
  except
    showmessage('Ошибка получения списка номенклатур!!!');
  end;
end;

procedure insert;
begin
  try
    dm.query.sql.text:='INSERT INTO NomenclDog'+#13+
                         'VALUES ('+quotedstr(sizer.id)+','+quotedstr(sizer.name)+')';
    dm.query.execsql;
    showmessage('ОКВЭД успешно добавлен!!!');
    fetch;
  except
    showmessage('Ошибка добавления ОКВЭД!!!');
  end;
end;

procedure update;
begin
  try
    dm.query.sql.text:='UPDATE NomenclDog'+#13+
                         'SET name='+quotedstr(sizer.name)+#13+
                         ',id_nomencl='+quotedstr(sizer.id)+#13+
                         'WHERE id_nomencl='+quotedstr(sizer.id);
    dm.query.execsql;
    showmessage('Статья успешно обновлен!!!');
    fetch;
  except
    showmessage('ОКВЭД обновления ОКВЭД!!!');
  end;
end;

procedure delete;
begin
  try
    dm.query.sql.text:='DELETE FROM NomenclDog'+#13+
                         'WHERE id_nomencl='+quotedstr(sizer.id);
    dm.query.execsql;
    showmessage('ОКВЭД успешно удален!!!');
    fetch;
  except
    showmessage('Ошибка удаления ОКВЭД!!!');
  end;
end;

function byid;
var
  i:integer;
begin
  fetch;
  for i:=0 to length(asizer)-1 do
    if asizer[i].id=id then
      result:=asizer[i].name;
end;

end.

