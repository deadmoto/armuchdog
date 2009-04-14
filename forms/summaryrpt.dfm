object sumaryreport: Tsumaryreport
  Left = 212
  Top = 146
  Caption = #1057#1091#1084#1084#1072#1088#1085#1099#1081' '#1086#1090#1095#1105#1090' '#1087#1086' '#1054#1050#1042#1069#1044
  ClientHeight = 566
  ClientWidth = 792
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
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 49
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 0
    object startbox: TGroupBox
      Left = 1
      Top = 1
      Width = 96
      Height = 47
      Align = alLeft
      Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
      TabOrder = 0
      object startpick: TDateTimePicker
        Left = 8
        Top = 16
        Width = 81
        Height = 21
        Date = 39895.608202210650000000
        Time = 39895.608202210650000000
        TabOrder = 0
        OnChange = startpickChange
      end
    end
    object endbox: TGroupBox
      Left = 97
      Top = 1
      Width = 96
      Height = 47
      Align = alLeft
      Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
      TabOrder = 1
      object endpick: TDateTimePicker
        Left = 8
        Top = 16
        Width = 81
        Height = 21
        Date = 39895.608289560190000000
        Time = 39895.608289560190000000
        TabOrder = 0
        OnChange = endpickChange
      end
    end
    object btnbox: TGroupBox
      Left = 193
      Top = 1
      Width = 168
      Height = 47
      Align = alLeft
      TabOrder = 2
      object reportbtn: TButton
        Left = 87
        Top = 9
        Width = 75
        Height = 31
        Caption = #1054#1090#1095#1105#1090
        TabOrder = 0
        OnClick = reportbtnClick
      end
      object detailbtn: TButton
        Left = 6
        Top = 9
        Width = 75
        Height = 31
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100
        TabOrder = 1
        OnClick = detailbtnClick
      end
    end
    object GroupBox1: TGroupBox
      Left = 361
      Top = 1
      Width = 112
      Height = 47
      Align = alLeft
      Caption = #1055#1086#1080#1089#1082
      TabOrder = 3
      object search: TEdit
        Left = 6
        Top = 16
        Width = 99
        Height = 21
        TabOrder = 0
        OnChange = searchChange
      end
    end
    object closebox: TGroupBox
      Left = 704
      Top = 1
      Width = 87
      Height = 47
      Align = alRight
      TabOrder = 4
      object closebtn: TButton
        Left = 7
        Top = 9
        Width = 75
        Height = 31
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 0
        OnClick = closebtnClick
      end
    end
  end
  object grid: TStringGrid
    Left = 0
    Top = 49
    Width = 792
    Height = 498
    Align = alClient
    ColCount = 1
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
    OnDblClick = gridDblClick
    OnSelectCell = gridSelectCell
  end
  object status: TStatusBar
    Left = 0
    Top = 547
    Width = 792
    Height = 19
    Panels = <
      item
        Text = #1057#1090#1072#1090#1077#1081' '#1074' '#1092#1080#1083#1100#1090#1088#1077':'
        Width = 102
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
