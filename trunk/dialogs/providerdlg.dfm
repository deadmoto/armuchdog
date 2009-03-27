object providerselect: Tproviderselect
  Left = 436
  Top = 152
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
  ClientHeight = 613
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btnbox: TGroupBox
    Left = 0
    Top = 560
    Width = 472
    Height = 53
    Align = alBottom
    TabOrder = 0
    object ok: TButton
      Left = 8
      Top = 16
      Width = 128
      Height = 25
      Caption = #1042#1099#1073#1086#1088
      ModalResult = 1
      TabOrder = 0
    end
    object cancel: TButton
      Left = 334
      Top = 16
      Width = 128
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object grid: TStringGrid
    Left = 0
    Top = 49
    Width = 472
    Height = 511
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
    OnSelectCell = gridSelectCell
  end
  object filterbox: TGroupBox
    Left = 0
    Top = 0
    Width = 472
    Height = 49
    Align = alTop
    Caption = #1060#1080#1083#1100#1090#1088
    TabOrder = 2
    object filter: TEdit
      Left = 8
      Top = 16
      Width = 457
      Height = 21
      TabOrder = 0
      OnChange = filterChange
    end
  end
end
