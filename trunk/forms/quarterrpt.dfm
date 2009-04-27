object reportquarter: Treportquarter
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1074#1072#1088#1090#1072#1083#1100#1085#1099#1081' '#1086#1090#1095#1105#1090
  ClientHeight = 568
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 45
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 965
    object registered: TCheckBox
      Left = 407
      Top = 18
      Width = 130
      Height = 17
      Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1099#1077
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = registeredClick
    end
    object pbsbox: TGroupBox
      Left = 1
      Top = 1
      Width = 216
      Height = 43
      Align = alLeft
      Caption = #1055#1041#1057
      TabOrder = 1
      object pbs: TComboBox
        Left = 6
        Top = 15
        Width = 203
        Height = 21
        DropDownCount = 40
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '*'
        OnChange = pbsChange
        Items.Strings = (
          '*')
      end
    end
    object print: TButton
      Left = 543
      Top = 14
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 2
      OnClick = printClick
    end
    object yearbox: TGroupBox
      Left = 217
      Top = 1
      Width = 93
      Height = 43
      Align = alLeft
      Caption = #1043#1086#1076
      TabOrder = 3
      object year: TComboBox
        Left = 7
        Top = 15
        Width = 78
        Height = 21
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '2009'
        OnChange = yearChange
        Items.Strings = (
          '2009'
          '2008')
      end
    end
    object quarterbox: TGroupBox
      Left = 310
      Top = 1
      Width = 91
      Height = 43
      Align = alLeft
      Caption = #1050#1074#1072#1088#1090#1072#1083
      TabOrder = 4
      object quarter: TComboBox
        Left = 6
        Top = 15
        Width = 75
        Height = 21
        DropDownCount = 4
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 0
        Text = '1'
        OnChange = quarterChange
        Items.Strings = (
          '1'
          '2'
          '3'
          '4')
      end
    end
  end
  object grid: TStringGrid
    Left = 0
    Top = 45
    Width = 794
    Height = 504
    Align = alClient
    ColCount = 8
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
    OnDblClick = gridDblClick
    OnSelectCell = gridSelectCell
    ExplicitWidth = 965
    ExplicitHeight = 434
  end
  object status: TStatusBar
    Left = 0
    Top = 549
    Width = 794
    Height = 19
    Panels = <
      item
        Text = #1044#1086#1075#1086#1074#1086#1088#1086#1074' '#1074' '#1092#1080#1083#1100#1090#1088#1077':'
        Width = 122
      end
      item
        Alignment = taRightJustify
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
    ExplicitTop = 479
    ExplicitWidth = 965
  end
end
