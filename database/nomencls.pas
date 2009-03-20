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
    dmod.query.sql.text:='SELECT * FROM NomenclDog';
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount do
      begin
        setlength(cnomencl,length(cnomencl)+1);
        cnomencl[i].id:=cropspace(dmod.query.fieldbyname('id_nomencl').value);
        cnomencl[i].name:=cropspace(dmod.query.fieldbyname('name').value);
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
        cnomencl[i].id:=cropspace(dmod.query.fieldbyname('id_nomencl').value);
        cnomencl[i].name:=cropspace(dmod.query.fieldbyname('name').value);
        dmod.query.next;
      end
  except
    showmessage('Ошибка получения списка номенклатур!!!');
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
