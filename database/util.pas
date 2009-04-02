unit util;

interface

uses
//создание ярлыка
  activex,
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
procedure makelink;

implementation

uses
  defs;

function min(a,b:variant):variant;
begin
  if a>b then
    result:=b
  else
    result:=a
end;

function max(a,b:variant):variant;
begin
  if a>b then
    result:=a
  else
    result:=b
end;

function booltobit(bool:boolean):char;
begin
  if bool then
    result:='1'
  else
    result:='0';
end;

function dateornull(date:tdate):string;
begin
  if date=0 then result:='null'
  else result:=quotedstr(formatdatetime('yyyymmdd',date));
end;

function quarter(date:tdate):byte;
var
  year,month,day:word;
begin
  decodedate(date,year,month,day);
  result:=month div 4;
end;

function year(date:tdate):integer;
var
  year,month,day:word;
begin
  decodedate(date,year,month,day);
  result:=year;
end;

function starorstr(text:string):string;
begin
  result:='';
  if text<>'*' then
    result:=text;
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

