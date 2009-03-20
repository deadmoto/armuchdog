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
    procedure nomenclbtnClick(Sender: TObject);
    procedure codebtnClick(Sender: TObject);
    procedure priceChange(Sender: TObject);
    procedure priceKeyPress(Sender: TObject; var Key: Char);
    procedure subdateChange(Sender: TObject);
    procedure commentChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure add(subcontract:psubcontract;result:pbool);
    procedure upd(subcontract:psubcontract);
  end;

var
  subcontractfm:tsubcontractfm;
  vsubcontract:^tsubcontract;


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

procedure tsubcontractfm.add(subcontract:psubcontract;result:pbool);
var
  csubcontract:tsubcontract;
begin
  subcontractfm:=tsubcontractfm.create(owner);
  vsubcontract:=@csubcontract;
  vsubcontract^.subdate:=0;
  vsubcontract^.price:=0;
  subcontractfm.ok.caption:='Добавить';
  subcontractfm.subdate.text:=datetostr(subcontract.subdate);
  if subcontractfm.showmodal=mrok then
    begin
      subcontract.nomencl:=vsubcontract^.nomencl;
      subcontract.code:=vsubcontract^.code;
      subcontract.subdate:=vsubcontract^.subdate;
      subcontract.price:=vsubcontract^.price;
      subcontract.comment:=vsubcontract^.comment;
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
  subcontractfm.comment.text:=vsubcontract^.comment;
  if subcontractfm.showmodal=mrok then
    begin
      subcontract.nomencl:=vsubcontract^.nomencl;
      subcontract.code:=vsubcontract^.code;
      subcontract.subdate:=vsubcontract^.subdate;
      subcontract.price:=vsubcontract^.price;
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
      if vsubcontract^.price>defs.contractlimit then
        self.balance.font.color:=clred
      else
        self.balance.font.color:=clnone;
      self.balance.text:=floattostr(defs.contractlimit-getbalance(vsubcontract^.nomencl,contractform.contract.regn)-vsubcontract^.price);
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

end.
