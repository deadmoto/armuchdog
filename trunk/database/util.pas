unit util;

interface

function cropspace(s:string):string;

implementation

function cropspace(s:string):string;
var i:integer;
begin
  for i:=length(s) downto 1 do
    if s[i]<>chr(32) then break;
  result:=copy(s,1,i);
end;

end.
