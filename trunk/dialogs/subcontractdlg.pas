unit subcontractdlg;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, Mask,
  contracts, Menus;

procedure showeditor(var contract:tcontract;const index:integer=-1);

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
    index:integer;
    function getlimit(var price:double;var date:tdatetime):real;
    function add:boolean;
    function upd(index:integer):boolean;
  end;

var
  subcontractfm:tsubcontractfm;
  psubcontract:^tsubcontract;
  pcontract:^tcontract;

implementation

uses
  dialogs,
  defs,
  balance,
  nomencls,
  cosgus,
  nomencldlg,
  cosgudlg,
  contractfm,
  util;

{$R *.dfm}

procedure showeditor(var contract:tcontract;const index:integer=-1);
begin
  subcontractfm:=tsubcontractfm.create(application.owner);
  subcontractfm.index:=index;
  pcontract:=@contract;
  if index=-1 then
    begin
      if subcontractfm.add then
        begin
          setlength(contract.subcontract,length(contract.subcontract)+1);
          contract.subcontract[high(contract.subcontract)]:=psubcontract^;
        end
    end
  else
    if subcontractfm.upd(index) then
      contract.subcontract[index]:=psubcontract^;
end;

function tsubcontractfm.getlimit(var price:double;var date:tdatetime):real;
var
  i:integer;
begin
  result:=defs.contractlimit;
  result:=result-getbalance(contractform.contract.regn,psubcontract.nomencl,date);
  result:=result-price;
  if length(pcontract.subcontract)>0 then
    for i:=0 to length(pcontract.subcontract)-1 do
      if (index<>i) then
        if (pcontract.subcontract[i].nomencl=psubcontract.nomencl)
          and (not pcontract.subcontract[i].skip)
          and (quarter(pcontract.subcontract[i].subdate)=quarter(date))
          and (year(pcontract.subcontract[i].subdate)=year(date)) then
            result:=result-pcontract.subcontract[i].price;
end;

function tsubcontractfm.add:boolean;
begin
  result:=false;
  new(psubcontract);
  psubcontract.subdate:=pcontract.data_dog;
  psubcontract.price:=0;
  psubcontract.skip:=false;
  ok.caption:='Добавить';
  subdate.text:=datetostr(psubcontract.subdate);
  if showmodal=mrok then
    result:=true;
end;

function tsubcontractfm.upd(index:integer):boolean;
begin
  result:=false;
  new(psubcontract);
  psubcontract^:=pcontract.subcontract[index];
  ok.caption:='Изменить';
  subcontractfm.nomencl.text:=nomencls.byid(psubcontract.nomencl);
  subcontractfm.code.text:=cosgus.byid(psubcontract.code);
  if psubcontract.subdate<>0 then
    subcontractfm.subdate.text:=datetostr(psubcontract.subdate);
  subcontractfm.price.text:=floattostr(psubcontract.price);
  subcontractfm.report.checked:=psubcontract.skip;
  subcontractfm.comment.text:=psubcontract.comment;
  if showmodal=mrok then
    result:=true;
end;

procedure tsubcontractfm.nomenclbtnClick(Sender: TObject);
begin
  psubcontract.nomencl:=nomenclselect.select;
  self.nomencl.text:=nomencls.byid(psubcontract.nomencl);
end;

procedure tsubcontractfm.codebtnClick(Sender: TObject);
begin
  psubcontract.code:=cosguselect.select;
  self.code.text:=cosgus.byid(psubcontract.code);
end;

procedure tsubcontractfm.priceChange(Sender: TObject);
var
  price,limit:double;
begin
  if trystrtofloat(self.price.text,price) then
    begin
      self.price.font.color:=clnone;
      psubcontract.price:=price;
    end
  else
    self.price.font.color:=clred;
  if (psubcontract.nomencl<>'') and (not psubcontract.skip) then
    begin
      limit:=getlimit(price,psubcontract.subdate);
      if limit<0 then
        self.balance.font.color:=clred
      else
        self.balance.font.color:=clnone;
      self.balance.text:=floattostr(limit);
    end
  else
    balance.text:='Не учитывается';
end;

procedure tsubcontractfm.priceKeyPress(Sender: TObject; var Key: Char);
begin
  if not charinset(key,['0'..'9',',','-',#8]) then
    key:=chr(0);
end;

procedure tsubcontractfm.subdateChange(Sender: TObject);
begin
  if trystrtodate(self.subdate.text,psubcontract.subdate) then
    self.subdate.font.color:=clnone
  else
    self.subdate.font.color:=clred;
end;

procedure tsubcontractfm.commentChange(Sender: TObject);
begin
  psubcontract.comment:=self.comment.text;
end;

procedure tsubcontractfm.reportClick(Sender: TObject);
begin
  psubcontract.skip:=subcontractfm.report.checked;
  price.onchange(sender);
end;

end.
