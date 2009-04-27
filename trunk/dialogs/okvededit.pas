unit okvededit;

interface

uses
  sizers,
  windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

procedure insert;
procedure update(sizer:tsizer);

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
  sizer:tsizer;
begin
  main:=tokveded.create(application.owner);
  main.caption:='Добавление статьи КОСГУ';
  main.ok.caption:='Добавить';
  if main.showmodal=mrok then
    begin
      sizer.id:=main.okved.text;
      sizer.name:=main.name.text;
      sizers.insert(sizer);
    end;
end;

procedure update;
var
  main:tokveded;
begin
  main:=tokveded.create(application.owner);
  main.caption:='Изменение статьи КОСГУ';
  main.ok.caption:='Изменить';
  main.okved.text:=sizer.id;
  main.name.text:=sizer.name;
  if main.showmodal=mrok then
    begin
      sizer.id:=main.okved.text;
      sizer.name:=main.name.text;
      sizers.update(sizer);
    end;
end;

procedure tokveded.okvedKeyPress(Sender: TObject; var Key: Char);
begin
  if not charinset(key,['0'..'9',#8,'.']) then
    key:=chr(0);
end;

end.
