object regionselect: Tregionselect
  Left = 323
  Top = 207
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1086#1088' '#1088#1072#1081#1086#1085#1072
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
    Top = 576
    Width = 472
    Height = 37
    Align = alBottom
    TabOrder = 1
    object cancel: TButton
      Left = 182
      Top = 8
      Width = 124
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
    object ok: TButton
      Left = 6
      Top = 8
      Width = 124
      Height = 25
      Caption = #1042#1099#1073#1086#1088
      ModalResult = 1
      TabOrder = 0
    end
  end
  object grid: TStringGrid
    Left = 0
    Top = 0
    Width = 472
    Height = 576
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    TabOrder = 0
    OnSelectCell = gridSelectCell
    ColWidths = (
      68
      64)
  end
end
