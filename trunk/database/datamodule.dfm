object Tdmod
  OldCreateOrder = False
  Left = 381
  Top = 193
  Height = 358
  Width = 623
  object sqlsub: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password="";Persist Security Info=True;User I' +
      'D=sa;Data Source=SQLSub;Initial Catalog=Subsidy'
    LoginPrompt = False
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
  object report: TfrReport
    Dataset = frdata
    InitialZoom = pzDefault
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    Left = 104
    Top = 56
    ReportForm = {18000000}
  end
  object frdata: TfrDBDataSet
    DataSet = query
    Left = 72
    Top = 56
  end
end
