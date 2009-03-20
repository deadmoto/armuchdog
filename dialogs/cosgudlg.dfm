object cosguselect: Tcosguselect
  Left = 316
  Top = 218
  Width = 480
  Height = 480
  Caption = #1042#1099#1073#1086#1088' '#1050#1054#1057#1043#1059
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnbox: TGroupBox
    Left = 0
    Top = 416
    Width = 472
    Height = 37
    Align = alBottom
    TabOrder = 0
    object ok: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1086#1088
      ModalResult = 1
      TabOrder = 0
    end
    object cancel: TButton
      Left = 392
      Top = 8
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cosgugrid: TStringGrid
    Left = 0
    Top = 0
    Width = 472
    Height = 416
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
    OnSelectCell = cosgugridSelectCell
  end
end
