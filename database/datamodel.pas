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
Декларация служебной структуры TContract. table - содержит имя таблицы
(применяется потомками), id - внутренний номер договора, cnt - номер договора,
reg - регистрационный номер договора, datecnt - дата договора, datelim -
срок договора, datercv - дата поступления, datereg - дата регистрации, region -
район, provider - контрагент.
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
Декларация служебной структуры TSubcontract. table - содержит имя таблицы
(применяется потомками), id - номер договора, okved - ОКВЭД, cosgu - КОСГУ,
date - дата детализации, price - сумма детализации, skip - триггер отображения в
отчётах, comment - текстовое пояснение.
*******************************************************************************}
  tsubcontract=packed record
  public
    table:string;
    id:tfield;
    okved:tfield;
    cosgu:tfield;
    date:tfield;
    price:tfield;
    skip:tfield;
    comment:tfield;
  end;

type
{*******************************************************************************
Декларация служебной структуры TRegion. table - содержит имя таблицы (применяется
потомками), id - идентификатор, name - наименование.
*******************************************************************************}
  tregion=packed record
    table:string;
    id:tfield;
    name:tfield;
  end;

type
{*******************************************************************************
Декларация служебной структуры TProvider. table - содержит имя таблицы (применяется
потомками), id - идентификатор, name - наименование.
*******************************************************************************}
  tprovider=packed record
    table:string;
    id:tfield;
    name:tfield;
  end;

type
{*******************************************************************************
Декларация служебной структуры TOkved. table - содержит имя таблицы (применяется
потомками), id - идентификатор, name - наименование.
*******************************************************************************}
  tsizer=packed record
    table:string;
    id:tfield;
    name:tfield;
  end;

type
{*******************************************************************************
Декларация служебной структуры TCosgu. table - содержит имя таблицы (применяется
потомками), id - идентификатор, name - наименование.
*******************************************************************************}
  tcosgu=packed record
    table:string;
    id:tfield;
    name:tfield;
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
      id:(table:@subcontract.table;column:'id';caption:'№';width:8*8);
      okved:(table:@subcontract.table;column:'nomencl';caption:'ОКВЕД';width:8*8);
      cosgu:(table:@subcontract.table;column:'code';caption:'КОСГУ';width:8*8);
      date:(table:@subcontract.table;column:'subdate';caption:'Дата';width:8*10);
      price:(table:@subcontract.table;column:'price';caption:'Сумма';width:8*10);
      skip:(table:@subcontract.table;column:'report';caption:'Скрывать в отчётах';width:8*8);
      comment:(table:@subcontract.table;column:'comment';caption:'Комментарий';width:8*8);
    );

  region:tregion=
{*******************************************************************************
*******************************************************************************}
    (
      table:'regioniddog';
      id:(table:@region.table;column:'fldid';caption:'№';width:8*8);
      name:(table:@region.table;column:'fldname';caption:'Наименование ПБС';width:8*13);
    );

  provider:tprovider=
{*******************************************************************************
*******************************************************************************}
    (
      table:'supplierdog';
      id:(table:@provider.table;column:'id_supplier';caption:'№';width:8*8);
      name:(table:@provider.table;column:'supplier';caption:'Наименование';width:8*12);
    );

  sizer:tsizer=
{*******************************************************************************
*******************************************************************************}
    (
      table:'nomencldog';
      id:(table:@sizer.table;column:'id_nomencl';caption:'№';width:8*8);
      name:(table:@sizer.table;column:'name';caption:'Наименование ОКВЭД';width:8*8);
    );

  cosgu:tcosgu=
{*******************************************************************************
*******************************************************************************}
    (
      table:'articledog';
      id:(table:@cosgu.table;column:'cosgu';caption:'№';width:8*8);
      name:(table:@cosgu.table;column:'name_artic';caption:'Наименование';width:8*8);
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
