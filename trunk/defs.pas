unit defs;
{*******************************************************************************
���� ������ ���������, �������� ���� � ���������� �������
*******************************************************************************}

interface

uses
  windows;

const
  contractlimit=100000;//����� ������ �� ������� ����� �� ������� �������
//������� ���������
  status_notverified=0;//�� ��������
  status_excess=1;//���������� ������
  status_verified=2;//��������

function getenv(const name:string):string;

implementation

uses
  dialogs;

function getenv(const name:string):string;
{*******************************************************************************
���������� �������� ���������� ��������� ���� ������ ������
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
