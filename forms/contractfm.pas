unit contractfm;

interface

uses
//параметры процедур
  contracts,
//
  classes,
  controls,
  dialogs,
  stdctrls,
  extctrls,
  forms,
  menus,
  graphics,
  grids,
  mask,
  sysutils;

type
  tcontractform=class(tform)
    databox:tgroupbox;
    detailboxbox:tgroupbox;
    GroupBox1: tgroupbox;
    regn: TEdit;
    GroupBox3: tgroupbox;
    GroupBox4: tgroupbox;
    reg_n: TEdit;
    GroupBox5: tgroupbox;
    n_dog: TEdit;
    providerbox: TGroupBox;
    provider: TEdit;
    providerbtn: TButton;
    GroupBox7: tgroupbox;
    GroupBox8: tgroupbox;
    GroupBox9: tgroupbox;
    GroupBox10: tgroupbox;
    subctontractgrid: TStringGrid;
    fldid: TEdit;
    btnregion: TButton;
    main: TMainMenu;
    N1: TMenuItem;
    update: TMenuItem;
    discard: TMenuItem;
    insert: TMenuItem;
    data_dog: TMaskEdit;
    data_srok: TMaskEdit;
    data_post: TMaskEdit;
    data_reg: TMaskEdit;
    subcontractbox: tgroupbox;
    subcontractadd: TButton;
    subcontractupd: TButton;
    subcontractdel: TButton;
    sumbox: tgroupbox;
    sum: TEdit;
    Panel1: TPanel;
    procedure discardClick(Sender: TObject);
    procedure providerbtnClick(Sender: TObject);
    procedure btnregionClick(Sender: TObject);
    procedure reg_nChange(Sender: TObject);
    procedure n_dogChange(Sender: TObject);
    procedure reg_nKeyPress(Sender: TObject; var Key: Char);
    procedure data_srokChange(Sender: TObject);
    procedure data_regChange(Sender: TObject);
    procedure data_dogChange(Sender: TObject);
    procedure data_postChange(Sender: TObject);
    procedure insertClick(Sender: TObject);
    procedure updateClick(Sender: TObject);
    procedure subcontractaddClick(Sender: TObject);
    procedure subcontractupdClick(Sender: TObject);
    procedure subctontractgridSelectCell(Sender: TObject; ACol,
      ARow: Integer; var CanSelect: Boolean);
    procedure subcontractdelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure subctontractgridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    selected:integer;
    contract:tcontract;
    function checklimit:boolean;
    function checkfill:boolean;
    procedure add;
    procedure edit(regn:integer);
    procedure fill;
  end;

var
  contractform:tcontractform;

implementation

uses
  defs,
  balance,
  providers,
  regions,
  providerdlg,
  regiondlg,
  subcontractdlg,
  progressdlg,
  util;

{$R *.dfm}

function tcontractform.checklimit:boolean;
var
  i,j:integer;
  limit:real;
begin
  result:=true;
  for i:=0 to length(contract.subcontract)-1 do
    if length(contract.subcontract[i].nomencl)>0 then
      begin
        limit:=defs.contractlimit;
        limit:=limit-getbalance(contract.regn,contract.subcontract[i].nomencl,contract.subcontract[i].subdate);
        for j:=0 to length(contract.subcontract)-1 do
          if (contract.subcontract[i].nomencl=contract.subcontract[j].nomencl)
          and (not contract.subcontract[j].skip)
          and (quarter(contract.subcontract[i].subdate)=quarter(contract.subcontract[j].subdate))
          and (year(contract.subcontract[i].subdate)=year(contract.subcontract[j].subdate)) then
            limit:=limit-contract.subcontract[j].price;
      end;
  if limit<0 then
    result:=false;
end;

function tcontractform.checkfill;
begin
  result:=(contract.data_dog<>0) and (length(contract.n_dog)>0);
end;

procedure tcontractform.fill;
var
  i:integer;
  pricefull:real;
begin
  pricefull:=0;
  if length(contract.subcontract)>0 then
    begin
      subctontractgrid.rowcount:=length(self.contract.subcontract)+1;
      subctontractgrid.colcount:=5;
      subctontractgrid.fixedrows:=1;
      subctontractgrid.cols[0].strings[0]:='Дата';
      subctontractgrid.cols[1].strings[0]:='Сумма';
      subctontractgrid.cols[2].strings[0]:='ОКВЭД';
      subctontractgrid.cols[3].strings[0]:='КОСГУ';
      subctontractgrid.cols[4].strings[0]:='Комментарий';
      subctontractgrid.colwidths[0]:=8*8;
      subctontractgrid.colwidths[1]:=8*8;
      subctontractgrid.colwidths[2]:=8*8;
      subctontractgrid.colwidths[3]:=8*8;
      subctontractgrid.colwidths[4]:=subctontractgrid.width-(subctontractgrid.colwidths[0]+subctontractgrid.colwidths[1]+subctontractgrid.colwidths[2]+subctontractgrid.colwidths[3]+8);
      for i:=0 to length(self.contract.subcontract)-1 do
        begin
          subctontractgrid.rows[i+1].strings[0]:=datetostr(contract.subcontract[i].subdate);
          subctontractgrid.rows[i+1].strings[1]:=floattostr(contract.subcontract[i].price);
          subctontractgrid.rows[i+1].strings[2]:=contract.subcontract[i].nomencl;
          subctontractgrid.rows[i+1].strings[3]:=contract.subcontract[i].code;
          subctontractgrid.rows[i+1].strings[4]:=contract.subcontract[i].comment;
          pricefull:=pricefull+contract.subcontract[i].price;
        end;
    end
  else
    begin
      subctontractgrid.rowcount:=0;
      subctontractgrid.colcount:=0;
      subctontractgrid.colwidths[0]:=0;
    end;
  sum.text:=floattostr(pricefull);
  subcontractupd.enabled:=length(contract.subcontract)>0;
  subcontractdel.enabled:=length(contract.subcontract)>0;
  data_reg.enabled:=checklimit;
end;

procedure tcontractform.add;
begin
  self:=tcontractform.create(owner);
  self.insert.enabled:=true;
  self.btnregion.enabled:=true;
  self.showmodal;
end;

procedure tcontractform.edit(regn:integer);
begin
  self:=tcontractform.create(owner);
  self.update.enabled:=true;
  self.contract:=contracts.fetch(regn);
  self.regn.text:=inttostr(contract.regn);
  self.fldid.text:=regions.byid(contract.region);
  self.reg_n.text:=inttostr(contract.reg_n);
  self.n_dog.text:=contract.n_dog;
  provider.text:=providers.byid(contract.id_supplier);
  if contract.data_reg<>0 then
    begin
      self.data_reg.enabled:=true;
      self.data_reg.text:=datetostr(contract.data_reg);
    end;
  if contract.data_post<>0 then
    begin
      self.data_post.enabled:=true;
      self.data_post.text:=datetostr(contract.data_post);
    end;
  if contract.data_dog<>0 then
    begin
      self.data_dog.enabled:=true;
      self.data_dog.text:=datetostr(contract.data_dog);
    end;
  if contract.data_srok<>0 then
    begin
      self.data_srok.enabled:=true;
      self.data_srok.text:=datetostr(contract.data_srok);
    end;
  showmodal;
end;

procedure tcontractform.providerbtnClick(Sender: TObject);
begin
  contract.id_supplier:=providerdlg.select;
  if contract.id_supplier<>-1 then
    provider.text:=providers.byid(contract.id_supplier);
end;

procedure tcontractform.Button1Click(Sender: TObject);
begin
  subcontractdlg.showeditor(contract);
  fill;
end;

procedure tcontractform.btnregionClick(Sender: TObject);
begin
  contract.region:=regiondlg.select;
  if contract.region<>0 then
    begin
      contract.regn:=contracts.maxregn(contract.region)+1;
      regn.text:=inttostr(contract.regn);
      fldid.text:=regions.byid(contract.region);
    end;
end;

procedure tcontractform.reg_nChange(Sender: TObject);
begin
  trystrtoint(self.reg_n.text,self.contract.reg_n);
end;

procedure tcontractform.n_dogChange(Sender: TObject);
begin
  self.contract.n_dog:=self.n_dog.text;
end;

procedure tcontractform.reg_nKeyPress(Sender: TObject; var Key: Char);
begin
  if not charinset(key,['0'..'9',#8]) then
    key:=chr(0);
end;

procedure tcontractform.data_dogChange(Sender: TObject);
begin
  if trystrtodate(self.data_dog.text,self.contract.data_dog) then
    self.data_dog.font.color:=clnone
  else
    self.data_dog.font.color:=clred;
end;

procedure tcontractform.data_srokChange(Sender: TObject);
begin
  if trystrtodate(self.data_srok.text,self.contract.data_srok) then
    self.data_srok.font.color:=clnone
  else
    self.data_srok.font.color:=clred;
end;

procedure tcontractform.data_postChange(Sender: TObject);
begin
  if trystrtodate(self.data_post.text,self.contract.data_post) then
    self.data_post.font.color:=clnone
  else
    self.data_post.font.color:=clred;
end;

procedure tcontractform.data_regChange(Sender: TObject);
begin
  if trystrtodate(self.data_reg.text,self.contract.data_reg) then
    self.data_reg.font.color:=clnone
  else
    self.data_reg.font.color:=clred;
  self.reg_n.enabled:=self.data_reg.font.color=clnone;
end;

procedure tcontractform.subcontractaddClick(Sender: TObject);
var
  subcontract:tsubcontract;
begin
  subcontract.subdate:=contract.data_dog;
  subcontractdlg.showeditor(contract);
  fill;
end;

procedure tcontractform.subcontractupdClick(Sender: TObject);
begin
  if (selected>0) and (selected<=length(contract.subcontract)) then
    begin
      subcontractdlg.showeditor(contract,selected-1);
      fill;
    end;
end;

procedure tcontractform.subctontractgridDblClick(Sender: TObject);
begin
  if (selected>0) and (selected<=length(contract.subcontract)) then
    begin
      subcontractdlg.showeditor(contract,selected-1);
      fill;
    end;
end;

procedure tcontractform.subcontractdelClick(Sender: TObject);
var
  i:integer;
begin
  for i:=selected to length(self.contract.subcontract)-1 do
    self.contract.subcontract[i-1]:=self.contract.subcontract[i];
  setlength(self.contract.subcontract,length(self.contract.subcontract)-1);
  fill;
end;

procedure tcontractform.subctontractgridSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  selected:=arow;
end;

procedure tcontractform.insertClick(Sender: TObject);
begin
  if checkfill then
    begin
      contracts.insert(self.contract);
      close;
    end
  else
    showmessage('Пожалуйста введите номер и дату договора!!!');
end;

procedure tcontractform.updateClick(Sender: TObject);
begin
  if checkfill then
    begin
      contracts.update(self.contract);
      close;
    end
  else
    showmessage('Пожалуйста введите номер и дату договора!!!');
end;

procedure tcontractform.discardClick(Sender: TObject);
begin
  self.close;
end;

procedure tcontractform.FormShow(Sender: TObject);
begin
  fill;
end;

end.
