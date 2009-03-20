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
        ccosgu[i].id:=cropspace(dmod.query.fieldbyname('cosgu').value);
        ccosgu[i].name:=cropspace(dmod.query.fieldbyname('name_artic').value);
        dmod.query.next;
      end
  except
    showmessage('Ошибка получения списка статей!!!');
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
