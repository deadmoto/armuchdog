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

  cnt_id='reestrdog.regn';
  cnt_reg='reestrdog.reg_n';
  cnt_cnt='reestrdog.n_dog';
  cnt_datereg='reestrdog.data_reg';
  cnt_datecnt='reestrdog.data_dog';
  cnt_datepst='reestrdog.data_post';
  cnt_datelim='reestrdog.data_srok';

  sub_id='subcontract.id';
  sub_date='subcontract.subdate';
  region='regioniddog';
  provider='supplierdog';
  okved='nomencldog';
  cosgu='articledog';

implementation

end.
