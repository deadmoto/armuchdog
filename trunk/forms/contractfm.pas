unit contractfm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ComCtrls, Menus;

type
  tcontract = class(TForm)
    databox: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    regn: TEdit;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    reg_n: TEdit;
    GroupBox5: TGroupBox;
    n_dog: TEdit;
    GroupBox6: TGroupBox;
    id_supplier: TEdit;
    select: TButton;
    GroupBox7: TGroupBox;
    data_reg: TDateTimePicker;
    GroupBox8: TGroupBox;
    data_post: TDateTimePicker;
    GroupBox9: TGroupBox;
    GroupBox10: TGroupBox;
    data_dog: TDateTimePicker;
    data_srok: TDateTimePicker;
    StringGrid1: TStringGrid;
    fldid: TEdit;
    Button1: TButton;
    main: TMainMenu;
    N1: TMenuItem;
    commit: TMenuItem;
    N3: TMenuItem;
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure add;
  end;

var
  contract: tcontract;

implementation

{$R *.dfm}

procedure tcontract.add;
begin
  contract:=tcontract.create(owner);
  contract.commit.caption:='Добавить';
  contract.showmodal;
end;

procedure tcontract.N3Click(Sender: TObject);
begin
  self.destroy;
end;

end.
