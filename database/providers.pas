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
    dmod.query.sql.text:='SELECT * FROM SupplierDog';
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount-1 do
      begin
        setlength(cprovider,length(cprovider)+1);
        cprovider[i].id:=dmod.query.fieldbyname('id_supplier').value;
        cprovider[i].name:=dmod.query.fieldbyname('supplier').value;
        dmod.query.next;
      end;
  except
    showmessage('������ ��������� ������ �����������!!!');
  end;
end;

procedure fetch(column,filter:string);overload;
var
  i:integer;
begin
  setlength(cprovider,0);
  try
    dmod.query.sql.text:='SELECT * FROM SupplierDog'+#13+
                         'WHERE '+column+' LIKE '+quotedstr('%'+filter+'%');
    dmod.query.open;
    dmod.query.first;
    for i:=0 to dmod.query.recordcount-1 do
      begin
        setlength(cprovider,length(cprovider)+1);
        cprovider[i].id:=dmod.query.fieldbyname('id_supplier').value;
        cprovider[i].name:=dmod.query.fieldbyname('supplier').value;
        dmod.query.next;
      end;
  except
    showmessage('������ ��������� ������ �����������!!!');
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
