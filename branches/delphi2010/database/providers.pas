unit providers;

interface

uses
  db,
  controls,
  dialogs,
  sysutils;

type
  tprovider=record
    id:integer;
    name:string;
  end;

procedure fetch;overload;
procedure fetch(column,filter:string);overload;
function byid(id:integer):string;

var
  cprovider:array of tprovider;

implementation

uses
  datamodule,
  util;

procedure fetch;overload;
var
  i:integer;
begin
  setlength(cprovider,0);
  try
    dm.query.sql.text:='SELECT * FROM SupplierDog';
    dm.query.open;
    dm.query.first;
    for i:=0 to dm.query.recordcount-1 do
      begin
        setlength(cprovider,length(cprovider)+1);
        cprovider[i].id:=dm.query.fieldbyname('id_supplier').value;
        cprovider[i].name:=trim(dm.query.fieldbyname('supplier').value);
        dm.query.next;
      end;
  except
    showmessage('Ошибка получения списка поставщиков!!!');
  end;
end;

procedure fetch(column,filter:string);overload;
var
  i:integer;
begin
  setlength(cprovider,0);
  try
    dm.query.sql.text:='SELECT * FROM SupplierDog'+#13+
                         'WHERE '+column+' LIKE '+quotedstr('%'+filter+'%');
    dm.query.open;
    dm.query.first;
    for i:=0 to dm.query.recordcount-1 do
      begin
        setlength(cprovider,length(cprovider)+1);
        cprovider[i].id:=dm.query.fieldbyname('id_supplier').value;
        cprovider[i].name:=trim(dm.query.fieldbyname('supplier').value);
        dm.query.next;
      end;
  except
    showmessage('Ошибка получения списка поставщиков!!!');
  end;
end;

function byid(id:integer):string;
var
  i:integer;
begin
  for i:=0 to length(cprovider)-1 do
    if cprovider[i].id=id then
      result:=cprovider[i].name;
end;

end.

