object providerform: Tproviderform
  Left = 217
  Top = 145
  Width = 800
  Height = 600
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
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
    Width = 792
    Height = 517
    Align = alClient
    DataSource = dmod.data
    PopupMenu = popup
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object box: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 49
    Align = alTop
    TabOrder = 0
    object search: TEdit
      Left = 8
      Top = 16
      Width = 281
      Height = 21
      TabOrder = 0
      OnChange = searchChange
    end
    object up: TButton
      Left = 296
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1074#1077#1088#1093
      TabOrder = 1
      OnClick = upClick
    end
    object down: TButton
      Left = 376
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1085#1080#1079
      TabOrder = 2
      OnClick = downClick
    end
  end
  object popup: TPopupMenu
    Left = 16
    Top = 600
    object add: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = addClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object upd: TMenuItem
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = updClick
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object del: TMenuItem
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = delClick
    end
  end
end
