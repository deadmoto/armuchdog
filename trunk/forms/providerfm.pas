unit providerfm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls;

type
  Tproviderform = class(TForm)
    grid: TDBGrid;
    popup: TPopupMenu;
    add: TMenuItem;
    N2: TMenuItem;
    upd: TMenuItem;
    N4: TMenuItem;
    del: TMenuItem;
    box: TGroupBox;
    search: TEdit;
    up: TButton;
    down: TButton;
    procedure addClick(Sender: TObject);
    procedure updClick(Sender: TObject);
    procedure delClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure upClick(Sender: TObject);
    procedure downClick(Sender: TObject);
    procedure searchChange(Sender: TObject);
  private
    { Private declarations }
  public
    procedure fill;overload;
    procedure fill(text:string);overload;
  end;

var
  providerform: Tproviderform;

implementation

uses
  datamodule,
  provideredit,
  util;

{$R *.dfm}

procedure tproviderform.fill;
begin
  search.text:='';
  dmod.query.sql.text:='SELECT * FROM SupplierDog';
  dmod.query.open;
  grid.columns.items[0].title.caption:='ID';
  grid.columns.items[1].title.caption:='���������';
  grid.columns.items[0].width:=7*8;
  grid.columns.items[1].width:=width-grid.columns.items[0].width-48;
end;

procedure tproviderform.fill(text:string);
begin
  dmod.query.sql.text:='SELECT * FROM SupplierDog WHERE SUPPLIER LIKE '+quotedstr('%'+text+'%');
  dmod.query.open;
  grid.columns.items[0].title.caption:='ID';
  grid.columns.items[1].title.caption:='���������';
  grid.columns.items[0].width:=7*8;
  grid.columns.items[1].width:=width-grid.columns.items[0].width-48;
end;

procedure Tproviderform.addClick(Sender: TObject);
begin
  provdlg:=tprovdlg.create(owner);
  provdlg.caption:='���������� ����������';
  provdlg.ok.caption:='��������';
  if provdlg.showmodal=mrok then
    begin
      dmod.query.sql.text:='INSERT INTO SupplierDog (SUPPLIER) VALUES (:provider)';
      dmod.query.parameters.parambyname('provider').value:=provdlg.prov.text;
      dmod.query.execsql;
      fill;
      dmod.query.last;
    end;
end;

procedure Tproviderform.updClick(Sender: TObject);
begin
  provdlg:=tprovdlg.create(owner);
  provdlg.caption:='��������� ����������';
  provdlg.ok.caption:='��������';
  provdlg.prov.text:=trim(grid.fields[1].text);
  if provdlg.showmodal=mrok then
    begin
      dmod.query.sql.text:='UPDATE SupplierDog SET SUPPLIER=:provider WHERE ID_SUPPLIER='+grid.fields[0].text;
      dmod.query.parameters.parambyname('provider').value:=provdlg.prov.text;
      dmod.query.execsql;
      fill;
    end;
end;

procedure Tproviderform.delClick(Sender: TObject);
begin
  if messagebox(self.handle,pchar('�� ������������� ������ ������� ����������?'),pchar(self.caption),mb_okcancel)=id_ok then
    begin
      dmod.query.sql.text:='DELETE FROM SupplierDog WHERE ID_SUPPLIER='+grid.fields[0].text;
      dmod.query.execsql;
      fill;
    end
end;

procedure Tproviderform.FormShow(Sender: TObject);
begin
  fill;
end;

procedure Tproviderform.upClick(Sender: TObject);
begin
  dmod.query.first;
end;

procedure Tproviderform.downClick(Sender: TObject);
begin
  dmod.query.last;
end;

procedure Tproviderform.searchChange(Sender: TObject);
begin
  fill(search.text);
end;

end.
