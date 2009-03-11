unit balance;

interface

uses
  classes,
  sysutils;

function getsum(okved:string):real;

implementation

uses
  dmunit,
  sqltext;

function getokvedsum(okved:string;numdog:string):real;
var
  i:integer;
begin
  result:=0;
  dm.query.sql.text:=sqltext.balance;
  dm.query.sql.text:=format(sqltext.balance,[numdog,numdog,numdog]);
  dm.query.parambyname('p').value:=okved;
  dm.query.open;
  dm.query.first;
  for i:=0 to dm.query.recordcount-1 do
    begin
      result:=result+dm.query.fieldbyname('sum_nom').asfloat;
      dm.query.next;
    end;
end;

function getsum(okved:string):real;
begin
  result:=0;
  result:=result+getokvedsum(okved,'1');
  result:=result+getokvedsum(okved,'2');
  result:=result+getokvedsum(okved,'3');
  result:=result+getokvedsum(okved,'4');
  result:=result+getokvedsum(okved,'5');
end;

end.
