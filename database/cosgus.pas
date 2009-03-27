unit cosgus;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tcosgu=record
    id:string;
    name:string;
  end;

procedure fetch;
procedure insert(cosgu:tcosgu);
procedure update(cosgu:tcosgu);
procedure delete(cosgu:tcosgu);
function byid(id:string):string;

var
  ccosgu:array of tcosgu;

implementation

uses
  datamodule,
  util;

procedure fetch;
var
  i:integer;
begin
  setlength(ccosgu,0);
  try
    dmod.query.sql.text:='SELECT * FROM ArticleDog';
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount do
      begin
        setlength(ccosgu,length(ccosgu)+1);
        ccosgu[i].id:=dmod.query.fieldbyname('cosgu').value;
        ccosgu[i].name:=trim(dmod.query.fieldbyname('name_artic').value);
        dmod.query.next;
      end
  except
    showmessage('Ошибка получения списка статей!!!');
  end;
end;

procedure insert(cosgu:tcosgu);
begin
  try
    dmod.query.sql.text:='INSERT INTO ArticleDog'+#13+
                         'VALUES ('+cosgu.id+','+quotedstr(cosgu.name)+')';
    dmod.query.execsql;
    showmessage('Статья успешно добавлена!!!');
    fetch;
  except
    showmessage('Ошибка добавления статьи!!!');
  end;
end;

procedure update(cosgu:tcosgu);
begin
  try
    dmod.query.sql.text:='UPDATE ArticleDog'+#13+
                         'SET name_artic='+quotedstr(cosgu.name)+#13+
                         'WHERE cosgu='+cosgu.id;
    dmod.query.execsql;
    showmessage('Статья успешно обновлена!!!');
    fetch;
  except
    showmessage('Ошибка обновления статьи!!!');
  end;
end;

procedure delete(cosgu:tcosgu);
begin
  try
    dmod.query.sql.text:='DELETE FROM ArticleDog'+#13+
                         'WHERE cosgu='+cosgu.id;
    dmod.query.execsql;
    showmessage('Статья успешно удалена!!!');
    fetch;
  except
    showmessage('Ошибка удаления статьи!!!');
  end;
end;

function byid(id:string):string;
var
  i:integer;
begin
  fetch;
  for i:=0 to length(ccosgu)-1 do
    if ccosgu[i].id=id then
      result:=ccosgu[i].name;
end;

end.
