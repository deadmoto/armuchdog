unit subcontractdlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Mask,
  contracts, Menus;

type
  pbool=^boolean;

type
  tsubcontractfm = class(TForm)
    nomenclbox: TGroupBox;
    nomencl: TEdit;
    nomenclbtn: TButton;
    codebox: TGroupBox;
    code: TEdit;
    codebtn: TButton;
    subdatebox: TGroupBox;
    subdate: TMaskEdit;
    pricebox: TGroupBox;
    price: TEdit;
    commentbox: TGroupBox;
    comment: TMemo;
    panel: TPanel;
    btns: TPanel;
    ok: TButton;
    cancel: TButton;
    balancebox: TGroupBox;
    balance: TEdit;
    reportbox: TGroupBox;
    report: TCheckBox;
    procedure nomenclbtnClick(Sender: TObject);
    procedure codebtnClick(Sender: TObject);
    procedure priceChange(Sender: TObject);
    procedure priceKeyPress(Sender: TObject; var Key: Char);
    procedure subdateChange(Sender: TObject);
    procedure commentChange(Sender: TObject);
    procedure reportClick(Sender: TObject);
  private
    { Private declarations }
  public
    function getlimit(var price:double):real;
    procedure add(subcontract:psubcontract;result:pbool);
    procedure upd(subcontract:psubcontract);
  end;

var
  subcontractfm:tsubcontractfm;
  vsubcontract:^tsubcontract;
  contract:pcontract;

implementation

uses
  defs,
  balance,
  nomencls,
  cosgus,
  nomencldlg,
  cosgudlg,
  contractfm;

{$R *.dfm}

function tsubcontractfm.getlimit(var price:double):real;
var
  i:integer;
begin
  if length(contractform.contract.subcontract)>0 then
    for i:=0 to length(contractform.contract.subcontract) do
      if (contractform.contract.subcontract[i].nomencl=vsubcontract^.nomencl)
      and (contractform.selected-1<>i) then
        price:=price+contractform.contract.subcontract[i].price;
  result:=defs.contractlimit-getbalance(contractform.contract.regn,vsubcontract^.nomencl)-price;
end;

procedure tsubcontractfm.add(subcontract:psubcontract;result:pbool);
var
  csubcontract:tsubcontract;
begin
  subcontractfm:=tsubcontractfm.create(owner);
  vsubcontract:=@csubcontract;
  vsubcontract^.subdate:=0;
  vsubcontract^.price:=0;
  vsubcontract^.report:=false;
  subcontractfm.ok.caption:='Добавить';
  subcontractfm.subdate.text:=datetostr(subcontract.subdate);
  if subcontractfm.showmodal=mrok then
    begin
      subcontract.nomencl:=vsubcontract^.nomencl;
      subcontract.code:=vsubcontract^.code;
      subcontract.subdate:=vsubcontract^.subdate;
      subcontract.price:=vsubcontract^.price;
      subcontract.comment:=vsubcontract^.comment;
      subcontract.report:=vsubcontract^.report;
      result^:=true;
    end;
end;

procedure tsubcontractfm.upd(subcontract:psubcontract);
var
  csubcontract:tsubcontract;
begin
  subcontractfm:=tsubcontractfm.create(owner);
  csubcontract:=subcontract^;
  vsubcontract:=@csubcontract;
  subcontractfm.ok.caption:='Изменить';
  subcontractfm.nomencl.text:=nomencls.byid(vsubcontract^.nomencl);
  subcontractfm.code.text:=cosgus.byid(vsubcontract^.code);
  if vsubcontract^.subdate<>0 then
    subcontractfm.subdate.text:=datetostr(vsubcontract^.subdate);
  subcontractfm.price.text:=floattostr(vsubcontract^.price);
  subcontractfm.report.checked:=vsubcontract^.report;
  subcontractfm.comment.text:=vsubcontract^.comment;
  if subcontractfm.showmodal=mrok then
    begin
      subcontract.nomencl:=vsubcontract^.nomencl;
      subcontract.code:=vsubcontract^.code;
      subcontract.subdate:=vsubcontract^.subdate;
      subcontract.price:=vsubcontract^.price;
      subcontract.report:=vsubcontract^.report;
      subcontract.comment:=vsubcontract^.comment;
    end;
end;

procedure tsubcontractfm.nomenclbtnClick(Sender: TObject);
begin
  vsubcontract^.nomencl:=nomenclselect.select;
  self.nomencl.text:=nomencls.byid(vsubcontract^.nomencl);
end;

procedure tsubcontractfm.codebtnClick(Sender: TObject);
begin
  vsubcontract^.code:=cosguselect.select;
  self.code.text:=cosgus.byid(vsubcontract^.code);
end;

procedure tsubcontractfm.priceChange(Sender: TObject);
var
  price:double;
begin
  if trystrtofloat(self.price.text,price) then
    begin
      self.price.font.color:=clnone;
      vsubcontract^.price:=price;
    end
  else
    self.price.font.color:=clred;
  if vsubcontract^.nomencl<>'' then
    begin
      if getlimit(price)<0 then
        self.balance.font.color:=clred
      else
        self.balance.font.color:=clnone;
      self.balance.text:=floattostr(getlimit(price));
    end
end;

procedure tsubcontractfm.priceKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',',','-',#8]) then
    key:=chr(0);
end;

procedure tsubcontractfm.subdateChange(Sender: TObject);
begin
  if trystrtodate(self.subdate.text,vsubcontract^.subdate) then
    self.subdate.font.color:=clnone
  else
    self.subdate.font.color:=clred;
end;

procedure tsubcontractfm.commentChange(Sender: TObject);
begin
  vsubcontract^.comment:=self.comment.text;
end;

procedure tsubcontractfm.reportClick(Sender: TObject);
begin
  vsubcontract^.report:=subcontractfm.report.checked;
end;

end.
