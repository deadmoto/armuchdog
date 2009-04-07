object contractform: Tcontractform
  Left = 109
  Top = 148
  ClientHeight = 556
  ClientWidth = 932
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = main
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object databox: TGroupBox
    Left = 0
    Top = 0
    Width = 396
    Height = 556
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
        Enabled = False
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
        Enabled = False
        TabOrder = 0
      end
      object btnregion: TButton
        Left = 288
        Top = 15
        Width = 75
        Height = 22
        Caption = #1042#1099#1073#1088#1072#1090#1100
        Enabled = False
        TabOrder = 1
        OnClick = btnregionClick
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
        Enabled = False
        TabOrder = 0
        OnChange = reg_nChange
        OnKeyPress = reg_nKeyPress
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
        OnChange = n_dogChange
      end
    end
    object providerbox: TGroupBox
      Left = 8
      Top = 208
      Width = 377
      Height = 49
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090' ('#1087#1086#1089#1090#1072#1074#1097#1080#1082')'
      TabOrder = 4
      object provider: TEdit
        Left = 8
        Top = 16
        Width = 273
        Height = 21
        Enabled = False
        TabOrder = 0
      end
      object providerbtn: TButton
        Left = 288
        Top = 15
        Width = 75
        Height = 22
        Caption = #1042#1099#1073#1088#1072#1090#1100
        TabOrder = 1
        OnClick = providerbtnClick
      end
    end
    object GroupBox7: TGroupBox
      Left = 200
      Top = 304
      Width = 185
      Height = 49
      Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 8
      object data_reg: TMaskEdit
        Left = 8
        Top = 16
        Width = 166
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .  .    '
        OnChange = data_regChange
      end
    end
    object GroupBox8: TGroupBox
      Left = 8
      Top = 304
      Width = 185
      Height = 49
      Caption = #1044#1072#1090#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 7
      object data_post: TMaskEdit
        Left = 8
        Top = 16
        Width = 166
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .  .    '
        OnChange = data_postChange
      end
    end
    object GroupBox9: TGroupBox
      Left = 8
      Top = 256
      Width = 185
      Height = 49
      Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 5
      object data_dog: TMaskEdit
        Left = 8
        Top = 16
        Width = 168
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .  .    '
        OnChange = data_dogChange
      end
    end
    object GroupBox10: TGroupBox
      Left = 200
      Top = 256
      Width = 185
      Height = 49
      Caption = #1057#1088#1086#1082' '#1076#1086#1075#1086#1074#1086#1088#1072
      TabOrder = 6
      object data_srok: TMaskEdit
        Left = 8
        Top = 16
        Width = 166
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .  .    '
        OnChange = data_srokChange
      end
    end
  end
  object detailboxbox: TGroupBox
    Left = 396
    Top = 0
    Width = 536
    Height = 556
    Align = alClient
    Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
    TabOrder = 1
    object Panel1: TPanel
      Left = 2
      Top = 502
      Width = 532
      Height = 52
      Align = alBottom
      BevelOuter = bvLowered
      TabOrder = 0
      object subcontractbox: TGroupBox
        Left = 1
        Top = 1
        Width = 433
        Height = 50
        Align = alClient
        TabOrder = 0
        object subcontractadd: TButton
          Left = 8
          Top = 16
          Width = 88
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = subcontractaddClick
        end
        object subcontractupd: TButton
          Left = 96
          Top = 16
          Width = 88
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = subcontractupdClick
        end
        object subcontractdel: TButton
          Left = 184
          Top = 16
          Width = 88
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = subcontractdelClick
        end
      end
      object sumbox: TGroupBox
        Left = 434
        Top = 1
        Width = 97
        Height = 50
        Align = alRight
        Caption = #1057#1091#1084#1084#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
        TabOrder = 1
        object sum: TEdit
          Left = 8
          Top = 16
          Width = 81
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = '0'
        end
      end
    end
    object subctontractgrid: TStringGrid
      Left = 2
      Top = 15
      Width = 532
      Height = 487
      Align = alClient
      ColCount = 3
      DefaultColWidth = 316
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 2
      TabOrder = 1
      OnDblClick = subctontractgridDblClick
      OnSelectCell = subctontractgridSelectCell
      ColWidths = (
        98
        184
        88)
    end
  end
  object main: TMainMenu
    Left = 520
    Top = 128
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object insert: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Enabled = False
        OnClick = insertClick
      end
      object update: TMenuItem
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        Enabled = False
        OnClick = updateClick
      end
      object discard: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        OnClick = discardClick
      end
    end
  end
end
