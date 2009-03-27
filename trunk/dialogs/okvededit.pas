unit okvededit;

interface

uses
  nomencls,
  windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

procedure insert;
procedure update(nomencl:tnomencl);

type
  tokveded = class(TForm)
    okvedbox: TGroupBox;
    namebox: TGroupBox;
    okved: TEdit;
    name: TEdit;
    btnbox: TGroupBox;
    ok: TButton;
    cancel: TButton;
    procedure okvedKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses cosguedit, cosgufm;

{$R *.dfm}

procedure insert;
var
  main:tokveded;
  nomencl:tnomencl;
begin
  main:=tokveded.create(application.owner);
  main.caption:='Добавление статьи КОСГУ';
  main.ok.caption:='Добавить';
  if main.showmodal=mrok then
    begin
      nomencl.id:=main.okved.text;
      nomencl.name:=main.name.text;
      nomencls.insert(nomencl);
    end;
end;

procedure update(nomencl:tnomencl);
var
  main:tokveded;
begin
  main:=tokveded.create(application.owner);
  main.caption:='Изменение статьи КОСГУ';
  main.ok.caption:='Изменить';
  main.okved.text:=nomencl.id;
  main.name.text:=nomencl.name;
  if main.showmodal=mrok then
    begin
      nomencl.id:=main.okved.text;
      nomencl.name:=main.name.text;
      nomencls.update(nomencl);
    end;
end;

procedure tokveded.okvedKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8,'.']) then
    key:=chr(0);
end;

end.
