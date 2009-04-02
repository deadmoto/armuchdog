unit balance;

interface

uses
  sysutils;

function getbalance(id:integer;nomencl:string;date:tdatetime):real;

implementation

uses
  datamodule,
  util;

function getbalance(id:integer;nomencl:string;date:tdatetime):real;
begin
  result:=0;
  dm.query.sql.text:='SELECT SUM(price) AS BALANCE'+#13+
                     'FROM subcontract'+#13+
                     'WHERE (nomencl='+quotedstr(nomencl)+')'+
                     'AND (id<>'+quotedstr(inttostr(id))+')'+
                     'AND datepart(q,subdate)=datepart(q,'+dateornull(date)+')'+#13+
                     'AND year(subdate)=year('+dateornull(date)+')'+#13+
                     'AND (report<>1)';
  dm.query.open;
  dm.query.first;
  if dm.query.recordcount>0 then
    result:=result+dm.query.fieldbyname('balance').asfloat;
end;

end.
