object okveded: Tokveded
  Left = 364
  Top = 226
  ClientHeight = 151
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object okvedbox: TGroupBox
    Left = 0
    Top = 0
    Width = 470
    Height = 49
    Align = alTop
    Caption = #1050#1054#1057#1043#1059
    TabOrder = 0
    ExplicitWidth = 453
    object okved: TEdit
      Left = 8
      Top = 16
      Width = 457
      Height = 21
      MaxLength = 8
      TabOrder = 0
      OnKeyPress = okvedKeyPress
    end
  end
  object namebox: TGroupBox
    Left = 0
    Top = 49
    Width = 470
    Height = 48
    Align = alTop
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    TabOrder = 1
    ExplicitWidth = 453
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
    Width = 470
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
