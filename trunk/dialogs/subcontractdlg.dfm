object subcontractfm: Tsubcontractfm
  Left = 375
  Top = 172
  BorderStyle = bsDialog
  Caption = 'Dialog'
  ClientHeight = 333
  ClientWidth = 632
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object nomenclbox: TGroupBox
    Left = 0
    Top = 0
    Width = 632
    Height = 49
    Align = alTop
    Caption = #1054#1050#1042#1069#1044
    TabOrder = 0
    object nomencl: TEdit
      Left = 8
      Top = 16
      Width = 537
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object nomenclbtn: TButton
      Left = 552
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = nomenclbtnClick
    end
  end
  object codebox: TGroupBox
    Left = 0
    Top = 49
    Width = 632
    Height = 49
    Align = alTop
    Caption = #1050#1054#1057#1043#1059
    TabOrder = 1
    object code: TEdit
      Left = 8
      Top = 16
      Width = 537
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object codebtn: TButton
      Left = 552
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 1
      OnClick = codebtnClick
    end
  end
  object commentbox: TGroupBox
    Left = 0
    Top = 146
    Width = 632
    Height = 151
    Align = alTop
    Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
    TabOrder = 3
    object comment: TMemo
      Left = 2
      Top = 15
      Width = 628
      Height = 134
      Align = alClient
      TabOrder = 0
      OnChange = commentChange
    end
  end
  object panel: TPanel
    Left = 0
    Top = 98
    Width = 632
    Height = 48
    Align = alTop
    TabOrder = 2
    object subdatebox: TGroupBox
      Left = 0
      Top = 0
      Width = 97
      Height = 49
      Caption = #1044#1072#1090#1072
      TabOrder = 0
      object subdate: TMaskEdit
        Left = 8
        Top = 16
        Width = 81
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  .  .    '
        OnChange = subdateChange
      end
    end
    object pricebox: TGroupBox
      Left = 95
      Top = 0
      Width = 186
      Height = 49
      Caption = #1057#1091#1084#1084#1072
      TabOrder = 1
      object price: TEdit
        Left = 8
        Top = 16
        Width = 169
        Height = 21
        TabOrder = 0
        Text = '0'
        OnChange = priceChange
        OnKeyPress = priceKeyPress
      end
    end
    object balancebox: TGroupBox
      Left = 279
      Top = 0
      Width = 177
      Height = 49
      Caption = #1054#1089#1090#1072#1090#1086#1082
      TabOrder = 2
      object balance: TEdit
        Left = 8
        Top = 16
        Width = 161
        Height = 21
        TabOrder = 0
        Text = '0'
        OnChange = priceChange
        OnKeyPress = priceKeyPress
      end
    end
    object reportbox: TGroupBox
      Left = 454
      Top = 0
      Width = 179
      Height = 49
      TabOrder = 3
      object report: TCheckBox
        Left = 8
        Top = 18
        Width = 161
        Height = 17
        Alignment = taLeftJustify
        Caption = #1057#1082#1088#1099#1074#1072#1090#1100' '#1074' '#1086#1090#1095#1105#1090#1072#1093
        TabOrder = 0
        OnClick = reportClick
      end
    end
  end
  object btns: TPanel
    Left = 0
    Top = 296
    Width = 632
    Height = 37
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 4
    object ok: TButton
      Left = 8
      Top = 8
      Width = 105
      Height = 25
      Caption = #1054#1050
      ModalResult = 1
      TabOrder = 0
    end
    object cancel: TButton
      Left = 520
      Top = 8
      Width = 105
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      ModalResult = 2
      TabOrder = 1
    end
  end
end
