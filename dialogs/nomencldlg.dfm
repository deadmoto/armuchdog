object nomenclselect: Tnomenclselect
  Left = 353
  Top = 198
  Width = 480
  Height = 480
  Caption = #1042#1099#1073#1086#1088' '#1054#1050#1042#1069#1044
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object filterbox: TGroupBox
    Left = 0
    Top = 0
    Width = 472
    Height = 65
    Align = alTop
    TabOrder = 0
    object filter: TEdit
      Left = 128
      Top = 24
      Width = 337
      Height = 21
      TabOrder = 0
      OnChange = filterChange
    end
    object filterall: TRadioButton
      Left = 8
      Top = 8
      Width = 113
      Height = 17
      Caption = #1042#1089#1077
      Checked = True
      TabOrder = 1
      TabStop = True
      OnClick = filterallClick
    end
    object filterid: TRadioButton
      Left = 8
      Top = 24
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1054#1050#1042#1069#1044
      TabOrder = 2
      OnClick = filteridClick
    end
    object filtername: TRadioButton
      Left = 8
      Top = 40
      Width = 113
      Height = 17
      Caption = #1055#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102
      TabOrder = 3
      OnClick = filternameClick
    end
  end
  object nomenclgrid: TStringGrid
    Left = 0
    Top = 65
    Width = 472
    Height = 335
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    TabOrder = 1
    OnSelectCell = nomenclgridSelectCell
  end
  object btnbox: TGroupBox
    Left = 0
    Top = 400
    Width = 472
    Height = 53
    Align = alBottom
    TabOrder = 2
    object ok: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1086#1088
      ModalResult = 1
      TabOrder = 0
    end
    object cancel: TButton
      Left = 389
      Top = 16
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
end
