unit util;

interface

uses
//создание ярлыка
  activex,
  datamodel,
  comobj,
  shlobj,
//
  dialogs,
  sysutils;

function min(a,b:variant):variant;
function max(a,b:variant):variant;
function booltobit(bool:boolean):char;
function dateornull(date:tdate):string;
function quarter(date:tdate):byte;
function year(date:tdate):integer;
function starorstr(text:string):string;
function ovp(s:string):string;
function commstr(a:array of string):string;
function sum(field:tfield):string;
function lim(field:tfield):string;
procedure makelink;

implementation

uses
  defs;

function min;
begin
  if a>b then
    result:=b
  else
    result:=a
end;

function max;
begin
  if a>b then
    result:=a
  else
    result:=b
end;

function booltobit;
begin
  if bool then
    result:='1'
  else
    result:='0';
end;

function dateornull;
begin
  if date=0 then result:='null'
  else result:=quotedstr(formatdatetime('yyyymmdd',date));
end;

function quarter;
var
  year,month,day:word;
begin
  decodedate(date,year,month,day);
  result:=(month div 4)+1;
end;

function year;
var
  year,month,day:word;
begin
  decodedate(date,year,month,day);
  result:=year;
end;

function starorstr;
begin
  result:='';
  if text<>'*' then
    result:=text;
end;

function ovp;
var
  i:integer;
begin
  result:='';
  for i:=length(s) downto 0 do
    if s[i]<>'.' then result:=s[i]+result
  else
    exit;
end;

function commstr;
var
  i:integer;
begin
  result:='';
  for i:=0 to length(a)-1 do
    result:=result+a[i]+',';
  result:=copy(result,0,length(result)-1);
end;

function sum;
begin
  result:='SUM('+field.name+') as '+field.column;
end;

function lim;
begin
  result:='dbo.LIMIT('+inttostr(contractlimit)+',SUM('+field.column+')) as limit';
end;

procedure makelink;
var
  slink:ishelllink;
  link:ipersistfile;
//  result:hresult;
const
  lnkname='\Рабочий стол\АРМ Учёт договоров.lnk';
begin
  olecheck(cocreateinstance(clsid_shelllink,nil,clsctx_inproc_server,ishelllink,slink));
  link:=slink as ipersistfile;
  olecheck(slink.setpath(pchar(paramstr(0)))); // set link path to proper file
//  result:=link.save(pwidechar(widestring(getenv('USERPROFILE')+lnkname)),true);// save link file
  link.save(pwidechar(widestring(getenv('USERPROFILE')+lnkname)),true);
end;

end.
