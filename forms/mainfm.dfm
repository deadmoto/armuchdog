object main: Tmain
  Left = 90
  Top = 212
  Width = 915
  Height = 645
  Caption = #1040#1056#1052' "'#1059#1095#1105#1090' '#1076#1086#1075#1086#1074#1086#1088#1086#1074'"'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object status: TStatusBar
    Left = 0
    Top = 587
    Width = 907
    Height = 24
    Panels = <
      item
        Text = #1042#1089#1077#1075#1086' '#1076#1086#1075#1086#1074#1086#1088#1086#1074':'
        Width = 96
      end
      item
        Alignment = taRightJustify
        Width = 48
      end
      item
        Text = #1044#1086#1075#1086#1074#1086#1088#1086#1074' '#1074' '#1092#1080#1083#1100#1090#1088#1077':'
        Width = 124
      end
      item
        Alignment = taRightJustify
        Width = 50
      end
      item
        Text = #1053#1072' '#1086#1073#1097#1091#1102' '#1089#1091#1084#1084#1091':'
        Width = 96
      end
      item
        Alignment = taRightJustify
        Width = 96
      end
      item
        Width = 50
      end>
  end
  object grid: TStringGrid
    Left = 0
    Top = 73
    Width = 907
    Height = 514
    Align = alClient
    ColCount = 1
    DefaultColWidth = 0
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
    OnSelectCell = gridSelectCell
  end
  object mainpanel: TPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 73
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object mainmenu: TPageControl
      Left = 1
      Top = 1
      Width = 813
      Height = 71
      ActivePage = filters
      Align = alClient
      TabOrder = 0
      object filters: TTabSheet
        Caption = #1060#1080#1083#1100#1090#1088#1099
        ImageIndex = 3
        object all: TButton
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Caption = #1042#1089#1077
          TabOrder = 0
          OnClick = allClick
        end
        object pbsbox: TGroupBox
          Left = 217
          Top = 0
          Width = 152
          Height = 41
          Caption = #1055#1041#1057
          TabOrder = 1
          object pbs: TButton
            Left = 8
            Top = 16
            Width = 137
            Height = 21
            Caption = #1053#1077' '#1074#1099#1073#1088#1072#1085
            TabOrder = 0
            OnClick = pbsClick
          end
        end
        object numberbox: TGroupBox
          Left = 80
          Top = 0
          Width = 137
          Height = 41
          Caption = #1053#1086#1084#1077#1088' '#1076#1086#1075#1086#1074#1086#1088#1072
          TabOrder = 2
          object number: TEdit
            Left = 8
            Top = 16
            Width = 121
            Height = 21
            TabOrder = 0
            OnChange = numberChange
          end
        end
        object providerbox: TGroupBox
          Left = 369
          Top = 0
          Width = 296
          Height = 41
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
          TabOrder = 3
          object provider: TButton
            Left = 8
            Top = 16
            Width = 281
            Height = 21
            Caption = #1053#1077' '#1074#1099#1073#1088#1072#1085
            TabOrder = 0
            OnClick = providerClick
          end
        end
      end
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
          OnClick = Button1Click
        end
        object Button3: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button4: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = Button4Click
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
          OnClick = Button5Click
        end
        object Button6: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button7: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1054#1050#1042#1069#1044
          TabOrder = 2
          OnClick = Button7Click
        end
        object Button8: TButton
          Left = 240
          Top = 8
          Width = 75
          Height = 25
          Caption = #1050#1054#1057#1043#1059
          TabOrder = 3
          OnClick = Button8Click
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
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1087#1086' '#1054#1050#1042#1069#1044
          TabOrder = 1
          OnClick = Button10Click
        end
        object Button11: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1055#1086' '#1050#1054#1057#1043#1059
          TabOrder = 2
          OnClick = Button11Click
        end
      end
    end
    object Panel2: TPanel
      Left = 814
      Top = 1
      Width = 92
      Height = 71
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      object exit: TButton
        Left = 8
        Top = 32
        Width = 75
        Height = 25
        Caption = #1042#1099#1093#1086#1076
        TabOrder = 0
        OnClick = exitClick
      end
    end
  end
end
