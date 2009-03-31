unit util;

interface

uses
  sysutils,ComObj, ActiveX, ShlObj, windows, Messages,  Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

function min(a,b:variant):variant;
function max(a,b:variant):variant;
function booltobit(bool:boolean):char;
function dateornull(date:tdate):string;
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
  else result:=quotedstr(datetostr(date));
end;

function starorstr(text:string):string;
begin
  result:='';
  if text<>'*' then
    result:=text;
end;

procedure makelink;
var
  SL: IShellLink;
  link:ipersistfile;
  result:hresult;
  s:string;
const
  lnkname='\Рабочий стол\АРМ Учёт договоров.lnk';
begin
  olecheck(CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER,
    IShellLink, SL));
  { IShellLink implementers are required to implement IPersistFile }
  link:= SL as IPersistFile;
  OleCheck(SL.SetPath(pchar(paramstr(0)))); // set link path to proper file
  { create a path location and filename for link file }
  result:=link.save(pwidechar(widestring(getenv('USERPROFILE')+lnkname)),true);// save link file
end;

end.
