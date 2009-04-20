object report_cosgu: Treport_cosgu
  Left = 244
  Top = 182
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1050#1054#1057#1043#1059
  ClientHeight = 573
  ClientWidth = 852
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TDBGrid
    Left = 0
    Top = 49
    Width = 852
    Height = 505
    Align = alClient
    DataSource = dm.data
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = gridDblClick
  end
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 852
    Height = 49
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object startbox: TGroupBox
      Left = 1
      Top = 1
      Width = 96
      Height = 47
      Align = alLeft
      Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072':'
      TabOrder = 0
      object startpick: TDateTimePicker
        Left = 8
        Top = 16
        Width = 81
        Height = 21
        Date = 39895.490069259260000000
        Time = 39895.490069259260000000
        TabOrder = 0
      end
    end
    object endbox: TGroupBox
      Left = 97
      Top = 1
      Width = 96
      Height = 47
      Align = alLeft
      Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072':'
      TabOrder = 1
      object endpick: TDateTimePicker
        Left = 8
        Top = 16
        Width = 81
        Height = 21
        Date = 39895.491825266200000000
        Time = 39895.491825266200000000
        TabOrder = 0
      end
    end
    object cosgubox: TGroupBox
      Left = 193
      Top = 1
      Width = 104
      Height = 47
      Align = alLeft
      Caption = #1050#1054#1057#1043#1059
      TabOrder = 2
      object cosguselect: TComboBox
        Left = 8
        Top = 16
        Width = 89
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnKeyPress = cosguselectKeyPress
      end
    end
    object pbsbox: TGroupBox
      Left = 297
      Top = 1
      Width = 208
      Height = 47
      Align = alLeft
      Caption = #1055#1041#1057
      TabOrder = 3
      object pbs: TComboBox
        Left = 8
        Top = 16
        Width = 193
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnKeyPress = pbsKeyPress
      end
    end
    object search: TButton
      Left = 504
      Top = 6
      Width = 96
      Height = 41
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 4
      OnClick = searchClick
    end
    object report: TButton
      Left = 600
      Top = 6
      Width = 96
      Height = 41
      Caption = #1054#1090#1095#1105#1090
      TabOrder = 5
      OnClick = reportClick
    end
  end
  object status: TStatusBar
    Left = 0
    Top = 554
    Width = 852
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
end
