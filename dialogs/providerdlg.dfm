object provdlg: Tprovdlg
  Left = 260
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 72
  ClientWidth = 432
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object provbox: TGroupBox
    Left = 0
    Top = 0
    Width = 345
    Height = 72
    Align = alClient
    Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
    TabOrder = 0
    object prov: TEdit
      Left = 8
      Top = 16
      Width = 329
      Height = 49
      MaxLength = 130
      TabOrder = 0
    end
  end
  object btnbox: TGroupBox
    Left = 345
    Top = 0
    Width = 87
    Height = 72
    Align = alRight
    TabOrder = 1
    object ok: TButton
      Left = 7
      Top = 12
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
    object cancel: TButton
      Left = 7
      Top = 38
      Width = 75
      Height = 25
      Cancel = True
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
end
