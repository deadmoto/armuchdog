object DM: TDM
  OldCreateOrder = True
  Left = 478
  Top = 330
  Height = 572
  Width = 448
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=sa;Data Source=SQLSub'
    ConnectionTimeout = 0
    LoginPrompt = False
    Provider = 'MSDASQL.1'
    Left = 32
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 32
    Top = 120
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select ReestrDog.Regn, ReestrDog.n_dog, ReestrDog.data_dog, Rees' +
        'trDog.data_post, ReestrDog.data_reg, RegionIDDog.fldname, Reestr' +
        'Dog.reg_n, SupplierDog.supplier, ReestrDog.sum_dog_all'
      'from ReestrDog, RegionIDDog, SupplierDog'
      
        'where (ReestrDog.fldid=RegionIDDog.fldid) and (ReestrDog.id_supp' +
        'lier=SupplierDog.id_supplier)'
      'order by ReestrDog.data_dog, ReestrDog.n_dog')
    Left = 32
    Top = 72
    object ADOQuery1Regn: TLargeintField
      FieldName = 'Regn'
    end
    object ADOQuery1n_dog: TStringField
      FieldName = 'n_dog'
      FixedChar = True
      Size = 25
    end
    object ADOQuery1data_dog: TDateTimeField
      FieldName = 'data_dog'
    end
    object ADOQuery1data_post: TDateTimeField
      FieldName = 'data_post'
    end
    object ADOQuery1data_reg: TDateTimeField
      FieldName = 'data_reg'
    end
    object ADOQuery1fldname: TStringField
      FieldName = 'fldname'
      FixedChar = True
      Size = 100
    end
    object ADOQuery1reg_n: TIntegerField
      FieldName = 'reg_n'
    end
    object ADOQuery1supplier: TStringField
      FieldName = 'supplier'
      FixedChar = True
      Size = 130
    end
    object ADOQuery1sum_dog_all: TFloatField
      FieldName = 'sum_dog_all'
    end
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select fldid, fldname'
      'from regioniddog')
    Left = 96
    Top = 72
    object ADOQuery2fldid: TWordField
      FieldName = 'fldid'
    end
    object ADOQuery2fldname: TStringField
      FieldName = 'fldname'
      FixedChar = True
      Size = 100
    end
  end
  object ADOQuery3: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ID_NOMENCL, NAME, NAME_SUBJ'
      'from nomencldog'
      'order by ID_NOMENCL')
    Left = 160
    Top = 72
    object ADOQuery3ID_NOMENCL: TStringField
      FieldName = 'ID_NOMENCL'
      FixedChar = True
      Size = 17
    end
    object ADOQuery3NAME: TStringField
      FieldName = 'NAME'
      FixedChar = True
      Size = 244
    end
    object ADOQuery3NAME_SUBJ: TStringField
      FieldName = 'NAME_SUBJ'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 96
    Top = 120
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 160
    Top = 120
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 224
    Top = 120
  end
  object ReestrTb: TTable
    DatabaseName = 'SQLSub'
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'REGN'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'REG_N'
        DataType = ftInteger
      end
      item
        Name = 'N_DOG'
        Attributes = [faFixed]
        DataType = ftString
        Size = 25
      end
      item
        Name = 'DATA_REG'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_POST'
        DataType = ftDateTime
      end
      item
        Name = 'FLDID'
        DataType = ftSmallint
      end
      item
        Name = 'DATA_DOG'
        DataType = ftDateTime
      end
      item
        Name = 'DATA_SROK'
        DataType = ftDateTime
      end
      item
        Name = 'STATUS'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'ID_SUPPLIER'
        DataType = ftInteger
      end
      item
        Name = 'ID_NOMENCL1'
        Attributes = [faFixed]
        DataType = ftString
        Size = 17
      end
      item
        Name = 'SUM_DOG1'
        DataType = ftFloat
      end
      item
        Name = 'COSGU1'
        DataType = ftFloat
      end
      item
        Name = 'ID_NOMENCL2'
        Attributes = [faFixed]
        DataType = ftString
        Size = 17
      end
      item
        Name = 'SUM_DOG2'
        DataType = ftFloat
      end
      item
        Name = 'COSGU2'
        DataType = ftFloat
      end
      item
        Name = 'ID_NOMENCL3'
        Attributes = [faFixed]
        DataType = ftString
        Size = 17
      end
      item
        Name = 'SUM_DOG3'
        DataType = ftFloat
      end
      item
        Name = 'COSGU3'
        DataType = ftFloat
      end
      item
        Name = 'ID_NOMENCL4'
        Attributes = [faFixed]
        DataType = ftString
        Size = 17
      end
      item
        Name = 'SUM_DOG4'
        DataType = ftFloat
      end
      item
        Name = 'COSGU4'
        DataType = ftFloat
      end
      item
        Name = 'ID_NOMENCL5'
        Attributes = [faFixed]
        DataType = ftString
        Size = 17
      end
      item
        Name = 'SUM_DOG5'
        DataType = ftFloat
      end
      item
        Name = 'COSGU5'
        DataType = ftFloat
      end
      item
        Name = 'SUM_DOG_ALL'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_ReestrDog'
        Fields = 'REGN'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'dbo.ReestrDog'
    Left = 32
    Top = 192
  end
  object ReestrDS: TDataSource
    DataSet = ReestrTb
    Left = 32
    Top = 240
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 288
    Top = 120
  end
  object ADOQuery5: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select cosgu, name_artic'
      'from articledog')
    Left = 288
    Top = 72
    object ADOQuery5cosgu: TLargeintField
      FieldName = 'cosgu'
    end
    object ADOQuery5name_artic: TStringField
      FieldName = 'name_artic'
      FixedChar = True
      Size = 100
    end
  end
  object ADOQuery4: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select id_supplier, supplier'
      'from supplierdog')
    Left = 224
    Top = 72
    object ADOQuery4id_supplier: TIntegerField
      FieldName = 'id_supplier'
    end
    object ADOQuery4supplier: TStringField
      FieldName = 'supplier'
      FixedChar = True
      Size = 130
    end
  end
  object NomenclTb: TTable
    DatabaseName = 'SQLSub'
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'ID_NOMENCL'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 17
      end
      item
        Name = 'UNIT_MEASU'
        Attributes = [faFixed]
        DataType = ftString
        Size = 28
      end
      item
        Name = 'NAME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 244
      end
      item
        Name = 'NAME_SUBJ'
        Attributes = [faFixed]
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'PK_NomenclDog'
        Fields = 'ID_NOMENCL'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'dbo.NomenclDog'
    Left = 96
    Top = 192
  end
  object NomenclDS: TDataSource
    DataSet = NomenclTb
    Left = 96
    Top = 240
  end
  object Query: TQuery
    DatabaseName = 'SQLSub'
    SessionName = 'Default'
    Left = 96
    Top = 16
  end
  object COSGUTb: TTable
    DatabaseName = 'SQLSub'
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'COSGU'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NAME_ARTIC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_ArticleDog'
        Fields = 'COSGU'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'dbo.ArticleDog'
    Left = 160
    Top = 192
  end
  object COSGUDS: TDataSource
    DataSet = COSGUTb
    Left = 160
    Top = 240
  end
  object SupplierDS: TDataSource
    DataSet = SupplierTb
    Left = 224
    Top = 240
  end
  object SupplierTb: TTable
    DatabaseName = 'SQLSub'
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'ID_SUPPLIER'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'SUPPLIER'
        Attributes = [faFixed]
        DataType = ftString
        Size = 130
      end>
    IndexDefs = <
      item
        Name = 'PK_SupplierDog'
        Fields = 'ID_SUPPLIER'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'dbo.SupplierDog'
    Left = 224
    Top = 192
  end
  object FldNameDS: TDataSource
    DataSet = FldNameTb
    Left = 296
    Top = 240
  end
  object FldNameTb: TTable
    DatabaseName = 'SQLSub'
    SessionName = 'Default'
    FieldDefs = <
      item
        Name = 'FLDID'
        Attributes = [faRequired]
        DataType = ftSmallint
      end
      item
        Name = 'FLDNAME'
        Attributes = [faFixed]
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Name = 'PK_RegionIDDog'
        Fields = 'FLDID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'dbo.RegionIDDog'
    Left = 296
    Top = 192
  end
  object ADOQuery6: TADOQuery
    Connection = ADOConnection
    CursorType = ctStatic
    Parameters = <
      item
        Attributes = [paNullable]
        DataType = ftString
        Precision = 17
        Size = 17
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT     SUM(ReestrDog.SUM_DOG1) AS sum_nom, NomenclDog.ID_NOM' +
        'ENCL, NomenclDog.NAME'
      'FROM         ReestrDog INNER JOIN'
      
        '                    NomenclDog ON ReestrDog.ID_NOMENCL1 = Nomenc' +
        'lDog.ID_NOMENCL'
      
        'WHERE     datepart(q,ReestrDog.DATA_DOG) = datepart(q,GETDATE())' +
        ' and year(ReestrDog.DATA_DOG)=year(GETDATE()) and ReestrDog.ID_N' +
        'OMENCL1 =p:'
      'GROUP BY NomenclDog.ID_NOMENCL, NomenclDog.NAME')
    Left = 360
    Top = 72
    object StringField1: TStringField
      FieldName = 'ID_NOMENCL'
      FixedChar = True
      Size = 17
    end
    object StringField2: TStringField
      FieldName = 'NAME'
      FixedChar = True
      Size = 244
    end
    object StringField3: TStringField
      FieldName = 'NAME_SUBJ'
      FixedChar = True
      Size = 200
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 360
    Top = 120
  end
  object DQuery: TDataSource
    DataSet = Query
    Left = 160
    Top = 16
  end
end
