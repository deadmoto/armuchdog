unit cosguedit;

interface

uses
  cosgus,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

function insert(owner:tcomponent):boolean;
function update(owner:tcomponent;cosgu:tcosgu):boolean;

type
  tcosgued = class(TForm)
    cosgubox: TGroupBox;
    namebox: TGroupBox;
    cosgu: TEdit;
    name: TEdit;
    btnbox: TGroupBox;
    ok: TButton;
    cancel: TButton;
    procedure cosguKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

function insert(owner:tcomponent):boolean;
var
  cosgued:tcosgued;
  cosgu:tcosgu;
begin
  result:=false;
  cosgued:=tcosgued.create(owner);
  cosgued.caption:='Добавление статьи КОСГУ';
  cosgued.ok.caption:='Добавить';
  if cosgued.showmodal=mrok then
    begin
      cosgu.id:=cosgued.cosgu.text;
      cosgu.name:=cosgued.name.text;
      cosgus.insert(cosgu);
      result:=true;
    end;
end;

function update(owner:tcomponent;cosgu:tcosgu):boolean;
var
  cosgued:tcosgued;
begin
  result:=false;
  cosgued:=tcosgued.create(owner);
  cosgued.caption:='Изменение статьи КОСГУ';
  cosgued.ok.caption:='Изменить';
  cosgued.cosgu.readonly:=true;
  cosgued.cosgu.text:=cosgu.id;
  cosgued.name.text:=cosgu.name;
  if cosgued.showmodal=mrok then
    begin
      cosgu.id:=cosgued.cosgu.text;
      cosgu.name:=cosgued.name.text;
      cosgus.update(cosgu);
      result:=true;
    end;
end;

procedure tcosgued.cosguKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8]) then
    key:=chr(0);
end;

end.
