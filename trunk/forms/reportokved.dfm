object report_okved: Treport_okved
  Left = 234
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1054#1050#1042#1069#1044
  ClientHeight = 573
  ClientWidth = 792
  Color = clBtnFace
  Constraints.MaxHeight = 605
  Constraints.MaxWidth = 800
  Constraints.MinHeight = 600
  Constraints.MinWidth = 798
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 52
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object nomenclbox: TGroupBox
      Left = 129
      Top = 1
      Width = 89
      Height = 50
      Align = alLeft
      Caption = #1054#1050#1042#1069#1044
      TabOrder = 0
      ExplicitLeft = 206
      ExplicitTop = 8
      ExplicitHeight = 49
      object nomencl: TComboBox
        Left = 10
        Top = 19
        Width = 73
        Height = 21
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 0
        OnChange = nomenclChange
        OnKeyPress = nomenclKeyPress
      end
    end
    object regionbox: TGroupBox
      Left = 218
      Top = 1
      Width = 193
      Height = 50
      Align = alLeft
      Caption = #1055#1041#1057
      TabOrder = 1
      ExplicitLeft = 293
      ExplicitTop = 8
      ExplicitHeight = 49
      object regioncbx: TComboBox
        Left = 8
        Top = 19
        Width = 177
        Height = 21
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 0
        OnChange = regioncbxChange
      end
    end
    object startbox: TGroupBox
      Left = 8
      Top = 66
      Width = 105
      Height = 49
      Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072':'
      TabOrder = 2
      object startpick: TDateTimePicker
        Left = 7
        Top = 16
        Width = 90
        Height = 21
        Date = 39814.363207465280000000
        Time = 39814.363207465280000000
        TabOrder = 0
      end
    end
    object endbox: TGroupBox
      Left = 111
      Top = 66
      Width = 97
      Height = 49
      Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072':'
      TabOrder = 3
      object endpick: TDateTimePicker
        Left = 8
        Top = 16
        Width = 81
        Height = 21
        Date = 39903.371019236110000000
        Time = 39903.371019236110000000
        TabOrder = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 64
      Height = 50
      Align = alLeft
      Caption = #1043#1086#1076
      TabOrder = 4
      ExplicitHeight = 62
      object yearcbx: TComboBox
        Left = 4
        Top = 19
        Width = 54
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = yearcbxChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 65
      Top = 1
      Width = 64
      Height = 50
      Align = alLeft
      Caption = #1050#1074#1072#1088#1090#1072#1083
      TabOrder = 5
      ExplicitHeight = 62
      object quarterud: TUpDown
        Left = 39
        Top = 17
        Width = 17
        Height = 25
        Min = 1
        Max = 4
        Position = 1
        TabOrder = 0
        OnChangingEx = quarterudChangingEx
      end
      object quartered: TEdit
        Left = 6
        Top = 19
        Width = 35
        Height = 21
        ReadOnly = True
        TabOrder = 1
        OnChange = quarteredChange
      end
    end
    object btnpanel: TPanel
      Left = 608
      Top = 1
      Width = 183
      Height = 50
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 6
      object exit: TButton
        Left = 96
        Top = 13
        Width = 75
        Height = 25
        Caption = #1047#1072#1082#1088#1099#1090#1100
        TabOrder = 0
        OnClick = exitClick
      end
      object print: TButton
        Left = 15
        Top = 14
        Width = 75
        Height = 25
        Caption = #1055#1077#1095#1072#1090#1100
        TabOrder = 1
      end
    end
  end
  object status: TStatusBar
    Left = 0
    Top = 554
    Width = 792
    Height = 19
    Panels = <
      item
        Text = #1044#1086#1075#1086#1074#1086#1088#1086#1074' '#1074' '#1092#1080#1083#1100#1090#1088#1077':'
        Width = 120
      end
      item
        Text = '0'
        Width = 32
      end
      item
        Text = #1053#1072' '#1089#1091#1084#1084#1091':'
        Width = 64
      end
      item
        Text = '0'
        Width = 50
      end>
  end
  object grid: TStringGrid
    Left = 0
    Top = 52
    Width = 792
    Height = 502
    Align = alClient
    ColCount = 4
    DefaultColWidth = -1
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    ScrollBars = ssVertical
    TabOrder = 2
    OnDblClick = gridDblClick
    OnSelectCell = gridSelectCell
    ExplicitLeft = 8
    ExplicitTop = 57
  end
end
