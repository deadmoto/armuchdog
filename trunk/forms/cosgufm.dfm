object cosgu: Tcosgu
  Left = 360
  Top = 167
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1050#1054#1057#1043#1059
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grid: TStringGrid
    Left = 0
    Top = 0
    Width = 472
    Height = 613
    Align = alClient
    ColCount = 2
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 2
    PopupMenu = popup
    TabOrder = 0
    OnSelectCell = gridSelectCell
  end
  object popup: TPopupMenu
    Left = 8
    Top = 8
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
