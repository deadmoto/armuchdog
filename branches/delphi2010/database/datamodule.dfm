object dm: Tdm
  OldCreateOrder = False
  Height = 371
  Width = 543
  object sqlsub: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password="";Persist Security Info=True;User ' +
      'ID=sa;Initial Catalog=Contracts;Data Source=server'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 8
    Top = 8
  end
  object report1: TADOQuery
    Connection = sqlsub
    Parameters = <
      item
        Name = 'start'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 39814d
      end
      item
        Name = 'enddate'
        Attributes = [paNullable]
        DataType = ftDateTime
        Precision = 16
        Size = 16
        Value = 39904d
      end
      item
        Name = 'okved'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 17
        Size = 17
        Value = '45.31'
      end
      item
        Name = 'okved'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 17
        Size = 17
        Value = '45.31'
      end
      item
        Name = 'okved'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 17
        Size = 17
        Value = '45.31'
      end
      item
        Name = 'okved'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 17
        Size = 17
        Value = '45.31'
      end
      item
        Name = 'okved'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 17
        Size = 17
        Value = '45.31'
      end>
    SQL.Strings = (
      'SELECT * FROM ReestrDog'
      'WHERE (DATA_DOG>=:start AND DATA_DOG<:enddate)'
      'AND ((ID_NOMENCL1=:okved)'
      'OR (ID_NOMENCL2=:okved)'
      'OR (ID_NOMENCL3=:okved)'
      'OR (ID_NOMENCL4=:okved)'
      'OR (ID_NOMENCL5=:okved))')
    Left = 104
    Top = 8
  end
  object query: TADOQuery
    Connection = sqlsub
    Parameters = <>
    Left = 40
    Top = 8
  end
  object data: TDataSource
    DataSet = query
    Left = 72
    Top = 8
  end
  object report: TfrxReport
    Version = '4.7.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39903.664180729200000000
    ReportOptions.LastChange = 39924.373969872690000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    StoreInDFM = False
    Left = 184
    Top = 8
  end
  object frquery: TfrxDBDataset
    UserName = 'frquery'
    CloseDataSource = True
    DataSource = data
    Left = 144
    Top = 8
  end
end
