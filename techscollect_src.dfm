object fm_techscollect: Tfm_techscollect
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = #1054#1073#1085#1086#1074#1083#1077#1085#1080#1077' '#1085#1072#1079#1074#1072#1085#1080#1081' '#1090#1072#1085#1082#1086#1074
  ClientHeight = 145
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label_techs_language: TLabel
    Left = 16
    Top = 87
    Width = 107
    Height = 13
    Caption = 'Label_techs_language'
  end
  object Label_techs_msg1: TLabel
    Left = 16
    Top = 15
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg1'
  end
  object Label_techs_msg2: TLabel
    Left = 16
    Top = 24
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg2'
  end
  object Label_techs_msg3: TLabel
    Left = 16
    Top = 34
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg3'
  end
  object Label_techs_msg4: TLabel
    Left = 16
    Top = 43
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg4'
  end
  object Label_techs_msg6: TLabel
    Left = 16
    Top = 58
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg6'
  end
  object Label_techs_msg7: TLabel
    Left = 16
    Top = 68
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg7'
  end
  object Label_techs_msg5: TLabel
    Left = 16
    Top = 49
    Width = 88
    Height = 13
    Caption = 'Label_techs_msg5'
  end
  object Label_techs_processing: TLabel
    Left = 16
    Top = 77
    Width = 114
    Height = 13
    Caption = 'Label_techs_processing'
  end
  object Memo: TMemo
    Left = 8
    Top = 8
    Width = 217
    Height = 111
    Lines.Strings = (
      #1048#1079' API '#1076#1086#1073#1072#1074#1083#1077#1085#1086' 999 '#1085#1086#1074#1099#1093' '#1090#1072#1085#1082#1086#1074)
    TabOrder = 0
  end
  object Button1: TButton
    Left = 8
    Top = 113
    Width = 218
    Height = 25
    Caption = 'Ok'
    TabOrder = 1
    OnClick = Button1Click
  end
  object IdHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 96
    Top = 48
  end
end
