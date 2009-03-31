unit balance;

interface

uses
  //  classes,
  sysutils;

function getbalance(id:integer;nomencl:string):real;

implementation

uses
  contracts,
  datamodule;

function getbalance(id:integer;nomencl:string):real;
begin
  result:=0;
  dmod.query.sql.text:='SELECT SUM(price) AS BALANCE'+#13+
                       'FROM subcontract'+#13+
                       'WHERE (nomencl='+quotedstr(nomencl)+')'+
                       'AND (id<>'+quotedstr(inttostr(id))+')'+
                       'AND (report<>1)';
  dmod.query.open;
  dmod.query.first;
  if dmod.query.recordcount>0 then
    result:=result+dmod.query.fieldbyname('balance').asfloat;
end;

end.
