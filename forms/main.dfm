object Form2: TForm2
  Left = 184
  Top = 147
  Width = 917
  Height = 640
  Caption = #1040#1056#1052' "'#1059#1095#1105#1090' '#1076#1086#1075#1086#1074#1086#1088#1086#1074'"'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 594
    Width = 909
    Height = 19
    Panels = <>
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 65
    Width = 909
    Height = 529
    Align = alClient
    ColCount = 1
    DefaultColWidth = 0
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 909
    Height = 65
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 815
      Height = 63
      ActivePage = TabSheet3
      Align = alClient
      Constraints.MaxHeight = 80
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1044#1086#1075#1086#1074#1086#1088#1072
        Constraints.MaxHeight = 40
        object Button1: TButton
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
        end
        object Button3: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
        end
        object Button4: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        ImageIndex = 1
        object Button5: TButton
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Caption = #1056#1072#1081#1086#1085#1099
          TabOrder = 0
        end
        object Button6: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
          TabOrder = 1
        end
        object Button7: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1054#1050#1042#1069#1044
          TabOrder = 2
        end
        object Button8: TButton
          Left = 240
          Top = 8
          Width = 75
          Height = 25
          Caption = #1050#1054#1057#1043#1059
          TabOrder = 3
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1054#1090#1095#1105#1090#1099
        ImageIndex = 2
        object Button9: TButton
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Caption = #1057#1091#1084#1084#1072#1088#1085#1099#1081
          TabOrder = 0
        end
        object Button10: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1087#1086' '#1054#1050#1042#1069#1044
          TabOrder = 1
        end
        object Button11: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1055#1086' '#1050#1054#1057#1043#1059
          TabOrder = 2
        end
      end
    end
    object Panel2: TPanel
      Left = 816
      Top = 1
      Width = 92
      Height = 63
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object Button2: TButton
        Left = 8
        Top = 32
        Width = 75
        Height = 25
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 0
      end
    end
  end
end
