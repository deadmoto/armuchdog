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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object report: TDBGrid
    Left = 0
    Top = 64
    Width = 792
    Height = 490
    Align = alClient
    DataSource = source
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = reportDblClick
  end
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 64
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 1
    object nomenclbox: TGroupBox
      Left = 206
      Top = 8
      Width = 89
      Height = 49
      Caption = #1054#1050#1042#1069#1044
      TabOrder = 0
      object nomencl: TComboBox
        Left = 8
        Top = 16
        Width = 73
        Height = 21
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 0
        OnKeyPress = nomenclKeyPress
      end
    end
    object regionbox: TGroupBox
      Left = 293
      Top = 8
      Width = 193
      Height = 49
      Caption = #1055#1041#1057
      TabOrder = 1
      object region: TComboBox
        Left = 8
        Top = 16
        Width = 177
        Height = 21
        DropDownCount = 20
        ItemHeight = 13
        TabOrder = 0
      end
    end
    object search: TBitBtn
      Left = 486
      Top = 13
      Width = 89
      Height = 44
      Caption = #1055#1086#1080#1089#1082
      DoubleBuffered = True
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFF00000FFFFF00000F0F000FFFFF0F000F0F000FFFFF0F000F0000000F0000
        000F00F000000F00000F00F000F00F00000F00F000F00F00000FF00000000000
        00FFFF0F000F0F000FFFFF00000F00000FFFFFF000FFF000FFFFFFF0F0FFF0F0
        FFFFFFF000FFF000FFFFFFFFFFFFFFFFFFFF}
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = searchClick
    end
    object startbox: TGroupBox
      Left = 8
      Top = 8
      Width = 105
      Height = 49
      Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072':'
      TabOrder = 3
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
      Top = 8
      Width = 97
      Height = 49
      Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072':'
      TabOrder = 4
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
    object Button1: TButton
      Left = 576
      Top = 13
      Width = 89
      Height = 44
      Caption = #1054#1090#1095#1105#1090
      TabOrder = 5
      OnClick = Button1Click
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
  object source: TDataSource
    Left = 56
    Top = 280
  end
end
