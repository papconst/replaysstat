object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
  ClientHeight = 304
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 7
    Width = 281
    Height = 258
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object Label_product_desc: TLabel
      Left = 8
      Top = 11
      Width = 233
      Height = 13
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1086' '#1088#1077#1087#1083#1077#1103#1084' World of Tanks'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Label_author: TLabel
      Left = 8
      Top = 30
      Width = 33
      Height = 13
      Caption = #1040#1074#1090#1086#1088':'
      IsControl = True
    end
    object Label_comment1: TLabel
      Left = 8
      Top = 49
      Width = 264
      Height = 26
      Caption = 
        #1055#1088#1086#1075#1088#1072#1084#1084#1072' '#1085#1072#1087#1080#1089#1072#1085#1072' '#1076#1083#1103' '#1086#1073#1083#1077#1075#1095#1077#1085#1080#1103'  '#1089#1073#1086#1088#1072' '#1089#1090#1072#1090#1099' '#1087#1086' '#1088#1086#1090#1085#1099#1084' '#1073#1086#1103#1084' '#1082#1083 +
        #1072#1085#1072
      WordWrap = True
      IsControl = True
    end
    object Label_comment3: TLabel
      Left = 8
      Top = 100
      Width = 248
      Height = 26
      Caption = 
        #1053#1072#1081#1090#1080' '#1087#1086#1089#1083#1077#1076#1085#1102#1102' '#1074#1077#1088#1089#1080#1102', '#1086#1089#1090#1072#1074#1080#1090#1100' '#1086#1090#1079#1099#1074#1099' '#1080#1083#1080' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1080#1103' '#1084#1086#1078#1085#1086' '#1090#1091 +
        #1090':'
      WordWrap = True
    end
    object ClanName: TLabel
      Left = 131
      Top = 62
      Width = 75
      Height = 13
      Cursor = crHandPoint
      Caption = '"'#1058#1072#1090#1072#1085#1095#1080#1082#1080'"'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = ClanNameClick
    end
    object Label_LinkToClanThread: TLabel
      Left = 8
      Top = 133
      Width = 199
      Height = 13
      Cursor = crHandPoint
      Caption = #1058#1077#1084#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1085#1072' '#1089#1072#1081#1090#1077' '#1082#1083#1072#1085#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label_LinkToClanThreadClick
    end
    object Author: TLabel
      Left = 47
      Top = 30
      Width = 31
      Height = 13
      Cursor = crHandPoint
      Caption = 'G4ce'
      Color = clBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentColor = False
      ParentFont = False
      OnClick = AuthorClick
    end
    object Label_LinkToForumThread: TLabel
      Left = 8
      Top = 152
      Width = 256
      Height = 13
      Cursor = crHandPoint
      Caption = #1058#1077#1084#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1099' '#1085#1072' '#1086#1092#1080#1094#1080#1072#1083#1100#1085#1086#1084' '#1092#1086#1088#1091#1084#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label_LinkToForumThreadClick
    end
    object Label_comment2: TLabel
      Left = 8
      Top = 81
      Width = 202
      Height = 13
      Caption = #1055#1088#1086#1074#1077#1088#1077#1085#1085#1099#1077' '#1074#1077#1088#1089#1080#1080': 8.11 - 1.9.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label_WoWp: TLabel
      Left = 8
      Top = 171
      Width = 238
      Height = 13
      Cursor = crHandPoint
      Caption = #1042#1077#1088#1089#1080#1103' '#1076#1083#1103' '#1088#1077#1087#1083#1077#1077#1074' World of Warplanes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = Label_WoWpClick
    end
    object Label_thanks_to: TLabel
      Left = 8
      Top = 192
      Width = 80
      Height = 13
      Caption = #1041#1083#1072#1075#1086#1076#1072#1088#1085#1086#1089#1090#1080':'
    end
    object lb_th1: TLabel
      Left = 8
      Top = 211
      Width = 92
      Height = 13
      Cursor = crHandPoint
      Caption = 'KycoK_Ov4arku'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = lb_th1Click
    end
    object lb_th2: TLabel
      Left = 8
      Top = 230
      Width = 90
      Height = 13
      Cursor = crHandPoint
      Caption = 'SovsemLoshara'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
      OnClick = lb_th2Click
    end
    object Label_current_language: TLabel
      Left = 144
      Top = 192
      Width = 115
      Height = 13
      Caption = 'Label_current_language'
      Visible = False
    end
    object Label_forum_thread: TLabel
      Left = 144
      Top = 211
      Width = 94
      Height = 13
      Caption = 'Label_forum_thread'
      Visible = False
    end
  end
  object OKButton: TButton
    Left = 8
    Top = 271
    Width = 281
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
