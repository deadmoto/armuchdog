object main: Tmain
  Left = 66
  Top = 138
  BorderStyle = bsSingle
  Caption = #1040#1056#1052' "'#1059#1095#1105#1090' '#1076#1086#1075#1086#1074#1086#1088#1086#1074'"'
  ClientHeight = 737
  ClientWidth = 1018
  Color = clBtnFace
  Constraints.MinHeight = 762
  Constraints.MinWidth = 1024
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object status: TStatusBar
    Left = 0
    Top = 713
    Width = 1018
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
    Width = 1018
    Height = 640
    Align = alClient
    ColCount = 1
    DefaultColWidth = 0
    DefaultRowHeight = 16
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
    OnDblClick = gridDblClick
    OnSelectCell = gridSelectCell
  end
  object mainpanel: TPanel
    Left = 0
    Top = 0
    Width = 1018
    Height = 73
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object mainmenu: TPageControl
      Left = 1
      Top = 1
      Width = 924
      Height = 71
      ActivePage = TabSheet3
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
        object startbox: TGroupBox
          Left = 665
          Top = 0
          Width = 81
          Height = 41
          Caption = #1057
          TabOrder = 4
          object start: TMaskEdit
            Left = 8
            Top = 16
            Width = 65
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  .  .    '
            OnChange = startChange
          end
        end
        object finishbox: TGroupBox
          Left = 746
          Top = 0
          Width = 81
          Height = 41
          Caption = #1055#1086
          TabOrder = 5
          object finish: TMaskEdit
            Left = 8
            Top = 16
            Width = 65
            Height = 21
            EditMask = '!99/99/0000;1;_'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 10
            ParentFont = False
            TabOrder = 0
            Text = '  .  .    '
            OnChange = finishChange
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = #1044#1086#1075#1086#1074#1086#1088#1072
        Constraints.MaxHeight = 43
        object add: TButton
          Left = 0
          Top = 8
          Width = 75
          Height = 25
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = addClick
        end
        object upd: TButton
          Left = 80
          Top = 8
          Width = 75
          Height = 25
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 1
          OnClick = updClick
        end
        object del: TButton
          Left = 160
          Top = 8
          Width = 75
          Height = 25
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 2
          OnClick = delClick
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
        object Button1: TButton
          Left = 241
          Top = 8
          Width = 75
          Height = 25
          Caption = #1047#1072' '#1082#1074#1072#1088#1090#1072#1083
          TabOrder = 3
          OnClick = Button1Click
        end
      end
    end
    object Panel2: TPanel
      Left = 925
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
