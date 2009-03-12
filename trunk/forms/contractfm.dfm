object contract: Tcontract
  Left = 239
  Top = 161
  Width = 800
  Height = 600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = main
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object databox: TGroupBox
    Left = 0
    Top = 0
    Width = 396
    Height = 546
    Align = alLeft
    Caption = #1044#1072#1085#1085#1099#1077' '#1076#1086#1075#1086#1074#1086#1088#1072':'
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 8
      Top = 16
      Width = 377
      Height = 49
      Caption = #1042#1085#1091#1090#1088#1077#1085#1085#1080#1081' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1076#1077#1083#1072':'
      TabOrder = 0
      object regn: TEdit
        Left = 8
        Top = 16
        Width = 361
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 64
      Width = 377
      Height = 49
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1088#1072#1081#1086#1085#1072
      TabOrder = 1
      object fldid: TEdit
        Left = 8
        Top = 16
        Width = 273
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 288
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Button1'
        TabOrder = 1
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 112
      Width = 377
      Height = 49
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1085#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 2
      object reg_n: TEdit
        Left = 8
        Top = 16
        Width = 361
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 160
      Width = 377
      Height = 49
      Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 3
      object n_dog: TEdit
        Left = 8
        Top = 16
        Width = 361
        Height = 21
        TabOrder = 0
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 208
      Width = 377
      Height = 49
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' ('#1087#1086#1089#1090#1072#1074#1097#1080#1082')'
      TabOrder = 4
      object id_supplier: TEdit
        Left = 8
        Top = 16
        Width = 273
        Height = 21
        TabOrder = 0
      end
      object select: TButton
        Left = 288
        Top = 16
        Width = 75
        Height = 25
        Caption = #1042#1099#1073#1088#1072#1090#1100
        TabOrder = 1
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 256
      Width = 185
      Height = 49
      Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 5
      object data_reg: TDateTimePicker
        Left = 8
        Top = 16
        Width = 169
        Height = 21
        Date = 39884.374077500000000000
        Time = 39884.374077500000000000
        TabOrder = 0
      end
    end
    object GroupBox8: TGroupBox
      Left = 200
      Top = 256
      Width = 185
      Height = 49
      Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 6
      object data_post: TDateTimePicker
        Left = 8
        Top = 16
        Width = 170
        Height = 21
        Date = 39884.374369571760000000
        Time = 39884.374369571760000000
        TabOrder = 0
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 304
      Width = 185
      Height = 49
      Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 7
      object data_dog: TDateTimePicker
        Left = 8
        Top = 16
        Width = 169
        Height = 21
        Date = 39884.375260775470000000
        Time = 39884.375260775470000000
        TabOrder = 0
      end
    end
    object GroupBox10: TGroupBox
      Left = 200
      Top = 304
      Width = 185
      Height = 49
      Caption = #1057#1088#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 8
      object data_srok: TDateTimePicker
        Left = 8
        Top = 16
        Width = 169
        Height = 21
        Date = 39884.375405092590000000
        Time = 39884.375405092590000000
        TabOrder = 0
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 396
    Top = 0
    Width = 396
    Height = 546
    Align = alClient
    Caption = #1057#1090#1072#1090#1100#1080' '#1087#1086' '#1076#1086#1075#1086#1074#1086#1088#1091
    TabOrder = 1
    object StringGrid1: TStringGrid
      Left = 8
      Top = 16
      Width = 377
      Height = 337
      ColCount = 1
      DefaultColWidth = 316
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
    end
  end
  object main: TMainMenu
    Left = 8
    Top = 360
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object commit: TMenuItem
        Caption = 'Commit'
      end
      object N3: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = N3Click
      end
    end
  end
end
