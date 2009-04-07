unit model;

interface

type
  tcontract=record
    id:string;
    reg:string;
    cnt:string;
    datereg:string;
    datecnt:string;
    datepst:string;
    datelim:string;
  end;

type
  tsubcontract=record
    id:string;
    okved:string;
    cosgu:string;
    date:string;
    price:string;
    skip:string;
    comment:string;
  end;

type
  tokved=record
    id:string;
    name:string;
  end;

const
  contract:tcontract=
    (
      id:'reestrdog.regn';
      reg:'reestrdog.reg_n';
      cnt:'reestrdog.n_dog';
      datereg:'reestrdog.data_reg';
      datecnt:'reestrdog.data_dog';
      datepst:'reestrdog.data_post';
      datelim:'reestrdog.data_srok';
    );

  subcontract:tsubcontract=
    (
    id:'subcontract.id';
    okved:'subcontract.nomencl';
    cosgu:'subcontract.code';
    date:'subcontract.subdate';
    price:'subcontract.price';
    skip:'subcontract.report';
    comment:'subcontract.comment';
    );

  okved:tokved=
    (
    id:'nomencldog.id_nomencl';
    name:'nomencldog.name';
    );

implementation

end.
