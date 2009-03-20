unit util;

interface

uses
  sysutils,ComObj, ActiveX, ShlObj, windows, Messages,  Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

function cropspace(s:string):string;
function dateornull(date:tdate):string;
function starorstr(text:string):string;
procedure makelink;

implementation

uses
  defs;

function cropspace(s:string):string;
var i:integer;
begin
  for i:=length(s) downto 1 do
    if s[i]<>chr(32) then break;
  result:=copy(s,1,i);
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
const
  lnkname='\Рабочий стол\АРМ Учёт договоров.lnk';
begin
  olecheck(CoCreateInstance(CLSID_ShellLink, nil, CLSCTX_INPROC_SERVER,
    IShellLink, SL));
  { IShellLink implementers are required to implement IPersistFile }
  link:= SL as IPersistFile;
  OleCheck(SL.SetPath(pchar(paramstr(0)))); // set link path to proper file
  { create a path location and filename for link file }
  result:=link.save(pwidechar(widestring(copy(getenv('USERPROFILE'),0,length(getenv('USERPROFILE'))-1)+lnkname)),true);// save link file
end;

end.
