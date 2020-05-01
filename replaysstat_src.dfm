object ReplaysStatForm: TReplaysStatForm
  Left = 0
  Top = 0
  Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1087#1086' '#1088#1077#1087#1083#1077#1103#1084' World of Tanks  8.11+ '#1086#1090'  2020.05.01'
  ClientHeight = 472
  ClientWidth = 853
  Color = clBtnFace
  Constraints.MinHeight = 510
  Constraints.MinWidth = 869
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  DesignSize = (
    853
    472)
  PixelsPerInch = 96
  TextHeight = 14
  object AnalyseType: TPageControl
    Left = 1
    Top = 8
    Width = 851
    Height = 446
    ActivePage = SeriesReplays
    Anchors = [akLeft, akTop, akRight, akBottom]
    Style = tsFlatButtons
    TabOrder = 0
    object SingleReplay: TTabSheet
      Caption = #1054#1076#1080#1085' '#1073#1086#1081
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        843
        414)
      object ReplayPath: TEdit
        Left = 3
        Top = 3
        Width = 736
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
      end
      object OpenReplay: TButton
        Left = 743
        Top = 2
        Width = 95
        Height = 23
        Anchors = [akTop, akRight]
        Caption = #1054#1090#1082#1088#1099#1090#1100
        TabOrder = 2
        OnClick = OpenReplayClick
      end
      object SingleReplayResults: TPageControl
        Left = 3
        Top = 31
        Width = 839
        Height = 379
        ActivePage = Commands
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object Commands: TTabSheet
          Caption = #1050#1086#1084#1072#1085#1076#1085#1099#1077' '#1076#1086#1089#1090#1080#1078#1077#1085#1080#1103
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            831
            350)
          object Label_exp_allies_pure: TLabel
            Left = 1
            Top = 0
            Width = 146
            Height = 14
            Caption = #1057#1086#1102#1079#1085#1080#1082#1080' ('#1095#1080#1089#1090#1099#1081' '#1086#1087#1099#1090'):'
          end
          object Label_exp_enemies_pure: TLabel
            Left = 418
            Top = 0
            Width = 159
            Height = 14
            Caption = #1055#1088#1086#1090#1080#1074#1085#1080#1082#1080' ('#1095#1080#1089#1090#1099#1081' '#1086#1087#1099#1090'):'
          end
          object Label_map: TLabel
            Left = 84
            Top = 298
            Width = 235
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1047#1080#1084#1085#1080#1081' '#1061#1080#1084#1084#1077#1083#1100#1089#1076#1086#1088#1092', '#1087#1088#1086#1090#1080#1074#1086#1089#1090#1086#1103#1085#1080#1077
          end
          object Label_map_name: TLabel
            Left = 3
            Top = 298
            Width = 36
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1050#1072#1088#1090#1072':'
          end
          object Label_time: TLabel
            Left = 84
            Top = 315
            Width = 118
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = '2014.02.26 00:00:00'
          end
          object Label_battle_time: TLabel
            Left = 3
            Top = 315
            Width = 40
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1042#1088#1077#1084#1103':'
          end
          object Label_isWinner: TLabel
            Left = 84
            Top = 332
            Width = 66
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1055#1086#1088#1072#1078#1077#1085#1080#1077
          end
          object Label_battle_result: TLabel
            Left = 3
            Top = 332
            Width = 60
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
          end
          object Label_double_click_help: TLabel
            Left = 392
            Top = 306
            Width = 436
            Height = 14
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            Caption = 
              #1044#1074#1086#1081#1085#1086#1081' '#1082#1083#1080#1082' '#1085#1072' '#1080#1084#1103' '#1080#1075#1088#1086#1082#1072' '#1080#1083#1080' '#1082#1083#1072#1085' '#1076#1083#1103' '#1086#1090#1082#1088#1099#1090#1080#1103' '#1087#1088#1086#1092#1080#1083#1103' '#1085#1072' '#1086#1092'. ' +
              #1089#1072#1081#1090#1077
          end
          object Label_replayVersionXml: TLabel
            Left = 642
            Top = 326
            Width = 186
            Height = 14
            Alignment = taRightJustify
            Anchors = [akRight, akBottom]
            BiDiMode = bdLeftToRight
            Caption = 'World'#160'of'#160'Tanks v.0.8.10 CT #469'
            ParentBiDiMode = False
          end
          object Label_battle_type: TLabel
            Left = 218
            Top = 332
            Width = 51
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1058#1080#1087' '#1073#1086#1103':'
          end
          object Label_battleType: TLabel
            Left = 275
            Top = 332
            Width = 86
            Height = 14
            Anchors = [akLeft, akBottom]
            Caption = #1073#1086#1077#1074'.'#1086#1073#1091#1095#1077#1085#1080#1077
          end
          object AlliesGrid: TStringGrid
            Left = 1
            Top = 15
            Width = 410
            Height = 277
            Anchors = [akLeft, akTop, akBottom]
            ColCount = 12
            DefaultColWidth = 50
            DefaultRowHeight = 16
            FixedCols = 0
            RowCount = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowClick]
            ParentFont = False
            ScrollBars = ssNone
            TabOrder = 0
            OnDblClick = AlliesGridDblClick
            OnDrawCell = SingleGridsDrawCell
            OnFixedCellClick = SingleGridsFixedCellClick
          end
          object EnemiesGrid: TStringGrid
            Left = 418
            Top = 15
            Width = 410
            Height = 277
            Anchors = [akTop, akBottom]
            ColCount = 12
            DefaultColWidth = 50
            DefaultRowHeight = 16
            FixedCols = 0
            RowCount = 16
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goFixedRowClick]
            ParentFont = False
            ScrollBars = ssNone
            TabOrder = 1
            OnDblClick = EnemiesGridDblClick
            OnDrawCell = SingleGridsDrawCell
            OnFixedCellClick = SingleGridsFixedCellClick
          end
        end
        object Details: TTabSheet
          Caption = #1055#1086#1076#1088#1086#1073#1085#1086
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label_spotted: TLabel
            Left = 183
            Top = 151
            Width = 78
            Height = 14
            Caption = 'Label_spotted'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label_hits: TLabel
            Left = 183
            Top = 30
            Width = 54
            Height = 14
            Caption = 'Label_hits'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_killerID: TLabel
            Left = 183
            Top = 331
            Width = 70
            Height = 14
            Caption = 'Label_killerID'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_damageDealt: TLabel
            Left = 183
            Top = 90
            Width = 106
            Height = 14
            Caption = 'Label_damageDealt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_capturePoints: TLabel
            Left = 183
            Top = 251
            Width = 110
            Height = 14
            Caption = 'Label_capturePoints'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_damageReceived: TLabel
            Left = 183
            Top = 131
            Width = 127
            Height = 14
            Caption = 'Label_damageReceived'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_damaged: TLabel
            Left = 183
            Top = 211
            Width = 85
            Height = 14
            Caption = 'Label_damaged'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label_arenaCreateTime: TLabel
            Left = 653
            Top = 271
            Width = 128
            Height = 14
            Caption = 'Label_arenaCreateTime'
            Visible = False
          end
          object Label_heroVehicleIDs: TLabel
            Left = 653
            Top = 290
            Width = 116
            Height = 14
            Caption = 'Label_heroVehicleIDs'
            Visible = False
          end
          object Label_credits: TLabel
            Left = 615
            Top = 111
            Width = 71
            Height = 14
            Caption = 'Label_credits'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_arenaTypeID: TLabel
            Left = 653
            Top = 312
            Width = 105
            Height = 14
            Caption = 'Label_arenaTypeID'
            Visible = False
          end
          object Label_achieveIndices: TLabel
            Left = 653
            Top = 330
            Width = 114
            Height = 14
            Caption = 'Label_achieveIndices'
            Visible = False
          end
          object Label_shotsReceived: TLabel
            Left = 183
            Top = 111
            Width = 113
            Height = 14
            Caption = 'Label_shotsReceived'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_droppedCapturePoints: TLabel
            Left = 183
            Top = 271
            Width = 157
            Height = 14
            Caption = 'Label_droppedCapturePoints'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_xp: TLabel
            Left = 615
            Top = 30
            Width = 55
            Height = 14
            Caption = 'Label_xp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_autoRepairCost: TLabel
            Left = 615
            Top = 171
            Width = 117
            Height = 14
            Caption = 'Label_autoRepairCost'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_kills: TLabel
            Left = 183
            Top = 231
            Width = 52
            Height = 14
            Caption = 'Label_kills'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object Label_enemies_spotted: TLabel
            Left = 15
            Top = 151
            Width = 70
            Height = 14
            Caption = #1054#1073#1085#1072#1088#1091#1078#1080#1083':'
          end
          object Label_repair_cost: TLabel
            Left = 451
            Top = 171
            Width = 73
            Height = 14
            Caption = #1040#1074#1090#1086#1088#1077#1084#1086#1085#1090':'
          end
          object Label_direct_hits: TLabel
            Left = 24
            Top = 30
            Width = 112
            Height = 14
            Caption = #1087#1088#1103#1084#1099#1093' '#1087#1086#1087#1072#1076#1072#1085#1080#1081':'
          end
          object Label_killed_by: TLabel
            Left = 15
            Top = 331
            Width = 82
            Height = 14
            Caption = #1059#1073#1080#1090' '#1080#1075#1088#1086#1082#1086#1084':'
          end
          object Label_damage_dealt: TLabel
            Left = 15
            Top = 90
            Width = 75
            Height = 14
            Caption = #1059#1088#1086#1085#1072' '#1085#1072#1085#1077#1089':'
          end
          object Label_capture_points: TLabel
            Left = 15
            Top = 251
            Width = 84
            Height = 14
            Caption = #1054#1095#1082#1086#1074' '#1079#1072#1093#1074#1072#1090#1072':'
          end
          object Label_damage_got_potential: TLabel
            Left = 15
            Top = 131
            Width = 160
            Height = 14
            Caption = #1059#1088#1086#1085#1072' '#1087#1086#1083#1091#1095#1080#1083'/'#1087#1086#1090#1077#1085#1094#1080#1072#1083'.:'
          end
          object Label_tanks_damaged: TLabel
            Left = 15
            Top = 211
            Width = 60
            Height = 14
            Caption = #1055#1086#1074#1088#1077#1076#1080#1083':'
          end
          object lb_arenaCreateTime: TLabel
            Left = 533
            Top = 271
            Width = 97
            Height = 14
            Caption = 'arenaCreateTime:'
            Visible = False
          end
          object lb_heroVehicleIDs: TLabel
            Left = 533
            Top = 290
            Width = 85
            Height = 14
            Caption = 'heroVehicleIDs:'
            Visible = False
          end
          object Label_income: TLabel
            Left = 451
            Top = 111
            Width = 57
            Height = 14
            Caption = #1057#1077#1088#1077#1073#1088#1072':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lb_arenaTypeID: TLabel
            Left = 533
            Top = 312
            Width = 74
            Height = 14
            Caption = 'arenaTypeID:'
            Visible = False
          end
          object lb_achieveIndices: TLabel
            Left = 533
            Top = 330
            Width = 83
            Height = 14
            Caption = 'achieveIndices:'
            Visible = False
          end
          object Label_hits_got: TLabel
            Left = 15
            Top = 111
            Width = 118
            Height = 14
            Caption = #1055#1086#1087#1072#1076#1072#1085#1080#1081' '#1087#1086#1083#1091#1095#1080#1083':'
          end
          object Label_dropped_points: TLabel
            Left = 15
            Top = 271
            Width = 77
            Height = 14
            Caption = #1047#1072#1093#1074#1072#1090#1072' '#1089#1073#1080#1083':'
          end
          object Label_exp: TLabel
            Left = 451
            Top = 30
            Width = 45
            Height = 14
            Caption = #1054#1087#1099#1090#1072':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_shots_count: TLabel
            Left = 15
            Top = 10
            Width = 65
            Height = 14
            Caption = #1042#1099#1089#1090#1088#1077#1083#1086#1074':'
          end
          object Label_tanks_destroyed: TLabel
            Left = 15
            Top = 231
            Width = 69
            Height = 14
            Caption = #1059#1085#1080#1095#1090#1086#1078#1080#1083':'
          end
          object Label_he_hits_count: TLabel
            Left = 24
            Top = 50
            Width = 117
            Height = 14
            Caption = #1092#1091#1075#1072#1089#1085#1099#1093' '#1087#1086#1074#1088#1077#1078#1076'.:'
          end
          object Label_piercing_count: TLabel
            Left = 24
            Top = 70
            Width = 59
            Height = 14
            Caption = #1087#1088#1086#1073#1080#1090#1080#1081':'
          end
          object Label_shots: TLabel
            Left = 183
            Top = 10
            Width = 64
            Height = 14
            Caption = 'Label_shots'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_he_hits: TLabel
            Left = 183
            Top = 50
            Width = 75
            Height = 14
            Caption = 'Label_he_hits'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_pierced: TLabel
            Left = 183
            Top = 70
            Width = 75
            Height = 14
            Caption = 'Label_pierced'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_assisted_radio: TLabel
            Left = 15
            Top = 171
            Width = 57
            Height = 14
            Caption = #1053#1072#1089#1074#1077#1090#1080#1083':'
          end
          object Label_damageAssistedRadio: TLabel
            Left = 183
            Top = 171
            Width = 151
            Height = 14
            Caption = 'Label_damageAssistedRadio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_assisted_track: TLabel
            Left = 15
            Top = 191
            Width = 120
            Height = 14
            Caption = #1059#1088#1086#1085#1072' '#1087#1086' '#1079#1072#1075#1091#1089#1083#1077#1085#1085'.:'
          end
          object Label_damageAssistedTrack: TLabel
            Left = 183
            Top = 191
            Width = 152
            Height = 14
            Caption = 'Label_damageAssistedTrack'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_life_battle_time: TLabel
            Left = 15
            Top = 291
            Width = 121
            Height = 14
            Caption = #1055#1088#1086#1078#1080#1083'/'#1041#1086#1081' '#1076#1083#1080#1083#1089#1103':'
          end
          object Label_lifetime_duration: TLabel
            Left = 183
            Top = 291
            Width = 126
            Height = 14
            Caption = 'Label_lifetime_duration'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_mileage_lb: TLabel
            Left = 15
            Top = 311
            Width = 45
            Height = 14
            Caption = #1055#1088#1086#1073#1077#1075':'
          end
          object Label_mileage: TLabel
            Left = 183
            Top = 311
            Width = 76
            Height = 14
            Caption = 'Label_mileage'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_free_exp: TLabel
            Left = 451
            Top = 70
            Width = 71
            Height = 14
            Caption = #1057#1074#1086#1073#1086#1076#1085#1086#1075#1086':'
          end
          object Label_freeXp: TLabel
            Left = 615
            Top = 70
            Width = 71
            Height = 14
            Caption = 'Label_freeXp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_creditsPenalty: TLabel
            Left = 615
            Top = 131
            Width = 111
            Height = 14
            Caption = 'Label_creditsPenalty'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_income_penalty: TLabel
            Left = 451
            Top = 131
            Width = 114
            Height = 14
            Caption = #1064#1090#1088#1072#1092' '#1079#1072' '#1089#1086#1102#1079'. '#1091#1088'.:'
          end
          object Label_income_contribution: TLabel
            Left = 451
            Top = 151
            Width = 80
            Height = 14
            Caption = #1050#1086#1084#1087#1077#1085#1089#1072#1094#1080#1103':'
          end
          object Label_creditsContributionIn: TLabel
            Left = 615
            Top = 151
            Width = 149
            Height = 14
            Caption = 'Label_creditsContributionIn'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_load_cost: TLabel
            Left = 451
            Top = 191
            Width = 119
            Height = 14
            Caption = #1040#1074#1090#1086#1087#1086#1087#1086#1083#1085#1077#1085#1080#1077' '#1041#1050':'
          end
          object Label_autoLoadCost: TLabel
            Left = 615
            Top = 191
            Width = 110
            Height = 14
            Caption = 'Label_autoLoadCost'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_equip_cost: TLabel
            Left = 451
            Top = 211
            Width = 110
            Height = 14
            Caption = #1040#1074#1090#1086'. '#1089#1085#1072#1088#1103#1078#1077#1085#1080#1077':'
          end
          object Label_autoEquipCost: TLabel
            Left = 615
            Top = 211
            Width = 114
            Height = 14
            Caption = 'Label_autoEquipCost'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_income_total: TLabel
            Left = 451
            Top = 231
            Width = 41
            Height = 14
            Caption = #1048#1090#1086#1075#1086':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_silverSumm: TLabel
            Left = 615
            Top = 231
            Width = 109
            Height = 14
            Caption = 'Label_silverSumm'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_is_premium: TLabel
            Left = 451
            Top = 10
            Width = 55
            Height = 14
            Caption = #1055#1088#1077#1084#1080#1091#1084':'
          end
          object Label_premium: TLabel
            Left = 615
            Top = 10
            Width = 82
            Height = 14
            Caption = 'Label_premium'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_exp_penalty_lb: TLabel
            Left = 451
            Top = 50
            Width = 114
            Height = 14
            Caption = #1064#1090#1088#1072#1092' '#1079#1072' '#1089#1086#1102#1079'. '#1091#1088'.:'
          end
          object Label_xpPenalty: TLabel
            Left = 615
            Top = 50
            Width = 88
            Height = 14
            Caption = 'Label_xpPenalty'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
      end
      object ViewReplay: TButton
        Left = 225
        Top = 31
        Width = 140
        Height = 22
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1088#1077#1087#1083#1077#1081
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = ViewReplayClick
      end
    end
    object SeriesReplays: TTabSheet
      Caption = #1057#1077#1088#1080#1103' '#1073#1086#1077#1074
      ImageIndex = 1
      DesignSize = (
        843
        414)
      object Label_m_drop_files_here: TLabel
        Left = 588
        Top = 4
        Width = 250
        Height = 14
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeftNoAlign
        Caption = #1055#1077#1088#1077#1090#1072#1097#1080#1090#1077' '#1088#1077#1087#1083#1077#1080' '#1074' '#1086#1082#1085#1086' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
      end
      object SeriesAnalysisButton: TButton
        Left = 3
        Top = 0
        Width = 75
        Height = 25
        Caption = #1053#1072#1095#1072#1090#1100
        TabOrder = 0
        OnClick = SeriesAnalysisButtonClick
      end
      object XlsExport: TButton
        Left = 154
        Top = 0
        Width = 76
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' xls'
        TabOrder = 2
        OnClick = XlsExportClick
      end
      object HTMLExport: TButton
        Left = 77
        Top = 0
        Width = 78
        Height = 25
        Caption = #1069#1082#1089#1087#1086#1088#1090' htm'
        TabOrder = 1
        OnClick = HTMLExportClick
      end
      object Multi: TPageControl
        Left = 3
        Top = 31
        Width = 839
        Height = 380
        ActivePage = MultiExp
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 4
        object MultiExp: TTabSheet
          Caption = #1054#1087#1099#1090
          DesignSize = (
            831
            351)
          object SeriesGridExp: TStringGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 350
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            Color = clWhite
            ColCount = 13
            DefaultColWidth = 60
            DefaultRowHeight = 18
            DoubleBuffered = False
            DrawingStyle = gdsGradient
            RowCount = 18
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GradientEndColor = cl3DLight
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking, goFixedRowClick]
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnDblClick = SeriesGridExpDblClick
            OnDrawCell = SeriesGridExpDrawCell
            OnFixedCellClick = SeriesGridFixedCellClick
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
            ColWidths = (
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60)
          end
        end
        object MultiFrags: TTabSheet
          Caption = #1060#1088#1072#1075#1080
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            831
            351)
          object SeriesGridFrags: TStringGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 350
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            Color = clWhite
            ColCount = 13
            DefaultColWidth = 60
            DefaultRowHeight = 18
            DoubleBuffered = False
            DrawingStyle = gdsGradient
            RowCount = 18
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GradientEndColor = cl3DLight
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking, goFixedRowClick]
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnDblClick = SeriesGridExpDblClick
            OnDrawCell = SeriesGridExpDrawCell
            OnFixedCellClick = SeriesGridFixedCellClick
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
            ColWidths = (
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60)
          end
        end
        object MultiDamage: TTabSheet
          Caption = #1059#1088#1086#1085
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            831
            351)
          object SeriesGridDamage: TStringGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 350
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            Color = clWhite
            ColCount = 13
            DefaultColWidth = 60
            DefaultRowHeight = 18
            DoubleBuffered = False
            DrawingStyle = gdsGradient
            RowCount = 18
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GradientEndColor = cl3DLight
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking, goFixedRowClick]
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnDblClick = SeriesGridExpDblClick
            OnDrawCell = SeriesGridExpDrawCell
            OnFixedCellClick = SeriesGridFixedCellClick
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
            ColWidths = (
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60)
          end
        end
        object MultiSupport: TTabSheet
          Caption = #1055#1086#1084#1086#1097#1100
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            831
            351)
          object SeriesGridSupport: TStringGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 350
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            Color = clWhite
            ColCount = 13
            DefaultColWidth = 60
            DefaultRowHeight = 18
            DoubleBuffered = False
            DrawingStyle = gdsGradient
            RowCount = 18
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GradientEndColor = cl3DLight
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking, goFixedRowClick]
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnDblClick = SeriesGridExpDblClick
            OnDrawCell = SeriesGridExpDrawCell
            OnFixedCellClick = SeriesGridFixedCellClick
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
            ColWidths = (
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60)
          end
        end
        object MultiShots: TTabSheet
          Caption = #1057#1090#1088#1077#1083#1100#1073#1072
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            831
            351)
          object SeriesGridShots: TStringGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 350
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            Color = clWhite
            ColCount = 13
            DefaultColWidth = 60
            DefaultRowHeight = 18
            DoubleBuffered = False
            DrawingStyle = gdsGradient
            RowCount = 18
            FixedRows = 3
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GradientEndColor = cl3DLight
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking, goFixedRowClick]
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnDblClick = SeriesGridExpDblClick
            OnDrawCell = SeriesGridShotsDrawCell
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
            ColWidths = (
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60
              60)
          end
        end
        object MultiTotal: TTabSheet
          Caption = #1048#1090#1086#1075#1086
          ImageIndex = 5
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            831
            351)
          object SeriesGridSummary: TStringGrid
            Left = 0
            Top = 0
            Width = 828
            Height = 350
            Anchors = [akLeft, akTop, akRight, akBottom]
            BevelInner = bvLowered
            Color = clWhite
            ColCount = 9
            DefaultColWidth = 60
            DefaultRowHeight = 18
            DoubleBuffered = False
            DrawingStyle = gdsGradient
            RowCount = 18
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            GradientEndColor = cl3DLight
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goThumbTracking, goFixedRowClick]
            ParentDoubleBuffered = False
            ParentFont = False
            TabOrder = 0
            OnFixedCellClick = SeriesGridSummaryFixedCellClick
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
            ColWidths = (
              60
              60
              60
              60
              60
              60
              60
              60
              60)
          end
        end
        object MultiSummary: TTabSheet
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label_m_shots_count: TLabel
            Left = 28
            Top = 57
            Width = 65
            Height = 14
            Caption = #1042#1099#1089#1090#1088#1077#1083#1086#1074':'
          end
          object Label_m_accuracy_lb: TLabel
            Left = 28
            Top = 117
            Width = 58
            Height = 14
            Caption = #1058#1086#1095#1085#1086#1089#1090#1100':'
          end
          object Label_m_damage_dealt: TLabel
            Left = 28
            Top = 157
            Width = 75
            Height = 14
            Caption = #1059#1088#1086#1085#1072' '#1085#1072#1085#1077#1089':'
          end
          object Label_m_shots_received: TLabel
            Left = 28
            Top = 217
            Width = 118
            Height = 14
            Caption = #1055#1086#1087#1072#1076#1072#1085#1080#1081' '#1087#1086#1083#1091#1095#1080#1083':'
          end
          object Label_m_damage_received: TLabel
            Left = 28
            Top = 197
            Width = 90
            Height = 14
            Caption = #1059#1088#1086#1085#1072' '#1087#1086#1083#1091#1095#1080#1083':'
          end
          object Label_m_potential_damage_got: TLabel
            Left = 28
            Top = 257
            Width = 119
            Height = 14
            Caption = #1055#1086#1090#1077#1085#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1091#1088'.:'
          end
          object Label_m_total_avg1: TLabel
            Left = 197
            Top = 37
            Width = 121
            Height = 14
            Caption = #1057#1091#1084#1084#1072#1088#1085#1086'/'#1042' '#1089#1088#1077#1076#1085#1077#1084
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_m_avg_dmg_got: TLabel
            Left = 28
            Top = 237
            Width = 163
            Height = 14
            Caption = #1057#1088#1077#1076#1085'. '#1091#1088'. '#1079#1072' '#1087#1086#1083#1091#1095'. '#1087#1086#1087#1072#1076'.:'
          end
          object Label_m_avg_dmg_per_shot: TLabel
            Left = 28
            Top = 177
            Width = 150
            Height = 14
            Caption = #1057#1088#1077#1076#1085#1080#1081' '#1091#1088#1086#1085' '#1079#1072' '#1074#1099#1089#1090#1088#1077#1083':'
          end
          object Label_m_avg_dmg_pot_got: TLabel
            Left = 28
            Top = 277
            Width = 162
            Height = 14
            Caption = #1057#1088#1077#1076'. '#1087#1086#1090#1077#1085#1094#1080#1072#1083'. '#1079#1072' '#1087#1086#1087#1072#1076'.:'
          end
          object Label_m_dmg_rec_to_pot1: TLabel
            Left = 28
            Top = 297
            Width = 151
            Height = 14
            Caption = #1054#1090#1085#1086#1096#1077#1085#1080#1077' '#1087#1086#1090#1077#1085#1094'. '#1091#1088#1086#1085#1072
          end
          object Label_m_dmg_rec_to_pot2: TLabel
            Left = 89
            Top = 311
            Width = 90
            Height = 14
            Caption = #1082' '#1087#1086#1083#1091#1095#1077#1085#1085#1086#1084#1091':'
          end
          object Label_m_spotted_lb: TLabel
            Left = 28
            Top = 331
            Width = 70
            Height = 14
            Caption = #1054#1073#1085#1072#1088#1091#1078#1080#1083':'
          end
          object Label_m_damaged_lb: TLabel
            Left = 427
            Top = 77
            Width = 60
            Height = 14
            Caption = #1055#1086#1074#1088#1077#1076#1080#1083':'
          end
          object Label_m_destroyed_lb: TLabel
            Left = 427
            Top = 97
            Width = 69
            Height = 14
            Caption = #1059#1085#1080#1095#1090#1086#1078#1080#1083':'
          end
          object Label_m_radio: TLabel
            Left = 427
            Top = 37
            Width = 57
            Height = 14
            Caption = #1053#1072#1089#1074#1077#1090#1080#1083':'
          end
          object Label_m_track: TLabel
            Left = 427
            Top = 57
            Width = 93
            Height = 14
            Caption = #1059#1088#1086#1085' '#1087#1086' '#1079#1072#1075#1091#1089#1083'.:'
          end
          object Label_m_capture_points: TLabel
            Left = 427
            Top = 117
            Width = 84
            Height = 14
            Caption = #1054#1095#1082#1086#1074' '#1079#1072#1093#1074#1072#1090#1072':'
          end
          object Label_m_dropped_points: TLabel
            Left = 427
            Top = 137
            Width = 84
            Height = 14
            Caption = #1054#1095#1082#1086#1074' '#1079#1072#1097#1080#1090#1099':'
          end
          object Label_m_lifetime_lb: TLabel
            Left = 427
            Top = 157
            Width = 50
            Height = 14
            Caption = #1055#1088#1086#1078#1080#1083':'
          end
          object Label_m_exp_lb: TLabel
            Left = 427
            Top = 237
            Width = 45
            Height = 14
            Caption = #1054#1087#1099#1090#1072':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_m_total_avg2: TLabel
            Left = 537
            Top = 17
            Width = 121
            Height = 14
            Caption = #1057#1091#1084#1084#1072#1088#1085#1086'/'#1042' '#1089#1088#1077#1076#1085#1077#1084
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label_m_refill: TLabel
            Left = 427
            Top = 277
            Width = 93
            Height = 14
            Caption = #1055#1086#1087#1086#1083#1085#1077#1085#1080#1077' '#1041#1050':'
          end
          object Label_m_repair_lb: TLabel
            Left = 427
            Top = 297
            Width = 46
            Height = 14
            Caption = #1056#1077#1084#1086#1085#1090':'
          end
          object Label_m_equip_lb: TLabel
            Left = 427
            Top = 317
            Width = 76
            Height = 14
            Caption = #1057#1085#1072#1088#1103#1078#1077#1085#1080#1077':'
          end
          object Label_m_income_total: TLabel
            Left = 427
            Top = 337
            Width = 61
            Height = 14
            Caption = #1055#1088#1080#1073#1099#1083#1100':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_m_income: TLabel
            Left = 427
            Top = 257
            Width = 52
            Height = 14
            Caption = #1057#1077#1088#1077#1073#1088#1072':'
          end
          object Label_m_shots: TLabel
            Left = 197
            Top = 57
            Width = 81
            Height = 14
            Caption = 'Label_m_shots'
            ParentShowHint = False
            ShowHint = False
          end
          object Label_m_dmg: TLabel
            Left = 197
            Top = 157
            Width = 76
            Height = 14
            Caption = 'Label_m_dmg'
          end
          object Label_m_accuracy: TLabel
            Left = 197
            Top = 117
            Width = 99
            Height = 14
            Caption = 'Label_m_accuracy'
          end
          object Label_m_dmgrecieved: TLabel
            Left = 197
            Top = 197
            Width = 122
            Height = 14
            Caption = 'Label_m_dmgrecieved'
          end
          object Label_m_dmgpershot: TLabel
            Left = 197
            Top = 177
            Width = 118
            Height = 14
            Caption = 'Label_m_dmgpershot'
          end
          object Label_m_shotsReceived: TLabel
            Left = 197
            Top = 217
            Width = 130
            Height = 14
            Caption = 'Label_m_shotsReceived'
          end
          object Label_m_potentialgot: TLabel
            Left = 197
            Top = 257
            Width = 119
            Height = 14
            Caption = 'Label_m_potentialgot'
          end
          object Label_m_dmgpergot: TLabel
            Left = 197
            Top = 237
            Width = 113
            Height = 14
            Caption = 'Label_m_dmgpergot'
          end
          object Label_m_potencpershot: TLabel
            Left = 197
            Top = 277
            Width = 133
            Height = 14
            Caption = 'Label_m_potencpershot'
          end
          object Label_m_pottorecieved: TLabel
            Left = 197
            Top = 311
            Width = 129
            Height = 14
            Caption = 'Label_m_pottorecieved'
          end
          object Label_m_spotted: TLabel
            Left = 197
            Top = 331
            Width = 95
            Height = 14
            Caption = 'Label_m_spotted'
          end
          object Label_m_profit: TLabel
            Left = 537
            Top = 337
            Width = 94
            Height = 14
            Caption = 'Label_m_profit'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_m_exp: TLabel
            Left = 537
            Top = 237
            Width = 81
            Height = 14
            Caption = 'Label_m_exp'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_m_lifetime: TLabel
            Left = 537
            Top = 157
            Width = 91
            Height = 14
            Caption = 'Label_m_lifetime'
          end
          object Label_m_defend: TLabel
            Left = 537
            Top = 137
            Width = 91
            Height = 14
            Caption = 'Label_m_defend'
          end
          object Label_m_survive: TLabel
            Left = 537
            Top = 197
            Width = 89
            Height = 14
            Caption = 'Label_m_survive'
          end
          object Label_m_lifetimeproc: TLabel
            Left = 537
            Top = 177
            Width = 115
            Height = 14
            Caption = 'Label_m_lifetimeproc'
          end
          object Label_m_capture: TLabel
            Left = 537
            Top = 117
            Width = 94
            Height = 14
            Caption = 'Label_m_capture'
          end
          object Label_m_equip: TLabel
            Left = 537
            Top = 317
            Width = 82
            Height = 14
            Caption = 'Label_m_equip'
          end
          object Label_m_repair: TLabel
            Left = 537
            Top = 297
            Width = 82
            Height = 14
            Caption = 'Label_m_repair'
          end
          object Label_m_ammo: TLabel
            Left = 537
            Top = 277
            Width = 85
            Height = 14
            Caption = 'Label_m_ammo'
          end
          object Label_m_silver: TLabel
            Left = 537
            Top = 257
            Width = 78
            Height = 14
            Caption = 'Label_m_silver'
          end
          object Label_m_support: TLabel
            Left = 537
            Top = 37
            Width = 94
            Height = 14
            Caption = 'Label_m_support'
          end
          object Label_m_tracks: TLabel
            Left = 537
            Top = 57
            Width = 84
            Height = 14
            Caption = 'Label_m_tracks'
          end
          object Label_m_killed: TLabel
            Left = 537
            Top = 97
            Width = 78
            Height = 14
            Caption = 'Label_m_killed'
          end
          object Label_m_damaged: TLabel
            Left = 537
            Top = 77
            Width = 102
            Height = 14
            Caption = 'Label_m_damaged'
          end
          object Label_m_wins_batlles_count: TLabel
            Left = 28
            Top = 17
            Width = 72
            Height = 14
            Caption = #1055#1086#1073#1077#1076'/'#1041#1086#1077#1074':'
          end
          object Label_m_battles: TLabel
            Left = 197
            Top = 17
            Width = 89
            Height = 14
            Caption = 'Label_m_battles'
          end
          object Label_m_mileage: TLabel
            Left = 537
            Top = 217
            Width = 93
            Height = 14
            Caption = 'Label_m_mileage'
          end
          object Label_m_mileage_lb: TLabel
            Left = 427
            Top = 217
            Width = 45
            Height = 14
            Caption = #1055#1088#1086#1073#1077#1075':'
          end
          object Label_m_duration: TLabel
            Left = 681
            Top = 57
            Width = 97
            Height = 14
            Caption = 'Label_m_duration'
            Visible = False
          end
          object Label_m_piercing_count: TLabel
            Left = 28
            Top = 137
            Width = 60
            Height = 14
            Caption = #1055#1088#1086#1073#1080#1090#1080#1081':'
          end
          object Label_m_pierced: TLabel
            Left = 197
            Top = 137
            Width = 92
            Height = 14
            Caption = 'Label_m_pierced'
          end
          object Label_m_hits_count: TLabel
            Left = 28
            Top = 97
            Width = 66
            Height = 14
            Caption = #1055#1086#1087#1072#1076#1072#1085#1080#1081':'
          end
          object Label_m_hits: TLabel
            Left = 197
            Top = 97
            Width = 71
            Height = 14
            Caption = 'Label_m_hits'
          end
          object Label_m_wins: TLabel
            Left = 681
            Top = 77
            Width = 76
            Height = 14
            Caption = 'Label_m_wins'
            Visible = False
          end
          object Label_m_he_hits: TLabel
            Left = 28
            Top = 77
            Width = 141
            Height = 14
            Caption = #1060#1091#1075#1072#1089#1085#1099#1093' '#1087#1086#1074#1088#1077#1078#1076#1077#1085#1080#1081':'
          end
          object Label_m_hehits: TLabel
            Left = 197
            Top = 77
            Width = 85
            Height = 14
            Caption = 'Label_m_hehits'
          end
          object Label_m_authors_statistics: TLabel
            Left = 323
            Top = 7
            Width = 174
            Height = 14
            Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072' '#1072#1074#1090#1086#1088#1072' '#1088#1077#1087#1083#1077#1077#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label_m_lifetime_perc: TLabel
            Left = 427
            Top = 177
            Width = 91
            Height = 14
            Caption = #1055#1088#1086#1078#1080#1083' % '#1073#1086#1103':'
          end
          object Label_m_survived: TLabel
            Left = 427
            Top = 197
            Width = 88
            Height = 14
            Caption = #1042#1099#1078#1080#1074#1072#1077#1084#1086#1089#1090#1100':'
          end
        end
      end
      object Label_replaysList: TListBox
        Left = 3
        Top = 53
        Width = 838
        Height = 358
        Anchors = [akLeft, akTop, akRight, akBottom]
        DragMode = dmAutomatic
        ItemHeight = 14
        Sorted = True
        TabOrder = 3
        Visible = False
      end
    end
    object ts_ReplaysList: TTabSheet
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1088#1077#1087#1083#1077#1103#1084#1080
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        843
        414)
      object pc_ReplaysList: TPageControl
        Left = 0
        Top = 1
        Width = 842
        Height = 413
        ActivePage = ts_AllReplays
        Anchors = [akLeft, akTop, akRight, akBottom]
        Style = tsButtons
        TabOrder = 6
        object ts_AllReplays: TTabSheet
          Caption = #1042#1089#1077' '#1088#1077#1087#1083#1077#1080
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            834
            381)
          object sg_AllReplays: TStringGrid
            Left = 0
            Top = 0
            Width = 834
            Height = 381
            Anchors = [akLeft, akTop, akRight, akBottom]
            ColCount = 21
            DefaultColWidth = 50
            DefaultRowHeight = 17
            FixedCols = 0
            RowCount = 19
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goThumbTracking, goFixedRowClick]
            TabOrder = 0
            OnDblClick = ReplaysListDblClick
            OnDrawCell = ReplaysListOnDrawCell
            OnFixedCellClick = ReplaysListFixedCellClick
            OnMouseWheelDown = SeriesGridsMouseWheelDown
            OnMouseWheelUp = SeriesGridsMouseWheelUp
          end
          object Label_AllReplaysList: TListBox
            Left = 710
            Top = 281
            Width = 121
            Height = 97
            Anchors = [akRight, akBottom]
            ItemHeight = 14
            Sorted = True
            TabOrder = 1
            Visible = False
          end
        end
        object ts_FavoriteReplays: TTabSheet
          Caption = #1048#1079#1073#1088#1072#1085#1085#1086#1077
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          DesignSize = (
            834
            381)
          object sg_FavoriteReplays: TStringGrid
            Left = 0
            Top = 0
            Width = 834
            Height = 381
            Anchors = [akLeft, akTop, akRight, akBottom]
            ColCount = 21
            DefaultColWidth = 50
            DefaultRowHeight = 17
            FixedCols = 0
            RowCount = 19
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goThumbTracking, goFixedRowClick]
            TabOrder = 0
            OnDblClick = ReplaysListDblClick
            OnDrawCell = ReplaysListOnDrawCell
            OnFixedCellClick = ReplaysListFixedCellClick
          end
          object Label_favoriteReplaysList: TListBox
            Left = 710
            Top = 281
            Width = 121
            Height = 97
            Anchors = [akRight, akBottom]
            ItemHeight = 14
            Sorted = True
            TabOrder = 1
            Visible = False
          end
        end
      end
      object bt_AddToFavorites: TButton
        Left = 573
        Top = 1
        Width = 82
        Height = 22
        Caption = #1042' '#1080#1079#1073#1088#1072#1085#1085#1086#1077
        TabOrder = 0
        OnClick = bt_AddToFavoritesClick
      end
      object bt_DeleteSelected: TButton
        Left = 783
        Top = 1
        Width = 55
        Height = 22
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 1
        OnClick = bt_DeleteSelectedClick
      end
      object bt_ProcessInRS: TButton
        Left = 656
        Top = 1
        Width = 126
        Height = 22
        Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1088#1077#1079'-'#1090#1099
        TabOrder = 2
        OnClick = bt_ProcessInRSClick
      end
      object bt_Refresh: TButton
        Left = 502
        Top = 1
        Width = 70
        Height = 22
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnClick = bt_RefreshClick
      end
      object ed_AllReplaysFolder: TEdit
        Left = 157
        Top = 1
        Width = 324
        Height = 22
        TabOrder = 5
        Text = #1059#1082#1072#1078#1080#1090#1077' '#1087#1091#1090#1100' '#1082' '#1088#1077#1087#1083#1077#1103#1084' -->'
        OnDblClick = ed_AllReplaysFolderDblClick
      end
      object bt_SelectFolder: TButton
        Left = 482
        Top = 1
        Width = 19
        Height = 22
        Caption = '...'
        TabOrder = 4
        OnClick = bt_SelectFolderClick
      end
    end
    object Options: TTabSheet
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 3
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      DesignSize = (
        843
        414)
      object Label_language: TLabel
        Left = 3
        Top = 6
        Width = 96
        Height = 14
        Caption = #1071#1079#1099#1082' / Language:'
      end
      object gp_options_multi: TGroupBox
        Left = 3
        Top = 31
        Width = 272
        Height = 380
        Anchors = [akLeft, akTop, akRight, akBottom]
        Caption = #1054#1090#1086#1073#1088#1072#1078#1077#1085#1080#1077' '#1089#1077#1088#1080#1080' '#1073#1086#1077#1074
        TabOrder = 0
        object Label_opt_collect_user_data: TLabel
          Left = 29
          Top = 41
          Width = 215
          Height = 28
          AutoSize = False
          Caption = '('#1074#1082#1083#1102#1095#1072#1103' '#1082#1086#1083'-'#1074#1086' '#1074#1099#1089#1090#1088#1077#1083#1086#1074', '#1091#1088#1086#1085' '#1087#1086' '#1090#1072#1085#1082#1091' '#1080#1075#1088#1086#1082#1072', '#1089#1077#1088#1077#1073#1088#1086' '#1080' '#1090'.'#1076'.)'
          WordWrap = True
        end
        object Label_opt_group_by_battle: TLabel
          Left = 29
          Top = 101
          Width = 240
          Height = 28
          AutoSize = False
          Caption = '('#1080#1075#1085#1086#1088#1080#1088#1086#1074#1072#1090#1100' '#1091#1095#1072#1089#1090#1080#1077' '#1080#1075#1088#1086#1082#1086#1074' '#1074' '#1087#1088#1077#1076#1099#1076#1091#1097#1080#1093' '#1073#1086#1103#1093')'
          WordWrap = True
        end
        object Label_opt_summary_to_begin: TLabel
          Left = 29
          Top = 158
          Width = 240
          Height = 42
          AutoSize = False
          Caption = 
            '('#1087#1077#1088#1077#1085#1077#1089#1090#1080' '#1082#1086#1083#1086#1085#1082#1080' '#1089' '#1089#1091#1084#1084#1072#1088#1085#1099#1084#1080' '#1080' '#1089#1088#1077#1076#1085#1080#1084#1080' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1103#1084#1080' '#1074' '#1085#1072#1095#1072#1083#1086 +
            ' '#1090#1072#1073#1083#1080#1094')'
          WordWrap = True
        end
        object Label_PathPlayer: TLabel
          Left = 11
          Top = 202
          Width = 92
          Height = 14
          Caption = 'Label_PathPlayer'
          Visible = False
        end
        object Label_PathClan: TLabel
          Left = 11
          Top = 228
          Width = 82
          Height = 14
          Caption = 'Label_PathClan'
          Visible = False
        end
        object Label_PathPlayerSearch: TLabel
          Left = 11
          Top = 215
          Width = 129
          Height = 14
          Caption = 'Label_PathPlayerSearch'
          Visible = False
        end
        object Label_common_browse: TLabel
          Left = 11
          Top = 241
          Width = 129
          Height = 14
          Caption = 'Label_common_browse'
          Visible = False
        end
        object Label_common_favs: TLabel
          Left = 11
          Top = 254
          Width = 110
          Height = 14
          Caption = 'Label_common_favs'
          Visible = False
        end
        object Label_common_delete_selected: TLabel
          Left = 11
          Top = 267
          Width = 177
          Height = 14
          Caption = 'Label_common_delete_selected'
          Visible = False
        end
        object Label_common_error: TLabel
          Left = 11
          Top = 280
          Width = 115
          Height = 14
          Caption = 'Label_common_error'
          Visible = False
        end
        object Label_current_replay: TLabel
          Left = 11
          Top = 293
          Width = 114
          Height = 14
          Caption = 'Label_current_replay'
          Visible = False
        end
        object Label_common_name: TLabel
          Left = 11
          Top = 305
          Width = 119
          Height = 14
          Caption = 'Label_common_name'
          Visible = False
        end
        object Label_common_total_exp: TLabel
          Left = 11
          Top = 317
          Width = 141
          Height = 14
          Caption = 'Label_common_total_exp'
          Visible = False
        end
        object Label_common_total_frags: TLabel
          Left = 11
          Top = 330
          Width = 147
          Height = 14
          Caption = 'Label_common_total_frags'
          Visible = False
        end
        object Label_common_total_supp: TLabel
          Left = 11
          Top = 342
          Width = 147
          Height = 14
          Caption = 'Label_common_total_supp'
          Visible = False
        end
        object Label_common_total_dmg: TLabel
          Left = 11
          Top = 353
          Width = 145
          Height = 14
          Caption = 'Label_common_total_dmg'
          Visible = False
        end
        object MultiAdditional: TCheckBox
          Left = 11
          Top = 25
          Width = 258
          Height = 17
          Caption = #1057#1086#1073#1080#1088#1072#1090#1100' '#1074#1089#1102' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1087#1086' '#1072#1074#1090#1086#1088#1091
          TabOrder = 0
        end
        object MultiToBegin: TCheckBox
          Left = 11
          Top = 139
          Width = 258
          Height = 17
          Caption = '"'#1048#1090#1086#1075#1086'" '#1074' '#1085#1072#1095#1072#1083#1086
          TabOrder = 1
        end
        object MultiGroupPlayers: TCheckBox
          Left = 11
          Top = 80
          Width = 258
          Height = 17
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1073#1086#1103#1084
          TabOrder = 2
        end
      end
      object gp_options_rep_mng: TGroupBox
        Left = 281
        Top = 31
        Width = 273
        Height = 380
        Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1088#1077#1087#1083#1077#1103#1084#1080
        TabOrder = 1
        object Label_opt_auto_proceed: TLabel
          Left = 31
          Top = 41
          Width = 239
          Height = 28
          AutoSize = False
          Caption = 
            '('#1087#1088#1080' '#1079#1072#1087#1091#1089#1082#1077' '#1086#1073#1088#1072#1073#1072#1090#1099#1074#1072#1090#1100' '#1087#1072#1087#1082#1091' '#1089' '#1088#1077#1087#1083#1077#1103#1084#1080' '#1080' '#1087#1077#1088#1077#1082#1083#1102#1095#1072#1090#1100#1089#1103' '#1085#1072' '#1074#1082 +
            #1083#1072#1076#1082#1091')'
          WordWrap = True
        end
        object Label_common_avg_exp: TLabel
          Left = 32
          Top = 163
          Width = 135
          Height = 14
          Caption = 'Label_common_avg_exp'
          Visible = False
        end
        object Label_common_avg_frags: TLabel
          Left = 32
          Top = 143
          Width = 141
          Height = 14
          Caption = 'Label_common_avg_frags'
          Visible = False
        end
        object Label_common_avg_dmg: TLabel
          Left = 32
          Top = 196
          Width = 139
          Height = 14
          Caption = 'Label_common_avg_dmg'
          Visible = False
        end
        object Label_common_avg_supp: TLabel
          Left = 32
          Top = 203
          Width = 141
          Height = 14
          Caption = 'Label_common_avg_supp'
          Visible = False
        end
        object Label_common_dragndrop: TLabel
          Left = 32
          Top = 223
          Width = 145
          Height = 14
          Caption = 'Label_common_dragndrop'
          Visible = False
        end
        object Label_common_old_ver: TLabel
          Left = 32
          Top = 320
          Width = 129
          Height = 14
          Caption = 'Label_common_old_ver'
          Visible = False
        end
        object Label_common_win: TLabel
          Left = 32
          Top = 136
          Width = 108
          Height = 14
          Caption = 'Label_common_win'
          Visible = False
        end
        object Label_common_draw: TLabel
          Left = 32
          Top = 280
          Width = 116
          Height = 14
          Caption = 'Label_common_draw'
          Visible = False
        end
        object Label_common_defeat: TLabel
          Left = 32
          Top = 300
          Width = 125
          Height = 14
          Caption = 'Label_common_defeat'
          Visible = False
        end
        object Label_common_leaved: TLabel
          Left = 32
          Top = 183
          Width = 124
          Height = 14
          Caption = 'Label_common_leaved'
          Visible = False
        end
        object Label_common_battle_count: TLabel
          Left = 32
          Top = 156
          Width = 160
          Height = 14
          Caption = 'Label_common_battle_count'
          Visible = False
        end
        object Label_common_domination: TLabel
          Left = 32
          Top = 257
          Width = 149
          Height = 14
          Caption = 'Label_common_domination'
          Visible = False
        end
        object Label_common_assault: TLabel
          Left = 32
          Top = 236
          Width = 125
          Height = 14
          Caption = 'Label_common_assault'
          Visible = False
        end
        object Label_common_ctf: TLabel
          Left = 32
          Top = 176
          Width = 104
          Height = 14
          Caption = 'Label_common_ctf'
          Visible = False
        end
        object Label_common_nations: TLabel
          Left = 32
          Top = 216
          Width = 128
          Height = 14
          Caption = 'Label_common_nations'
          Visible = False
        end
        object cb_AutoProcessReplays: TCheckBox
          Left = 13
          Top = 25
          Width = 257
          Height = 17
          Caption = #1040#1074#1090#1086#1086#1073#1088#1072#1073#1086#1090#1082#1072
          TabOrder = 0
        end
      end
      object gp_options_export: TGroupBox
        Left = 560
        Top = 31
        Width = 280
        Height = 380
        Caption = #1069#1082#1089#1087#1086#1088#1090' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1086#1074' '#1089#1077#1088#1080#1080' '#1073#1086#1077#1074
        TabOrder = 2
        object Label_opt_export_enemies: TLabel
          Left = 31
          Top = 41
          Width = 246
          Height = 42
          AutoSize = False
          Caption = 
            '('#1087#1088#1080' '#1086#1073#1088#1072#1073#1086#1090#1082#1077' '#1089#1077#1088#1080#1080' '#1073#1086#1077#1074' '#1074' '#1087#1072#1087#1082#1077' '#1089' '#1087#1088#1086#1075#1088#1072#1084#1084#1086#1081' '#1089#1086#1079#1076#1072#1089#1090#1089#1103' htm '#1092#1072#1081 +
            #1083' '#1089' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072#1084#1080' '#1086#1073#1077#1080#1093' '#1082#1086#1084#1072#1085#1076')'
          WordWrap = True
        end
        object Label_common_total: TLabel
          Left = 3
          Top = 326
          Width = 114
          Height = 14
          Caption = 'Label_common_total'
          Visible = False
        end
        object Label_common_avg: TLabel
          Left = 3
          Top = 346
          Width = 108
          Height = 14
          Caption = 'Label_common_avg'
          Visible = False
        end
        object Label_common_assault2: TLabel
          Left = 3
          Top = 177
          Width = 132
          Height = 14
          Caption = 'Label_common_assault2'
          Visible = False
        end
        object Label_common_ctf30: TLabel
          Left = 3
          Top = 186
          Width = 118
          Height = 14
          Caption = 'Label_common_ctf30'
          Visible = False
        end
        object Label_common_epic: TLabel
          Left = 3
          Top = 197
          Width = 111
          Height = 14
          Caption = 'Label_common_epic'
          Visible = False
        end
        object Label_common_random: TLabel
          Left = 3
          Top = 206
          Width = 130
          Height = 14
          Caption = 'Label_common_random'
          Visible = False
        end
        object Label_common_training: TLabel
          Left = 3
          Top = 217
          Width = 129
          Height = 14
          Caption = 'Label_common_training'
          Visible = False
        end
        object Label_common_clan: TLabel
          Left = 3
          Top = 226
          Width = 110
          Height = 14
          Caption = 'Label_common_clan'
          Visible = False
        end
        object Label_common_2: TLabel
          Left = 3
          Top = 237
          Width = 96
          Height = 14
          Caption = 'Label_common_2'
          Visible = False
        end
        object Label_common_3: TLabel
          Left = 3
          Top = 246
          Width = 96
          Height = 14
          Caption = 'Label_common_3'
          Visible = False
        end
        object Label_common_4: TLabel
          Left = 3
          Top = 257
          Width = 96
          Height = 14
          Caption = 'Label_common_4'
          Visible = False
        end
        object Label_common_company: TLabel
          Left = 3
          Top = 266
          Width = 138
          Height = 14
          Caption = 'Label_common_company'
          Visible = False
        end
        object Label_common_hist: TLabel
          Left = 3
          Top = 277
          Width = 108
          Height = 14
          Caption = 'Label_common_hist'
          Visible = False
        end
        object Label_common_5: TLabel
          Left = 3
          Top = 286
          Width = 96
          Height = 14
          Caption = 'Label_common_5'
          Visible = False
        end
        object Label_common_1: TLabel
          Left = 3
          Top = 297
          Width = 96
          Height = 14
          Caption = 'Label_common_1'
          Visible = False
        end
        object Label_common_unknown: TLabel
          Left = 3
          Top = 306
          Width = 140
          Height = 14
          Caption = 'Label_common_unknown'
          Visible = False
        end
        object Label_common_domination_short: TLabel
          Left = 95
          Top = 190
          Width = 184
          Height = 14
          Caption = 'Label_common_domination_short'
          Visible = False
        end
        object Label_common_assault_short: TLabel
          Left = 119
          Top = 214
          Width = 160
          Height = 14
          Caption = 'Label_common_assault_short'
          Visible = False
        end
        object Label_common_ctf_short: TLabel
          Left = 140
          Top = 238
          Width = 139
          Height = 14
          Caption = 'Label_common_ctf_short'
          Visible = False
        end
        object Label_common_nations_short: TLabel
          Left = 116
          Top = 262
          Width = 163
          Height = 14
          Caption = 'Label_common_nations_short'
          Visible = False
        end
        object Label_common_ctf30x30_short: TLabel
          Left = 106
          Top = 286
          Width = 173
          Height = 14
          Caption = 'Label_common_ctf30x30_short'
          Visible = False
        end
        object Label_common_epic_short: TLabel
          Left = 133
          Top = 302
          Width = 146
          Height = 14
          Caption = 'Label_common_epic_short'
          Visible = False
        end
        object Label_common_pressToSort: TLabel
          Left = 144
          Top = 328
          Width = 155
          Height = 14
          Caption = 'Label_common_pressToSort'
          Visible = False
        end
        object Label_common_battles: TLabel
          Left = 144
          Top = 344
          Width = 126
          Height = 14
          Caption = 'Label_common_battles'
          Visible = False
        end
        object cb_export_enemies: TCheckBox
          Left = 11
          Top = 25
          Width = 254
          Height = 17
          Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1090#1088#1086#1074#1072#1090#1100' '#1088#1077#1079'-'#1090#1099' '#1087#1088#1086#1090#1080#1074#1085#1080#1082#1086#1074
          TabOrder = 0
        end
        object gp_options_remote_export: TGroupBox
          Left = 3
          Top = 98
          Width = 266
          Height = 79
          Caption = #1054#1087#1094#1080#1080' '#1101#1082#1089#1087#1086#1088#1090#1072' '#1085#1072' '#1089#1072#1081#1090
          TabOrder = 1
          Visible = False
          object lb_cb_remote_export_enable2: TLabel
            Left = 31
            Top = 37
            Width = 61
            Height = 14
            Caption = #1085#1072' '#1089#1077#1088#1074#1077#1088':'
          end
          object lb_cb_remote_export_enable3: TLabel
            Left = 205
            Top = 58
            Width = 4
            Height = 14
            Caption = ':'
          end
          object lb_cb_remote_export_enable1: TLabel
            Left = 31
            Top = 79
            Width = 99
            Height = 14
            Caption = #1086#1090' '#1080#1084#1077#1085#1080' '#1080#1075#1088#1086#1082#1072':'
          end
          object cb_remote_export_enable: TCheckBox
            Left = 15
            Top = 19
            Width = 247
            Height = 20
            Caption = #1042#1099#1075#1088#1091#1078#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1089#1077#1088#1080#1080' '#1073#1086#1077#1074
            TabOrder = 0
          end
          object ed_remote_server_address: TEdit
            Left = 31
            Top = 55
            Width = 168
            Height = 22
            TabOrder = 1
            Text = 'http://rstest/import.php'
          end
          object ed_remote_server_port: TEdit
            Left = 214
            Top = 55
            Width = 41
            Height = 22
            Enabled = False
            MaxLength = 5
            NumbersOnly = True
            TabOrder = 2
            Text = '00080'
          end
          object ed_remote_export_author: TEdit
            Left = 142
            Top = 83
            Width = 121
            Height = 22
            TabOrder = 3
            Text = 'G4ce'
          end
        end
      end
      object cb_language_selector: TComboBox
        Left = 105
        Top = 3
        Width = 170
        Height = 22
        TabOrder = 3
        Text = 'cb_language_selector'
        OnChange = cb_language_selectorChange
        Items.Strings = (
          'ru'
          'en')
      end
      object bt_UpdateTankNames: TButton
        Left = 281
        Top = 3
        Width = 179
        Height = 22
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1090#1072#1085#1082#1086#1074
        TabOrder = 4
        OnClick = bt_UpdateTankNamesClick
      end
    end
  end
  object About: TButton
    Left = 748
    Top = 8
    Width = 95
    Height = 22
    Anchors = [akTop, akRight]
    Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
    TabOrder = 2
    OnClick = AboutClick
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 453
    Width = 853
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object SingleReplayAnalyse: TButton
    Left = 673
    Top = 8
    Width = 69
    Height = 22
    Anchors = [akTop, akRight]
    Caption = #1053#1072#1095#1072#1090#1100
    TabOrder = 1
    Visible = False
    OnClick = SingleReplayAnalyseClick
  end
  object SeriesProgress: TProgressBar
    Left = 101
    Top = 259
    Width = 665
    Height = 17
    Anchors = [akLeft, akRight]
    BorderWidth = 1
    Max = 1000
    TabOrder = 4
    Visible = False
  end
  object OpenReplayDialog: TOpenDialog
    Options = [ofPathMustExist, ofFileMustExist, ofEnableSizing, ofDontAddToRecent]
    Left = 410
    Top = 160
  end
end
