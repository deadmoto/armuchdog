unit defs;
{*******************************************************************************
Ниже заданы константы, играющие роль в механизмах расчёта
*******************************************************************************}

interface

uses
  windows;

const
  contractlimit=100000;
//Статусы договоров
  status_notverified=0;//Не утверждён
  status_excess=1;//Превышение лимита
  status_verified=2;//Утверждён

function getenv(const name:string):string;

implementation

function getenv(const name:string):string;
var
  i: integer;
begin
  result:='';
  try
    i:=getenvironmentvariable(pchar(name),nil,0);
    if i>0 then
    begin
      setlength(result,i);
      getenvironmentvariable(pchar(name),pchar(result),i);
    end;
  except
    result:='';
  end;
end;

end.
