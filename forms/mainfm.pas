unit mainfm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, ComCtrls, XPMan;

type
  tmain = class(TForm)
    mainmenu: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    status: TStatusBar;
    grid: TStringGrid;
    Button1: TButton;
    mainpanel: TPanel;
    Panel2: TPanel;
    exit: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    filters: TTabSheet;
    all: TButton;
    pbsbox: TGroupBox;
    numberbox: TGroupBox;
    number: TEdit;
    providerbox: TGroupBox;
    provider: TButton;
    pbs: TButton;
    procedure exitClick(Sender: TObject);
    procedure allClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure providerClick(Sender: TObject);
    procedure pbsClick(Sender: TObject);
    procedure numberChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure gridSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    ipbs,iprovider,selected:integer;
    procedure fill;
  end;

var
  main: tmain;

implementation

uses
  datamodule,
  contracts,
  providers,
  regions,
  providerdlg,
  regiondlg,
  contractfm,
  providerfm,
  okvedfm,
  cosgufm,
  reportokved,
  reportcosgu,
  summaryrpt,
  util;

{$R *.dfm}

procedure tmain.gridSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  selected:=arow;
end;

procedure tmain.fill;
var
  i,j:integer;
  price:real;
begin
  j:=0;price:=0;
  main:=tmain.create(owner);
  grid.colcount:=10;
  grid.rowcount:=1;
  grid.colwidths[j]:=8*8;inc(j);
  grid.colwidths[j]:=8*8;inc(j);
  grid.colwidths[j]:=8*8;inc(j);
  grid.colwidths[j]:=8*10;inc(j);
  grid.colwidths[j]:=8*10;inc(j);
  grid.colwidths[j]:=8*10;inc(j);
  grid.colwidths[j]:=8*10;inc(j);
  grid.colwidths[j]:=8*16;inc(j);
  grid.colwidths[j]:=8*8;inc(j);
  grid.colwidths[j]:=8*8;inc(j);
  j:=0;
  grid.cells[j,0]:='№';inc(j);
  grid.cells[j,0]:='Рег. номер';inc(j);
  grid.cells[j,0]:='Номер дог.';inc(j);
  grid.cells[j,0]:='Дата договора';inc(j);
  grid.cells[j,0]:='Срок договора';inc(j);
  grid.cells[j,0]:='Поступил';inc(j);
  grid.cells[j,0]:='Регистрация';inc(j);
  grid.cells[j,0]:='Район';inc(j);
  grid.cells[j,0]:='Контрагент';inc(j);
  grid.cells[j,0]:='Сумма';inc(j);
  grid.colwidths[8]:=grid.width-(32+grid.colwidths[0]+grid.colwidths[1]+
                     grid.colwidths[2]+grid.colwidths[3]+grid.colwidths[4]+
                     grid.colwidths[5]+grid.colwidths[6]+grid.colwidths[7]+grid.colwidths[9]);
  dmod.query.sql.text:='SELECT ReestrDog.REGN,ReestrDog.REG_N,ReestrDog.N_DOG,'+
                       'ReestrDog.DATA_DOG,ReestrDog.DATA_SROK,ReestrDog.DATA_POST,'+
                       'ReestrDog.DATA_REG,ReestrDog.FLDID,ReestrDog.ID_SUPPLIER,'+
                       'SUM(subcontract.price) AS price'+#13+
                       'FROM ReestrDog'+#13+
                       'INNER JOIN subcontract ON subcontract.id = ReestrDog.REGN'+#13+
                       'WHERE (ReestrDog.REGN LIKE '+quotedstr('%'+number.text+'%')+' '+
                       'OR ReestrDog.REG_N LIKE '+quotedstr('%'+number.text+'%')+' '+
                       'OR ReestrDog.N_DOG LIKE '+quotedstr('%'+number.text+'%')+')'+#13;
  if ipbs>0 then
    dmod.query.sql.text:=dmod.query.sql.text+
                         'AND ReestrDog.FLDID='+inttostr(ipbs)+#13;
  if iprovider>0 then
    dmod.query.sql.text:=dmod.query.sql.text+
                         'AND ReestrDog.ID_SUPPLIER='+inttostr(iprovider)+#13;
  dmod.query.sql.text:=dmod.query.sql.text+
                       'GROUP BY ReestrDog.REGN,ReestrDog.REG_N,ReestrDog.N_DOG,'+
                       'ReestrDog.DATA_DOG,ReestrDog.DATA_SROK,ReestrDog.DATA_POST,'+
                       'ReestrDog.DATA_REG,ReestrDog.FLDID,ReestrDog.ID_SUPPLIER';
  dmod.query.open;
  grid.rowcount:=dmod.query.recordcount+1;
  for i:=0 to dmod.query.recordcount-1 do
    begin
      j:=0;
      grid.cells[j,i+1]:=dmod.query.fieldbyname('regn').value;inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('reg_n').asstring;inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('n_dog').asstring;inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('data_dog').asstring;inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('data_srok').asstring;inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('data_post').asstring;inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('data_reg').asstring;inc(j);
      grid.cells[j,i+1]:=regions.byid(dmod.query.fieldbyname('fldid').asinteger);inc(j);
      grid.cells[j,i+1]:=providers.byid(dmod.query.fieldbyname('id_supplier').asinteger);inc(j);
      grid.cells[j,i+1]:=dmod.query.fieldbyname('price').asstring;inc(j);
      price:=price+dmod.query.fieldbyname('price').value;
      dmod.query.next;
    end;
  if grid.rowcount>1 then
    grid.fixedrows:=1;
  status.panels.items[3].text:=inttostr(grid.rowcount-1);
  status.panels.items[5].text:=floattostr(price);
end;

procedure tmain.allClick(Sender: TObject);
begin
  number.text:='';
  pbs.caption:='Не выбран';
  provider.caption:='Не выбран';
  iprovider:=-1;
  ipbs:=-1;
  fill;
  status.panels.items[1].text:=inttostr(grid.rowcount-1);
end;

procedure tmain.providerClick(Sender: TObject);
begin
  iprovider:=providerdlg.select;
  if iprovider>=0 then
    if length(providers.byid(iprovider))>45 then
      provider.caption:=copy(providers.byid(iprovider),0,42)+'...'
    else
      provider.caption:=providers.byid(iprovider);
  fill;
end;

procedure tmain.pbsClick(Sender: TObject);
begin
  ipbs:=regiondlg.select;
  if ipbs>=0 then
    pbs.caption:=regions.byid(ipbs);
  fill;
end;

procedure tmain.numberChange(Sender: TObject);
begin
  fill;
end;

procedure tmain.FormShow(Sender: TObject);
begin
  fill;
  status.panels.items[1].text:=inttostr(grid.rowcount-1);
end;

procedure tmain.Button1Click(Sender: TObject);
begin
  contractform.add;
  fill;
end;

procedure tmain.Button3Click(Sender: TObject);
begin
  contractform.edit(strtoint(grid.cells[0,selected]));
  fill;
end;

procedure tmain.Button4Click(Sender: TObject);
begin
  if messagebox(handle,pchar('Вы действительно хотите удалить договор '+grid.cells[0,selected]+'?'),pchar(caption),mb_yesno)=mryes then
    contracts.delete(strtoint(grid.cells[0,selected]));
  fill;
end;

procedure tmain.Button5Click(Sender: TObject);
begin
  showmessage('Доделаю во вторник');
end;

procedure tmain.Button6Click(Sender: TObject);
begin
//говнокод
  providerform:=tproviderform.create(owner);
  providerform.showmodal;
end;

procedure tmain.Button8Click(Sender: TObject);
begin
  cosgufm.showeditor;
end;

procedure tmain.Button7Click(Sender: TObject);
begin
  okvedfm.showeditor;
end;

procedure tmain.Button9Click(Sender: TObject);
begin
  summaryrpt.showreport;
end;

procedure tmain.Button10Click(Sender: TObject);
begin
  reportokved.showreport;
end;

procedure tmain.Button11Click(Sender: TObject);
begin
//переделать
  report_cosgu.showmodal;
end;

procedure tmain.exitClick(Sender: TObject);
begin
  close;
end;

end.
