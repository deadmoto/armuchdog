object cosgued: Tcosgued
  Left = 363
  Top = 225
  Width = 480
  Height = 180
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cosgubox: TGroupBox
    Left = 0
    Top = 0
    Width = 472
    Height = 49
    Align = alTop
    Caption = #1050#1054#1057#1043#1059
    TabOrder = 0
    object cosgu: TEdit
      Left = 8
      Top = 16
      Width = 457
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnKeyPress = cosguKeyPress
    end
  end
  object namebox: TGroupBox
    Left = 0
    Top = 49
    Width = 472
    Height = 48
    Align = alTop
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    TabOrder = 1
    object name: TEdit
      Left = 8
      Top = 16
      Width = 457
      Height = 21
      MaxLength = 100
      TabOrder = 0
    end
  end
  object btnbox: TGroupBox
    Left = 0
    Top = 97
    Width = 472
    Height = 56
    Align = alTop
    TabOrder = 2
    object ok: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'ok'
      ModalResult = 1
      TabOrder = 0
    end
    object cancel: TButton
      Left = 384
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
end
