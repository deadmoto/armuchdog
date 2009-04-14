unit datamodel;
{*******************************************************************************
Модуль, содержащий структуру таблиц в MS SQL Server, а так же имена столбцов,
их длины и названия.
*******************************************************************************}

interface

type
{*******************************************************************************
Декларация служебного типа TField. table - указатель на имя таблицы (задаётся
родителем), column - имя столбца, caption - отображаемое название, width -
его ширина. Функция GetName возвращает имя стобца в формате [таблица].[столбец].
*******************************************************************************}
  tfield=packed record
  strict private
    table:^string;
    function getname:string;
  public
    column:string;
    caption:string;
    width:integer;
    property name:string read getname;
  end;

type
{*******************************************************************************
*******************************************************************************}
  tcontract=packed record
  public
    table:string;
    id:tfield;
    cnt:tfield;
    reg:tfield;
    datecnt:tfield;
    datelim:tfield;
    datercv:tfield;
    datereg:tfield;
    region:tfield;
    provider:tfield;
  end;

type
{*******************************************************************************
*******************************************************************************}
  tsubcontract=packed record
  public
    table:string;
    id:string;
    okved:string;
    cosgu:string;
    date:string;
    price:tfield;
    skip:string;
    comment:string;
  end;

type
{*******************************************************************************
*******************************************************************************}
  tregion=packed record
    table:string;
    id:tfield;
    name:tfield;
  end;

type
{*******************************************************************************
*******************************************************************************}
  tprovider=packed record
    table:string;
    id:tfield;
    name:tfield;
  end;

type
{*******************************************************************************
*******************************************************************************}
  tokved=packed record
    id:string;
    name:string;
  end;

const
  contract:tcontract=
{*******************************************************************************
Имплементация типа TContract. Данная таблица является регистром, хранящим
данные договоров.
*******************************************************************************}
    (
      table:'reestrdog';
      id:(table:@contract.table;column:'regn';caption:'№';width:8*8);
      cnt:(table:@contract.table;column:'n_dog';caption:'Номер дог.';width:8*8);
      reg:(table:@contract.table;column:'reg_n';caption:'Рег. номер';width:8*8);
      datecnt:(table:@contract.table;column:'data_dog';caption:'Дата договора';width:8*10);
      datelim:(table:@contract.table;column:'data_srok';caption:'Срок договора';width:8*10);
      datercv:(table:@contract.table;column:'data_post';caption:'Поступил';width:8*10);
      datereg:(table:@contract.table;column:'data_reg';caption:'Регистрация';width:8*10);
      region:(table:@contract.table;column:'fldid';caption:'Район';width:8*24);
      provider:(table:@contract.table;column:'id_supplier';caption:'Поставщик';width:8*24);
    );

  subcontract:tsubcontract=
{*******************************************************************************
Имплементация типа TSubcontract. Данная таблица является журналом, хранящим
финансовую детализацию договоров.
*******************************************************************************}
    (
      table:'subcontract';
      id:'subcontract.id';
      okved:'subcontract.nomencl';
      cosgu:'subcontract.code';
      date:'subcontract.subdate';
      price:(table:@subcontract.table;column:'price';caption:'Сумма';width:8*8);
      skip:'subcontract.report';
      comment:'subcontract.comment';
    );

  region:tregion=
{*******************************************************************************
*******************************************************************************}
    (
      table:'regioniddog';
      id:(table:@region.table;column:'fldid';caption:'№';width:8*8);
      name:(table:@region.table;column:'fldname';caption:'Наименование';width:8*12);
    );

  provider:tprovider=
{*******************************************************************************
*******************************************************************************}
    (
      table:'supplierdog';
      id:(table:@provider.table;column:'id_supplier';caption:'№';width:8*8);
      name:(table:@provider.table;column:'supplier';caption:'Наименование';width:8*12);
    );

  okved:tokved=
{*******************************************************************************
*******************************************************************************}
    (
    id:'nomencldog.id_nomencl';
    name:'nomencldog.name';
    );

implementation

function tfield.getname:string;
{*******************************************************************************
Функция GetName возвращает полное имя столбца в формате [таблица].[столбец].
Имя таблицы задаётся родителем.
*******************************************************************************}
begin
  result:=table^+'.'+column;
end;

end.
