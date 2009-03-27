unit defs;
{*******************************************************************************
Ниже заданы константы, играющие роль в механизмах расчёта
*******************************************************************************}

interface

uses
  windows;

const
  contractlimit=100000;//лимит затрат по каждому ОКВЭД за текущий квартал
//Статусы договоров
  status_notverified=0;//Не утверждён
  status_excess=1;//Превышение лимита
  status_verified=2;//Утверждён

function getenv(const name:string):string;

implementation

uses
  dialogs;

function getenv(const name:string):string;
{*******************************************************************************
Возвращает значение переменной окружения либо пустую строку
*******************************************************************************}
var
  i: integer;
begin
  result:='';
  try
    i:=getenvironmentvariable(pchar(name),nil,0);
    if i>0 then
    begin
      setlength(result,i-1);
      getenvironmentvariable(pchar(name),pchar(result),i);
    end;
  except
    result:='';
  end;
end;

function getusersettings:string;
begin
end;

end.
