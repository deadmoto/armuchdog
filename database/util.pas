unit util;

interface

uses
  sysutils,ComObj, ActiveX, ShlObj, windows, Messages,  Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls;

function cropspace(s:string):string;
function qs(s:string):string;
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

function qs(s:string):string;
begin
  result:=quotedstr(s);
end;

procedure CreateShotCut(SourceFile, ShortCutName, SourceParams: String);
var 
IUnk: IUnknown; 
ShellLink: IShellLink; 
ShellFile: IPersistFile; 
tmpShortCutName: string; 
WideStr: WideString; 
i: Integer; 
begin 
IUnk := CreateComObject(CLSID_ShellLink); 
ShellLink := IUnk as IShellLink; 
ShellFile  := IUnk as IPersistFile; 

 ShellLink.SetPath(PChar(SourceFile)); 
ShellLink.SetArguments(PChar(SourceParams)); 
ShellLink.SetWorkingDirectory(PChar(ExtractFilePath(SourceFile))); 

 ShortCutName := ChangeFileExt(ShortCutName,'.lnk'); 
if fileexists(ShortCutName) then 
begin 
ShortCutName := copy(ShortCutName,1,length(ShortCutName)-4); 
i := 1; 
repeat 
tmpShortCutName := ShortCutName +'(' + inttostr(i)+ ').lnk'; 
inc(i); 
until not fileexists(tmpShortCutName); 
WideStr := tmpShortCutName; 
end 
else 
WideStr := ShortCutName; 
ShellFile.Save(PWChar(WideStr),False); 
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
