unit regions;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tregion=record
    id:integer;
    name:string;
  end;

procedure fetch;
function byid(id:integer):string;

var
  cregion:array of tregion;

implementation

uses
  datamodel,
  datamodule,
  util;

procedure fetch;
var
  i:integer;
begin
  setlength(cregion,0);
  try
    dm.query.sql.text:='SELECT * FROM '+region.table;
    dm.query.open;
    dm.query.first;
    for i:=0 to dm.query.recordcount-1 do
      begin
        setlength(cregion,length(cregion)+1);
        cregion[i].id:=dm.query.fieldbyname('fldid').value;
        cregion[i].name:=trim(dm.query.fieldbyname('fldname').value);
        dm.query.next;
      end
  except
    showmessage('Ошибка получения списка районов!!!');
  end;
end;

function byid(id:integer):string;
var
  i:integer;
begin
  for i:=0 to length(cregion)-1 do
    if cregion[i].id=id then
      result:=cregion[i].name;
end;

end.

