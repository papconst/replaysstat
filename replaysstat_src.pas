unit replaysstat_src;

interface

uses
    Winapi.Windows
  , Winapi.Messages
  , System.SysUtils
  , System.Variants
  , System.Classes
  , Vcl.Graphics
  , Vcl.Controls
  , Vcl.Forms
  , Vcl.Dialogs
  , DBXJSON
  , Vcl.StdCtrls
  , Vcl.Grids
  , Vcl.ComCtrls
  , Vcl.Tabs
  , ShellAPI
  , ComObj
  , IniFiles
  , ActiveX
  , winProcs
  , Vcl.ExtCtrls
  , Vcl.AppEvnts
  , JSON
  , UITypes
  ;


type
  TReplaysStatForm = class(TForm)
      About: TButton;
      AlliesGrid: TStringGrid;
      AnalyseType: TPageControl;
      bt_AddToFavorites: TButton;
      bt_DeleteSelected: TButton;
      bt_ProcessInRS: TButton;
      bt_Refresh: TButton;
      bt_SelectFolder: TButton;
      cb_AutoProcessReplays: TCheckBox;
      cb_export_enemies: TCheckBox;
      cb_remote_export_enable: TCheckBox;
      Commands: TTabSheet;
      Details: TTabSheet;
      ed_AllReplaysFolder: TEdit;
      ed_remote_export_author: TEdit;
      ed_remote_server_address: TEdit;
      ed_remote_server_port: TEdit;
      EnemiesGrid: TStringGrid;
      gp_options_export: TGroupBox;
      gp_options_multi: TGroupBox;
      gp_options_remote_export: TGroupBox;
      gp_options_rep_mng: TGroupBox;
      HTMLExport: TButton;
      Label_achieveIndices: TLabel;
      Label_arenaCreateTime: TLabel;
      Label_arenaTypeID: TLabel;
      Label_assisted_radio: TLabel;
      Label_assisted_track: TLabel;
      Label_autoEquipCost: TLabel;
      Label_autoLoadCost: TLabel;
      Label_autoRepairCost: TLabel;
      Label_capture_points: TLabel;
      Label_capturePoints: TLabel;
      Label_credits: TLabel;
      Label_creditsContributionIn: TLabel;
      Label_creditsPenalty: TLabel;
      Label_damage_dealt: TLabel;
      Label_damage_got_potential: TLabel;
      Label_damageAssistedRadio: TLabel;
      Label_damageAssistedTrack: TLabel;
      Label_damaged: TLabel;
      Label_damageDealt: TLabel;
      Label_damageReceived: TLabel;
      Label_direct_hits: TLabel;
      Label_dropped_points: TLabel;
      Label_droppedCapturePoints: TLabel;
      Label_enemies_spotted: TLabel;
      Label_equip_cost: TLabel;
      Label_exp: TLabel;
      Label_exp_penalty_lb: TLabel;
      Label_free_exp: TLabel;
      Label_freeXp: TLabel;
      Label_he_hits: TLabel;
      Label_he_hits_count: TLabel;
      Label_heroVehicleIDs: TLabel;
      Label_hits: TLabel;
      Label_hits_got: TLabel;
      Label_income: TLabel;
      Label_income_contribution: TLabel;
      Label_income_penalty: TLabel;
      Label_income_total: TLabel;
      Label_is_premium: TLabel;
      Label_isWinner: TLabel;
      Label_killed_by: TLabel;
      Label_killerID: TLabel;
      Label_kills: TLabel;
      Label_life_battle_time: TLabel;
      Label_lifetime_duration: TLabel;
      Label_load_cost: TLabel;
      Label_m_accuracy: TLabel;
      Label_m_accuracy_lb: TLabel;
      Label_m_ammo: TLabel;
      Label_m_authors_statistics: TLabel;
      Label_m_avg_dmg_got: TLabel;
      Label_m_avg_dmg_per_shot: TLabel;
      Label_m_avg_dmg_pot_got: TLabel;
      Label_m_battles: TLabel;
      Label_m_capture: TLabel;
      Label_m_capture_points: TLabel;
      Label_m_damage_dealt: TLabel;
      Label_m_damage_received: TLabel;
      Label_m_damaged: TLabel;
      Label_m_damaged_lb: TLabel;
      Label_m_defend: TLabel;
      Label_m_destroyed_lb: TLabel;
      Label_m_dmg: TLabel;
      Label_m_dmgpergot: TLabel;
      Label_m_dmgpershot: TLabel;
      Label_m_dmgrecieved: TLabel;
      Label_m_drop_files_here: TLabel;
      Label_m_dropped_points: TLabel;
      Label_m_duration: TLabel;
      Label_m_equip: TLabel;
      Label_m_equip_lb: TLabel;
      Label_m_exp: TLabel;
      Label_m_exp_lb: TLabel;
      Label_m_he_hits: TLabel;
      Label_m_hehits: TLabel;
      Label_m_hits: TLabel;
      Label_m_hits_count: TLabel;
      Label_m_income: TLabel;
      Label_m_income_total: TLabel;
      Label_m_killed: TLabel;
      Label_m_lifetime: TLabel;
      Label_m_lifetime_lb: TLabel;
      Label_m_lifetimeproc: TLabel;
      Label_m_mileage: TLabel;
      Label_m_mileage_lb: TLabel;
      Label_m_pierced: TLabel;
      Label_m_piercing_count: TLabel;
      Label_m_potencpershot: TLabel;
      Label_m_potential_damage_got: TLabel;
      Label_m_potentialgot: TLabel;
      Label_m_pottorecieved: TLabel;
      Label_m_profit: TLabel;
      Label_m_radio: TLabel;
      Label_m_refill: TLabel;
      Label_m_repair: TLabel;
      Label_m_repair_lb: TLabel;
      Label_m_shots: TLabel;
      Label_m_shots_count: TLabel;
      Label_m_shots_received: TLabel;
      Label_m_shotsReceived: TLabel;
      Label_m_silver: TLabel;
      Label_m_spotted: TLabel;
      Label_m_spotted_lb: TLabel;
      Label_m_support: TLabel;
      Label_m_survive: TLabel;
      Label_m_total_avg1: TLabel;
      Label_m_total_avg2: TLabel;
      Label_m_track: TLabel;
      Label_m_tracks: TLabel;
      Label_m_wins: TLabel;
      Label_m_wins_batlles_count: TLabel;
      Label_mileage: TLabel;
      Label_mileage_lb: TLabel;
      Label_pierced: TLabel;
      Label_piercing_count: TLabel;
      Label_premium: TLabel;
      Label_repair_cost: TLabel;
      Label_replayVersionXml: TLabel;
      Label_shots: TLabel;
      Label_shots_count: TLabel;
      Label_shotsReceived: TLabel;
      Label_silverSumm: TLabel;
      Label_spotted: TLabel;
      Label_tanks_damaged: TLabel;
      Label_tanks_destroyed: TLabel;
      Label_xp: TLabel;
      Label_xpPenalty: TLabel;
      lb_arenaCreateTime: TLabel;
      lb_heroVehicleIDs: TLabel;
      lb_arenaTypeID: TLabel;
      lb_achieveIndices: TLabel;
      Label_m_dmg_rec_to_pot1: TLabel;
      Label_m_dmg_rec_to_pot2: TLabel;
      Label_opt_collect_user_data: TLabel;
      Label_opt_group_by_battle: TLabel;
      Label_opt_summary_to_begin: TLabel;
      Label_opt_auto_proceed: TLabel;
      Label_opt_export_enemies: TLabel;
      lb_cb_remote_export_enable1: TLabel;
      lb_cb_remote_export_enable2: TLabel;
      lb_cb_remote_export_enable3: TLabel;
      Label_AllReplaysList: TListBox;
      Label_battle_result: TLabel;
      Label_battle_time: TLabel;
      Label_battle_type: TLabel;
      Label_battleType: TLabel;
      Label_double_click_help: TLabel;
      Label_exp_allies_pure: TLabel;
      Label_exp_enemies_pure: TLabel;
      Label_favoriteReplaysList: TListBox;
      Label_map: TLabel;
      Label_map_name: TLabel;
      Label_replaysList: TListBox;
      Label_time: TLabel;
      Multi: TPageControl;
      MultiAdditional: TCheckBox;
      MultiDamage: TTabSheet;
      MultiExp: TTabSheet;
      MultiFrags: TTabSheet;
      MultiGroupPlayers: TCheckBox;
      MultiShots: TTabSheet;
      MultiSummary: TTabSheet;
      MultiSupport: TTabSheet;
      MultiToBegin: TCheckBox;
      MultiTotal: TTabSheet;
      OpenReplay: TButton;
      OpenReplayDialog: TOpenDialog;
      Options: TTabSheet;
      pc_ReplaysList: TPageControl;
      ReplayPath: TEdit;
      SeriesAnalysisButton: TButton;
      SeriesGridDamage: TStringGrid;
      SeriesGridExp: TStringGrid;
      SeriesGridFrags: TStringGrid;
      SeriesGridShots: TStringGrid;
      SeriesGridSummary: TStringGrid;
      SeriesGridSupport: TStringGrid;
      SeriesProgress: TProgressBar;
      SeriesReplays: TTabSheet;
      sg_AllReplays: TStringGrid;
      sg_FavoriteReplays: TStringGrid;
      SingleReplay: TTabSheet;
      SingleReplayAnalyse: TButton;
      SingleReplayResults: TPageControl;
      StatusBar: TStatusBar;
      ts_AllReplays: TTabSheet;
      ts_FavoriteReplays: TTabSheet;
      ts_ReplaysList: TTabSheet;
      ViewReplay: TButton;
      XlsExport: TButton;
    Label_language: TLabel;
    cb_language_selector: TComboBox;
    Label_m_lifetime_perc: TLabel;
    Label_m_survived: TLabel;
    Label_PathPlayer: TLabel;
    Label_PathClan: TLabel;
    Label_PathPlayerSearch: TLabel;
    Label_common_browse: TLabel;
    Label_common_favs: TLabel;
    Label_common_delete_selected: TLabel;
    Label_common_error: TLabel;
    Label_current_replay: TLabel;
    Label_common_name: TLabel;
    Label_common_total_exp: TLabel;
    Label_common_total_frags: TLabel;
    Label_common_total_supp: TLabel;
    Label_common_total_dmg: TLabel;
    Label_common_avg_exp: TLabel;
    Label_common_avg_frags: TLabel;
    Label_common_avg_dmg: TLabel;
    Label_common_avg_supp: TLabel;
    Label_common_dragndrop: TLabel;
    Label_common_old_ver: TLabel;
    Label_common_win: TLabel;
    Label_common_draw: TLabel;
    Label_common_defeat: TLabel;
    Label_common_leaved: TLabel;
    Label_common_battle_count: TLabel;
    Label_common_domination: TLabel;
    Label_common_assault: TLabel;
    Label_common_ctf: TLabel;
    Label_common_nations: TLabel;
    Label_common_total: TLabel;
    Label_common_avg: TLabel;
    Label_common_assault2: TLabel;
    Label_common_ctf30: TLabel;
    Label_common_epic: TLabel;
    Label_common_random: TLabel;
    Label_common_training: TLabel;
    Label_common_clan: TLabel;
    Label_common_2: TLabel;
    Label_common_3: TLabel;
    Label_common_4: TLabel;
    Label_common_company: TLabel;
    Label_common_hist: TLabel;
    Label_common_5: TLabel;
    Label_common_1: TLabel;
    Label_common_unknown: TLabel;
    Label_common_domination_short: TLabel;
    Label_common_assault_short: TLabel;
    Label_common_ctf_short: TLabel;
    Label_common_nations_short: TLabel;
    Label_common_ctf30x30_short: TLabel;
    Label_common_epic_short: TLabel;
    Label_common_pressToSort: TLabel;
    Label_common_battles: TLabel;
    bt_UpdateTankNames: TButton;

    procedure SeriesAnalysis(ReplayPath:String;Count,StartRow:Integer);
    procedure FormCreate(Sender: TObject);
    procedure SingleGridsDrawCell(Sender: TObject; ACol,ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure AlliesGridDblClick(Sender: TObject);
    procedure OpenReplayClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SeriesAnalysisButtonClick(Sender: TObject);
    procedure XlsExportClick(Sender: TObject);
    procedure SeriesGridExpDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure HTMLExportClick(Sender: TObject);
    procedure EnemiesGridDblClick(Sender: TObject);
    procedure SeriesGridExpDblClick(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure SeriesGridFixedCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormResize(Sender: TObject);
    Procedure ExportHTMLNew();
//    Procedure GridToHtml(StrList:TStringList;hGrid:TStringGrid);
    procedure Additional(StrList:TStringList);
    procedure AdditionalFinalize();
    procedure SeriesGridsMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure SeriesGridsMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ViewReplayClick(Sender: TObject);
    procedure SingleGridsFixedCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure FillSummaryGrid();
    procedure SeriesGridSummaryFixedCellClick(Sender: TObject; ACol,
      ARow: Integer);
    procedure ClearControls();
    procedure bt_SelectFolderClick(Sender: TObject);
    procedure bt_DeleteSelectedClick(Sender: TObject);
    procedure bt_RefreshClick(Sender: TObject);
    procedure ReplaysListOnDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ReplaysListFixedCellClick(Sender: TObject; ACol, ARow: Integer);
    procedure ReplaysListDblClick(Sender: TObject);
    procedure ProcessReplays();
    procedure bt_AddToFavoritesClick(Sender: TObject);
    procedure ed_AllReplaysFolderDblClick(Sender: TObject);
    procedure bt_ProcessInRSClick(Sender: TObject);
    procedure ZeroLables();
    procedure SeriesGridShotsDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SingleReplayAnalyseClick(Sender: TObject);
    procedure cb_language_selectorChange(Sender: TObject);
    procedure LanguagesLoad(const lang : String);
    procedure bt_UpdateTankNamesClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  protected

  procedure WMDropFiles (var Msg: TMessage); message wm_DropFiles;

  end;


  const
  ARR_LENGTH = 30-1;//29 - кол-во игроков
  ARR_WIDTH = 23-1;//22 - кол-во параметров

  ARR_CODE = 0;
  ARR_TANK = 1;
  ARR_ALIVE = 2;
  ARR_NICK = 3;
  ARR_IGR_TYPE = 4;
  ARR_CLAN = 5;
  ARR_TEAM = 6;
  ARR_MEDALS = 7;
  ARR_ISTK = 8;
  ARR_FRAGS = 9;
  ARR_EXP = 10;
  ARR_PID = 11;
  ARR_CID = 12;
  ARR_DAMAGE = 13;
  ARR_RADIO = 14;
  ARR_TRACKS = 15;
  ARR_SQUAD = 16;
  ARR_SHOTS = 17;
  ARR_HITS = 18;
  ARR_PENETR = 19;
  ARR_EXPHITS = 20;
  ARR_ISOBSERVER = 21;


  TAB_SQUAD = 0;
  TAB_NICK = 1;
  TAB_CLAN = 2;
  TAB_TANK = 3;
  TAB_ALIVE = 4;
  TAB_FRAGS = 5;
  TAB_EXP = 6;
  TAB_DAMAGE = 7;
  TAB_RADIO = 8;
  TAB_TRACKS = 9;
  TAB_CID = 10;
  TAB_PID = 11;

	RM_DATE = 0;
	RM_MAP = 1;
	RM_NICK = 2;
	RM_TANK = 3;
  RM_BATTYPE = 4;
	RM_GAMEPLAY = 5;
	RM_WINNER = 6;
	RM_ALIVE = 7;
  RM_MARK = 8;
	RM_EXP = 9;
	RM_OEXP = 10;
	RM_DAMAGE = 11;
	RM_FRAGS = 12;
	RM_RADIO = 13;
	RM_TRACKS = 14;
	RM_CREDITS = 15;
	RM_REPAIR = 16;
	RM_LOAD = 17;
	RM_EQUIP = 18;
  RM_INCOME = 19;
  RM_VERSION = 20;
  RM_PATH = 21;

  BI_clientVersionFromXml = 0;
  BI_clientVersionFromExe = 1;
  BI_mapDisplayName = 2;
  BI_gameplayID = 3;
  BI_regionCode = 4;
  BI_playerID = 5;
  BI_serverName = 6;
  BI_vehicles = 7;
  BI_dateTime = 8;
  BI_mapName = 9;
  BI_playerName = 10;
  BI_battleType = 11;
  BI_playerVehicle = 12;

  DETAILED_RESULTS_PERSONAL = 0;
  DETAILED_RESULTS_VEHICLES = 1;
  DETAILED_RESULTS_PLAYERS = 2;


  var
  _DEBUG:boolean=false;
  language :String = 'ru';
  ReplaysStatForm: TReplaysStatForm;

  JSONObject,JSONObject2,JSONVehicle,JSONFrags,JSONFactors:TJSONObject;
  JOExport:TJSONObject;


  TanksINIFile : TIniFile;

  ExcelApp:OLEVariant;
  Sheet,Range: Variant;
  replayVersion:integer;

  sortByInc:Boolean;
  exportAllHTML:boolean=false;
  remoteExport:boolean=false;
  remoteServerAddress:String='';
  remoteServerPort:String='';
  remoteExportAuthor:String='';

  prevCol:integer;


type
  TString2Array =  Array of array of String;
  TStringArray =  Array of String;


  const
  ATest = 1;

implementation

{$R *.dfm}

uses
  about_src
  ,utilites
  , techscollect_src
  ;

procedure AvgExpCount(Grid:TStringGrid);
var
i,j,tmp:Integer;
TotalExp,Battles:Integer;
Wins,Defeats,Standoff,AvgWin:Integer;
AvgExp:single;
begin

Grid.ColCount:=Grid.ColCount+2;
Grid.Cells[Grid.ColCount-2,0]:= ReplaysStatForm.Label_common_total.Caption;
Grid.Cells[Grid.ColCount-2,1]:= ReplaysStatForm.Label_common_pressToSort.Caption;
Grid.Cells[Grid.ColCount-1,0]:= ReplaysStatForm.Label_common_avg.Caption;
Grid.Cells[Grid.ColCount-1,1]:='';

Wins:=0;Defeats:=0;Standoff:=0;
  for i := Grid.FixedCols to Grid.ColCount-3 do
      begin
         if Grid.Cells[i,2]= ReplaysStatForm.Label_common_win.Caption then Wins:=Wins+1;
         if Grid.Cells[i,2]= ReplaysStatForm.Label_common_defeat.Caption then Defeats:=Defeats+1;
         if Grid.Cells[i,2]= ReplaysStatForm.Label_common_draw.Caption then Standoff:=Standoff+1;
      end;
Battles:=Wins+Defeats+Standoff;
Grid.Cells[Grid.ColCount-2,2]:= ReplaysStatForm.Label_common_battle_count.Caption + ': '+IntToStr(Battles)+', '+ ReplaysStatForm.Label_common_battles.Caption +': '+IntToStr(Wins);
if Battles<>0 then AvgWin:=Round(100*Wins/(Wins+Defeats+Standoff))   else AvgWin:=0;
Grid.Cells[Grid.ColCount-1,2]:=IntToStr(Wins)+'/'+IntToStr(Standoff)+'/'+IntToStr(Defeats)+'  '+IntToStr(AvgWin)+'%';

for i := Grid.FixedRows to Grid.RowCount-1 do
    begin
        TotalExp:=0;Battles:=0;
        if Grid.Cells[0,i]='' then Continue;
        for j := Grid.FixedCols+1 to Grid.ColCount-3 do
          BEGIN
             if TryStrToInt(Copy(Grid.Cells[j,i],0,Pos(';',Grid.Cells[j,i])-1),tmp) then
                begin
                TotalExp:=TotalExp+tmp;
                Battles:=Battles+1;
                end;
          END;
        if Battles=0 then AvgExp:=0
        else AvgExp:=TotalExp/Battles;

        Grid.Cells[Grid.ColCount-2,i]:=IntToStr(TotalExp);
        Grid.Cells[Grid.ColCount-1,i]:=RoundTo(AvgExp);
    end;

end;

procedure AvgCountSupp(Grid:TStringGrid);
var
i,j,tmp:Integer;
TotalRadio,TotalTracks,Battles
,AvgRadio,AvgTracks
:Integer;
TempString,TempRadio,TempTracks:String;
begin

Grid.ColCount:=Grid.ColCount+2;
Grid.Cells[Grid.ColCount-2,0]:= ReplaysStatForm.Label_common_total.Caption;
Grid.Cells[Grid.ColCount-1,0]:= ReplaysStatForm.Label_common_pressToSort.Caption;
Grid.Cells[Grid.ColCount-2,1]:= ReplaysStatForm.Label_common_avg.Caption;

for i := Grid.FixedRows to Grid.RowCount-1 do
    begin
        TotalRadio:=0;TotalTracks:=0;Battles:=0;
        if Grid.Cells[0,i]='' then Continue;
        for j := Grid.FixedCols+1 to Grid.ColCount-3 do
          BEGIN
          if Grid.Cells[j,i]='' then Continue;
          TempString:=Grid.Cells[j,i];
          Delete(TempString,Pos(';',TempString),Length(TempString));

          TempRadio:=Copy(TempString,0,Pos(' / ',TempString)-1);
          TempTracks:=Copy(TempString,Pos(' / ',TempString)+3,Length(TempString));
          if TryStrToInt(TempRadio,tmp) then TotalRadio:=TotalRadio+tmp;
          if TryStrToInt(TempTracks,tmp) then TotalTracks:=TotalTracks+tmp;
          if ((StrToInt(TempRadio)+StrToInt(TempTracks)<>0)) then Battles:=Battles+1
          END;

        if Battles=0 then begin AvgRadio:=0; AvgTracks:=0 end
        else
          begin
          AvgRadio:=Round(TotalRadio/Battles);
          AvgTracks:=Round(TotalTracks/Battles);
          end;
        Grid.Cells[Grid.ColCount-2,i]:=IntToStr(TotalRadio)+' / '+IntToStr(TotalTracks);
        Grid.Cells[Grid.ColCount-1,i]:=IntToStr(AvgRadio)+' / '+IntToStr(AvgTracks);
    end;
end;

procedure AvgCountShots(Grid:TStringGrid);
var
i,j,tmp:Integer;
TotalShots,TotalHits,TotalPenetr,TotalHE,
Battles
:Integer;
AvgShots,AvgHits,AvgPenetr,AvgHE,
TempString,TempShots,TempHits,TempPenetr,TempHE:String;
begin

Grid.ColCount:=Grid.ColCount+2;
Grid.Cells[Grid.ColCount-2,0]:= ReplaysStatForm.Label_common_total.Caption;
Grid.Cells[Grid.ColCount-1,0]:= ReplaysStatForm.Label_common_pressToSort.Caption;
Grid.Cells[Grid.ColCount-2,1]:= ReplaysStatForm.Label_common_avg.Caption;


for i := Grid.FixedRows to Grid.RowCount-1 do
    begin
        TotalShots:=0;TotalHits:=0;TotalPenetr:=0;TotalHE:=0;Battles:=0;
        if Grid.Cells[0,i]='' then Continue;
        for j := Grid.FixedCols+1 to Grid.ColCount-3 do
          BEGIN
          if Grid.Cells[j,i]='' then Continue;
          TempString:=Grid.Cells[j,i];
          Delete(TempString,Pos(';',TempString),Length(TempString));

          TempShots:=Copy(TempString,0,Pos(' - ',TempString)-1);
          Delete(TempString,1,Length(TempShots)+3);
          TempHits:=Copy(TempString,0,Pos('/',TempString)-1);
          Delete(TempString,1,Length(TempHits)+1);
          TempPenetr:=Copy(TempString,0,Pos('(',TempString)-2);
          Delete(TempString,1,Length(TempHits)+2);
          TempHE:=Copy(TempString,0,Pos(')',TempString)-1);


          if TryStrToInt(TempShots,tmp) then TotalShots:=TotalShots+tmp;
          if TryStrToInt(TempHits,tmp) then TotalHits:=TotalHits+tmp;
          if TryStrToInt(TempPenetr,tmp) then TotalPenetr:=TotalPenetr+tmp;
          if TryStrToInt(TempHE,tmp) then TotalHE:=TotalHE+tmp;
          if ((TempShots<>'') OR (TempHits<>'') OR (TempPenetr<>'') OR (TempHE<>'')) then Battles:=Battles+1;


          END;

        if Battles=0 then begin TotalShots:=0; TotalHits:=0; TotalPenetr:=0; TotalHE:=0;end
        else
          begin
          AvgShots:=RoundTo(TotalShots/Battles);
          AvgHits:=RoundTo(TotalHits/Battles);
          AvgPenetr:=RoundTo(TotalPenetr/Battles);
          AvgHE:=RoundTo(TotalHE/Battles);
          end;
        Grid.Cells[Grid.ColCount-2,i]:=IntToStr(TotalShots)+' - '+IntToStr(TotalHits)+'/'+IntToStr(TotalPenetr)+' ('+IntToStr(TotalHE)+')';
        Grid.Cells[Grid.ColCount-1,i]:=AvgShots+' - '+AvgHits+'/'+AvgPenetr+' ('+AvgHE+')';

    end;

end;

function DecodeTechs(StrIn:String):String;
var
DelimPos:integer;
Country,Techs:String;
begin
DelimPos:=Pos(':',StrIn);
Country:=Copy(StrIn,0,DelimPos-1);
Techs:=Copy(StrIn,DelimPos+1,Length(StrIn));
StrIn:=TanksINIFile.ReadString(Country,Techs,StrIn);
Result:=StrIn;
end;

procedure TReplaysStatForm.bt_SelectFolderClick(Sender: TObject);
var TempString:String;
begin
TempString:=BrowseFolder(PChar(Label_common_browse.Caption),Application.Handle);
if TempString<>'' then
  begin
    if TempString[Length(TempString)-1]<>'\' then
                  TempString:=TempString+'\';//приводим в корректный вид (мало ли)
       if DirectoryExists(TempString) then
            begin//проверяем существ ли папка...не, ну мало ли
                ed_AllReplaysFolder.Text:=TempString;
                ed_AllReplaysFolder.Update;
                ProcessReplays();
            end;
  end;

end;



procedure TReplaysStatForm.bt_UpdateTankNamesClick(Sender: TObject);
begin
  Application.CreateForm(Tfm_techscollect, fm_techscollect);
  fm_techscollect.Label_techs_language.Caption := language;
  fm_techscollect.ShowModal;
  fm_techscollect.Destroy;
end;

procedure TReplaysStatForm.cb_language_selectorChange(Sender: TObject);
begin

  language := cb_language_selector.Text;
  LanguagesLoad(language);// Load language vars
  bt_UpdateTankNamesClick(Self);
  if DirectoryExists(ed_AllReplaysFolder.Text) then
    ProcessReplays();
  Application.ProcessMessages;
end;

procedure TReplaysStatForm.bt_AddToFavoritesClick(Sender: TObject);
var
Src,Dst:String;
i:Integer;
begin
if pc_ReplaysList.ActivePageIndex=1 then Exit;

    for i := sg_AllReplays.Selection.Bottom downto sg_AllReplays.Selection.Top do
          begin
            if ((sg_AllReplays.Cells[RM_PATH,i]='') OR (i=0)) then Continue;
            src:=sg_AllReplays.Cells[RM_PATH,i];
            dst:=ExtractFilePath(src) + Label_common_favs.Caption;
            ForceDirectories(dst);
            dst:=dst+ExtractFileName(src);
            if MoveFile(PChar(src),PChar(dst)) then
                begin//если файл перемещен, удаляем его строку из общего списка и добавл и списко избранного
                    sg_FavoriteReplays.RowCount:=sg_FavoriteReplays.RowCount+1;
                    sg_FavoriteReplays.Rows[sg_FavoriteReplays.RowCount-1]:=sg_AllReplays.Rows[i];
                    sg_FavoriteReplays.Cells[RM_PATH,sg_FavoriteReplays.RowCount-1]:=dst;// с изменением пути в табл на новый
                    DeleteRow(sg_AllReplays,i);
                end;
          end;
ResizeCols(sg_FavoriteReplays);
end;

procedure TReplaysStatForm.bt_DeleteSelectedClick(Sender: TObject);
var
i:Integer;
Path:String;
begin
i:=sg_AllReplays.Selection.Bottom-sg_AllReplays.Selection.Top+1;//определение кол-ва выбранных реплеев

if MessageDlg(Label_common_delete_selected.Caption + ' ' + IntToStr(i) + '?',mtCustom,mbOKCancel, 0)<>mrOK then Exit;


if pc_ReplaysList.ActivePageIndex=0 then
  begin
      for i := sg_AllReplays.Selection.Bottom downto sg_AllReplays.Selection.Top do
        begin
          Path:=sg_AllReplays.Cells[RM_PATH-1,i];
          if DeleteToRecycle(Path,Application.Handle) then DeleteRow(sg_AllReplays,i);//в корзину, см функцию.
        end;
  end
  else
      for i := sg_FavoriteReplays.Selection.Bottom downto sg_FavoriteReplays.Selection.Top do
        begin
          Path:=sg_FavoriteReplays.Cells[RM_PATH-1,i];
          if DeleteToRecycle(Path,Application.Handle) then DeleteRow(sg_FavoriteReplays,i);
        end;

end;


procedure TReplaysStatForm.bt_ProcessInRSClick(Sender: TObject);
var i:Integer;
begin

if pc_ReplaysList.ActivePageIndex=0 then
  begin//добавить реплеи из общего списка
      if sg_AllReplays.Selection.Bottom=sg_AllReplays.Selection.Top then
          begin//если реплей 1
          if ((sg_AllReplays.Selection.Bottom=0) OR (sg_AllReplays.Cells[RM_PATH,sg_AllReplays.Selection.Bottom]='')) then Exit;
          ReplayPath.Text:=sg_AllReplays.Cells[RM_PATH,sg_AllReplays.Selection.Bottom];
              if ReplayPath.Text<>'' then
                  begin
                    SingleReplayAnalyseClick(Self);
                    AnalyseType.Pages[0].Show;
                  end;
          end
      else
          begin//если реплеев несколько
           Label_replaysList.Clear;
           for i := sg_AllReplays.Selection.Top to sg_AllReplays.Selection.Bottom do
              begin
                if ((i=0) OR (sg_AllReplays.Cells[RM_PATH,i]='')) then Continue;
                Label_replaysList.Items.Add(sg_AllReplays.Cells[RM_PATH,i]);
              end;
          if Label_replaysList.Count<>0 then
                begin
                    AnalyseType.Pages[1].Show;
                    SeriesAnalysisButtonClick(Self);
                end;
          end;
  end
  else//добавить реплеи из избранного
  begin
      if sg_FavoriteReplays.Selection.Bottom=sg_FavoriteReplays.Selection.Top then
          begin//если реплей 1
          if ((sg_FavoriteReplays.Selection.Bottom=0) OR (sg_FavoriteReplays.Cells[RM_PATH,sg_FavoriteReplays.Selection.Bottom]='')) then Exit;
          ReplayPath.Text:=sg_FavoriteReplays.Cells[RM_PATH,sg_FavoriteReplays.Selection.Bottom];
              if ReplayPath.Text<>'' then
                  begin
                    SingleReplayAnalyseClick(Self);
                    AnalyseType.Pages[0].Show;
                  end;
          end
      else
          begin//если реплеев несколько
           Label_replaysList.Clear;
           for i := sg_FavoriteReplays.Selection.Top to sg_FavoriteReplays.Selection.Bottom do
              begin
                if ((i=0) OR (sg_FavoriteReplays.Cells[RM_PATH,i]='')) then Continue;
                Label_replaysList.Items.Add(sg_FavoriteReplays.Cells[RM_PATH,i]);
              end;
          if Label_replaysList.Count<>0 then
                begin
                    AnalyseType.Pages[1].Show;
                    SeriesAnalysisButtonClick(Self);
                end;
          end;
  end;
end;

function GetJSONStrings(const filePath:String):TStringArray;
var
  t:String;
  currentReplay,debugFile:TextFile;
begin
  //открыть реплей
  try
    AssignFile(currentReplay,filePath);
    FileMode := fmOpenRead;
    Reset(currentReplay);
  except
    ShowMessage('Файл закрыт для чтения.');
    Exit;
  end;
  ReadLn(currentReplay,t);
  if Pos('clientVersionFromExe',t)=0 then ReadLn(currentReplay,t);//ищем нужную строку

  if _DEBUG then
  begin//запись отладочного файл
    AssignFile(DebugFile,'C:\ReplaysStats_Debug.txt');
    ReWrite(DebugFile);
    WriteLn(DebugFile,t);
  end;

  SetLength(Result,4);

  Delete(t,1,Pos('{"',t)-1);//удаляем все до первого вхождения {
  Result[0]:=GetJsonString(t);
  Delete(t,1,Length(Result[0]));

  if Pos('arenaUniqueID',t)=0 then ReadLn(currentReplay,t);
  Result[1]:=GetJsonString(t);
  Delete(t,1,Length(Result[1]));

  if Pos('clanAbbrev',t)=0 then ReadLn(currentReplay,t);
  Result[2]:=GetJsonString(t);
  Delete(t,1,Length(Result[2]));

  if Pos('frags',t)=0 then ReadLn(currentReplay,t);
  Result[3]:=GetJsonString(t);
  Delete(t,1,Length(Result[3]));

  CloseFile(currentReplay);

  if _DEBUG then
  begin//запись отладочного файл
    WriteLn(DebugFile,Result[0]);
    WriteLn(DebugFile,Result[1]);
    WriteLn(DebugFile,Result[2]);
    WriteLn(DebugFile,Result[3]);
    CloseFile(DebugFile);
  end;

end;

procedure ProcessCurrentReplay(Path:String;Index:Integer;Grid:TstringGrid);
var

i
:integer;
replayVersionXml:String;

ReplayFile
:TextFile;

TempString,
JSONString1,
JSONString2,
JSONString3,
JSONString4
:String;


repair,damageAssistedTrack,clientVersionFromExe,
creditsToDraw,premiumCreditsFactor10,damageAssistedRadio,
premiumXPFactor10,xp,creditsContributionIn,
autoRepairCost,eventCredits,health,
kills,team,credits,igrXPFactor10,
autoEquipCost,markOfMastery,eventXP,
damageDealt,autoLoadCost,originalCredits,dailyXPFactor10,originalXP,
creditsContributionOut,vehicles,common,finishReason,
arenaCreateTime,duration,winnerTeam,personal,
mapName,playerID,playerVehicle,gameplayID,playerName,mapDisplayName,dateTime,isWinner
:String;

replayVersion:Integer;
JSONObject,JSONObject2:TJSONObject;

credFactor:Real;
currentJSONData:TStringArray;
begin

try
  AssignFile(ReplayFile,Path);
  FileMode := fmOpenRead;
  Reset(ReplayFile);
except
  for i := 0 to Grid.ColCount-2 do
    Grid.Cells[i,Index+1]:= ReplaysStatForm.Label_common_error.Caption;
    Grid.Cells[Grid.ColCount-1,Index+1]:= ExtractFileName(Path);
    MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
    Exit;
end;

  ReplaysStatForm.StatusBar.SimpleText:= ReplaysStatForm.Label_current_replay.Caption + ' ' + Path;
  ReplaysStatForm.StatusBar.Update;

  ReadLn(ReplayFile,TempString);
  currentJSONData := GetJSONStrings(Path);
  JSONString1 := currentJSONData[0];
  JSONString2 :=currentJSONData[1];
  JSONString3 :=currentJSONData[2];
  JSONString4 :=currentJSONData[3];

  CloseFile(ReplayFile);

        JSONObject:=TJSONObject.ParseJSONValue(JSONString1) as TJSONObject;
        if Assigned(JSONObject) then
        begin
             replayVersionXml:=TrimQuotes(JSONObject.Get('clientVersionFromXml').JsonValue.ToString);
             replayVersionXml:=StringReplace(replayVersionXml,'Common Test','CT',[rfReplaceAll]);
             clientVersionFromExe:=TrimQuotes(JSONObject.Get('clientVersionFromExe').JsonValue.ToString);
             clientVersionFromExe:=StringReplace(clientVersionFromExe,' ','',[rfReplaceAll]);
             clientVersionFromExe:=StringReplace(clientVersionFromExe,',','.',[rfReplaceAll]);


             TempString:=StringReplace(clientVersionFromExe,',','',[rfReplaceAll]);
             TempString:=StringReplace(TempString,' ','',[rfReplaceAll]);
             TempString:=StringReplace(TempString,'.','',[rfReplaceAll]);
             TempString:=StringReplace(TempString,'08100','0810',[rfReplaceAll]);
             TempString:=StringReplace(TempString,'08110','0811',[rfReplaceAll]);
             replayVersion:=StrToInt(TempString);
             mapDisplayName:=TrimQuotes(JSONObject.Get('mapDisplayName').JsonValue.ToString);
             gameplayID:=TrimQuotes(JSONObject.Get('gameplayID').JsonValue.ToString);
             playerID:=TrimQuotes(JSONObject.Get('playerID').JsonValue.ToString);
             vehicles:=JSONObject.Get('vehicles').JsonValue.ToString;
             dateTime:=TrimQuotes(JSONObject.Get('dateTime').JsonValue.ToString);
             mapName:=TrimQuotes(JSONObject.Get('mapName').JsonValue.ToString);
             playerName:=TrimQuotes(JSONObject.Get('playerName').JsonValue.ToString);
             playerVehicle:=TrimQuotes(JSONObject.Get('playerVehicle').JsonValue.ToString);
             //battleType:=TrimQuotes(JSONObject.Get('battleType').JsonValue.ToString);

             JSONObject.Destroy;
              dateTime:=FormatDateTime('yyyy.mm.dd hh:nn:ss', StrToDateTime(dateTime) );
              Grid.Cells[RM_DATE,Index+1]:=dateTime;
              Grid.Cells[RM_MAP,Index+1]:=mapDisplayName;
              Grid.Cells[RM_NICK,Index+1]:=playerName;

            //  Grid.Cells[RM_TANK,Index+1]:= playerVehicle;
            //  Grid.Cells[RM_BATTYPE,Index+1]:=battleType;
            //  Grid.Cells[RM_GAMEPLAY,Index+1]:=battleType;
              Grid.Cells[Grid.ColCount-1,Index+1]:= Path;
        end
        else
        begin
          for i := 0 to Grid.ColCount-2 do
                 Grid.Cells[i,Index+1]:= ReplaysStatForm.Label_common_error.Caption;
                 Grid.Cells[Grid.ColCount-1,Index+1]:= ExtractFileName(Path);
                 MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
                 Exit;
        end;

      if ((replayVersion>811) AND (replayVersion<900)) then
        begin
              for i := 0 to Grid.ColCount-2 do
                 Grid.Cells[i,Index+1]:=ReplaysStatForm.Label_common_old_ver.Caption;
                 Grid.Cells[Grid.ColCount-1,Index+1]:= ExtractFileName(Path);
                 MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
                 Exit;
        end;

{
      try//vehicles - данные о никах и танках
}
if ((Pos('spotted',JSONString2)=0) OR (Pos('vehicleType',JSONString3)=0) OR (Pos('frags',JSONString4)=0))
  then//если вышел из боя
    begin
      TanksINIFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
      playerVehicle:=StringReplace(playerVehicle,'-',':',[]);
      playerVehicle:=DecodeTechs(playerVehicle);
      TanksINIFile.Free;
      Grid.Cells[RM_TANK,Index+1] := playerVehicle;
        for i := RM_BATTYPE to RM_INCOME do
         Grid.Cells[i,Index+1]:=ReplaysStatForm.Label_common_error.Caption;
         Grid.Cells[Grid.ColCount-1,RM_PATH]:= Path;
         MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
         Exit;
    end;


      //инфа о результате боя
try
        JSONObject:=TJSONObject.ParseJSONValue(JSONString2) as TJSONObject;
       if Assigned(JSONObject) then
       begin
       personal:=JSONObject.Get('personal').JsonValue.ToString;

                if replayVersion>=980 then
                begin
                  JSONObject2:=TJSONObject.ParseJSONValue(personal) as TJSONObject;
                  if Assigned(JSONObject2) then
                    begin
                    TempString:=JSONObject2.ToString;
                    JSONObject2.Destroy;
                    end
                    else begin Beep(400,200);Exit;end;

                  JSONObject2:=TJSONObject.ParseJSONValue(TempString) as TJSONObject;
                  if Assigned(JSONObject2) then
                    begin
                    personal:=JSONObject2.Pairs[0].JsonValue.ToString;
                    JSONObject2.Destroy;
                    end
                    else begin Beep(400,200);Exit;end;
                end;

            //инфа о результате автора
            JSONObject2:=TJSONObject.ParseJSONValue(personal) as TJSONObject;
            if Assigned(JSONObject2) then
            begin

              repair:=TrimQuotes(JSONObject2.Get('repair').JsonValue.ToString);
              damageAssistedTrack:=TrimQuotes(JSONObject2.Get('damageAssistedTrack').JsonValue.ToString);
              creditsToDraw:=TrimQuotes(JSONObject2.Get('creditsToDraw').JsonValue.ToString);
              damageAssistedRadio:=TrimQuotes(JSONObject2.Get('damageAssistedRadio').JsonValue.ToString);
              if( not JSONObject2.TryGetValue('premiumCreditsFactor10',premiumCreditsFactor10)) then
                begin
                  premiumCreditsFactor10 := TrimQuotes(JSONObject2.Get('premiumCreditsFactor100').JsonValue.ToString);
                  premiumCreditsFactor10 := IntToStr(Round(StrToInt(premiumCreditsFactor10)/10));
                end;
              if( not JSONObject2.TryGetValue('premiumXPFactor10',premiumXPFactor10)) then
                begin
                  premiumXPFactor10 := TrimQuotes(JSONObject2.Get('premiumXPFactor100').JsonValue.ToString);
                  premiumXPFactor10 := IntToStr(Round(StrToInt(premiumCreditsFactor10)/10));
                end;
              xp:=TrimQuotes(JSONObject2.Get('xp').JsonValue.ToString);
              creditsContributionIn:=TrimQuotes(JSONObject2.Get('creditsContributionIn').JsonValue.ToString);
              autoRepairCost:=TrimQuotes(JSONObject2.Get('autoRepairCost').JsonValue.ToString);
              eventCredits:=TrimQuotes(JSONObject2.Get('eventCredits').JsonValue.ToString);
              health:=TrimQuotes(JSONObject2.Get('health').JsonValue.ToString);
              kills:=TrimQuotes(JSONObject2.Get('kills').JsonValue.ToString);
              team:=TrimQuotes(JSONObject2.Get('team').JsonValue.ToString);
              credits:=TrimQuotes(JSONObject2.Get('credits').JsonValue.ToString);
              igrXPFactor10:=TrimQuotes(JSONObject2.Get('igrXPFactor10').JsonValue.ToString);
              autoEquipCost:=TrimQuotes(JSONObject2.Get('autoEquipCost').JsonValue.ToString);
              markOfMastery:=TrimQuotes(JSONObject2.Get('markOfMastery').JsonValue.ToString);
              eventXP:=TrimQuotes(JSONObject2.Get('eventXP').JsonValue.ToString);
              damageDealt:=TrimQuotes(JSONObject2.Get('damageDealt').JsonValue.ToString);
              autoLoadCost:=TrimQuotes(JSONObject2.Get('autoLoadCost').JsonValue.ToString);
              originalCredits:=TrimQuotes(JSONObject2.Get('originalCredits').JsonValue.ToString);
              dailyXPFactor10:=TrimQuotes(JSONObject2.Get('dailyXPFactor10').JsonValue.ToString);
              originalXP:=TrimQuotes(JSONObject2.Get('originalXP').JsonValue.ToString);
              creditsContributionOut:=TrimQuotes(JSONObject2.Get('creditsContributionOut').JsonValue.ToString);

              JSONObject2.Destroy;
            end
        else
        begin
          for i := 0 to Grid.ColCount-2 do
                 Grid.Cells[i,Index+1]:=ReplaysStatForm.Label_common_error.Caption;
                 Grid.Cells[Grid.ColCount-1,Index+1]:= ExtractFileName(Path);
                 MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
                 Exit;
        end;
       common:=JSONObject.Get('common').JsonValue.ToString;
              //вытаскивание arenaCreateTime и т.д.
              JSONObject2:=TJSONObject.ParseJSONValue(common) as TJSONObject;
                if Assigned(JSONObject2) then
                  begin
                  finishReason:=TrimQuotes(JSONObject2.Get('finishReason').JsonValue.ToString);
                  arenaCreateTime:=TrimQuotes(JSONObject2.Get('arenaCreateTime').JsonValue.ToString);
                  duration:=TrimQuotes(JSONObject2.Get('duration').JsonValue.ToString);
                  winnerTeam:=TrimQuotes(JSONObject2.Get('winnerTeam').JsonValue.ToString);

                  JSONObject2.Destroy;
                  end
                  else
                    begin
                    for i := 0 to Grid.ColCount-2 do
                    Grid.Cells[i,Index+1]:=ReplaysStatForm.Label_common_error.Caption;
                    Grid.Cells[Grid.ColCount-1,Index+1]:= ExtractFileName(Path);
                    MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
                    Exit;
                    end;
       JSONObject.Destroy;
       end
        else
        begin
          for i := 0 to Grid.ColCount-2 do
                 Grid.Cells[i,Index+1]:=ReplaysStatForm.Label_common_error.Caption;
                 Grid.Cells[Grid.ColCount-1,Index+1]:= ExtractFileName(Path);
                 MoveFileToDir(Path,'_' + ReplaysStatForm.Label_common_error.Caption);
                 Exit;
        end;//инфа о результате боя КОНЕЦ
except
        Grid.Cells[RM_DATE,Index+1]:=dateTime;
        Grid.Cells[RM_MAP,Index+1]:=mapDisplayName;
        Grid.Cells[RM_NICK,Index+1]:=playerName;
        Grid.Cells[RM_TANK,Index+1]:=playerVehicle;
        for i := RM_WINNER to Grid.ColCount-2 do
                 Grid.Cells[i,Index+1]:=ReplaysStatForm.Label_common_error.Caption;
end;
{
      try//инфа о фрагах
}
          if winnerTeam<>team then isWinner:= ReplaysStatForm.Label_common_defeat.Caption;
          if winnerTeam='0' then isWinner:=ReplaysStatForm.Label_common_draw.Caption;
          if winnerTeam=team then isWinner:=ReplaysStatForm.Label_common_win.Caption;

          if gameplayID='domination' then gameplayID:=ReplaysStatForm.Label_common_domination_short.Caption;
          if gameplayID='assault' then gameplayID:=ReplaysStatForm.Label_common_assault_short.Caption;
          if gameplayID='ctf' then gameplayID:= ReplaysStatForm.Label_common_ctf_short.Caption;
          if gameplayID='nations' then gameplayID:=ReplaysStatForm.Label_common_nations_short.Caption;
          if gameplayID='ctf30x30' then gameplayID:=ReplaysStatForm.Label_common_ctf30x30_short.Caption;
          if gameplayID='epic' then gameplayID:=ReplaysStatForm.Label_common_epic_short.Caption;

{
          case StrToInt(battleType) of
          1: battleType:='Случ.';
          2: battleType:='Трен.';
          3: battleType:='Рота';
          4: battleType:='Турн.';
          5: battleType:='ГК';
          6: battleType:='Боев.О.';
          7: battleType:='Ком.';
          8: battleType:='Ист.';
          9: battleType:='Спорт';
          10: battleType:='Укреп.';
          end;
}
          case StrToInt(markOfMastery) of
          0: markOfMastery:='';
          1: markOfMastery:='3';
          2: markOfMastery:='2';
          3: markOfMastery:='1';
          4: markOfMastery:='M';
          end;

//dateTime:=FormatDateTime('yyyy.mm.dd hh:nn:ss', StrToDateTime(dateTime) );
Grid.Cells[RM_DATE,Index+1]:=dateTime;
Grid.Cells[RM_MAP,Index+1]:=mapDisplayName;
Grid.Cells[RM_NICK,Index+1]:=playerName;

playerVehicle:=StringReplace(playerVehicle,'-',':',[]);

  TanksINIFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
  playerVehicle:=DecodeTechs(playerVehicle);
  TanksINIFile.Free;

Grid.Cells[RM_TANK,Index+1]:=playerVehicle;
//Grid.Cells[RM_BATTYPE,Index+1]:=battleType;
Grid.Cells[RM_GAMEPLAY,Index+1]:=gameplayID;
Grid.Cells[RM_WINNER,Index+1]:=isWinner;

if health<>'0' then health:='+' else health:='';

Grid.Cells[RM_ALIVE,Index+1]:=health;
Grid.Cells[RM_MARK,Index+1]:=markOfMastery;
Grid.Cells[RM_EXP,Index+1]:=xp;
Grid.Cells[RM_OEXP,Index+1]:=originalXP;
Grid.Cells[RM_DAMAGE,Index+1]:=damageDealt;
Grid.Cells[RM_FRAGS,Index+1]:=kills;
Grid.Cells[RM_RADIO,Index+1]:=damageAssistedRadio;
Grid.Cells[RM_TRACKS,Index+1]:=damageAssistedTrack;
Grid.Cells[RM_CREDITS,Index+1]:=credits;

      autoLoadCost:=StringReplace(autoLoadCost,'[','',[]);
      autoLoadCost:=Copy(autoLoadCost,0,Pos(',',autoLoadCost)-1);

      autoEquipCost:=StringReplace(autoEquipCost,'[','',[]);
      autoEquipCost:=Copy(autoEquipCost,0,Pos(',',autoEquipCost)-1);

Grid.Cells[RM_REPAIR,Index+1]:=autoRepairCost;
Grid.Cells[RM_LOAD,Index+1]:=autoLoadCost;
Grid.Cells[RM_EQUIP,Index+1]:=autoEquipCost;

credFactor:=StrToFloat(premiumCreditsFactor10)/10;
TempString:=IntToStr( Round (StrToInt(originalCredits)*credFactor+StrToInt(creditsContributionIn)-StrToInt(creditsContributionOut)*credFactor -
                      StrToInt(autoRepairCost)-StrToInt(autoEquipCost)-StrToInt(autoLoadCost) ));
Grid.Cells[RM_INCOME,Index+1]:=TempString;
Grid.Cells[RM_VERSION,Index+1]:=clientVersionFromExe;
Grid.Cells[RM_PATH,Index+1]:=Path;

Grid.Refresh;

ResizeRow(Grid,Index+1);
end;

procedure TReplaysStatForm.ProcessReplays();
var i:Integer;
Path:String;
begin
Label_AllReplaysList.Clear;
Label_favoriteReplaysList.Clear;

ClearStringGrid(sg_AllReplays);
ClearStringGrid(sg_FavoriteReplays);

Path:=ed_AllReplaysFolder.Text;
if Path[Length(Path)]<>'\' then Path:=Path+'\';

FindFiles(Label_AllReplaysList,Path,'*.wotreplay',false);//Все реплеи
Path:=Path+Label_common_favs.Caption;
FindFiles(Label_favoriteReplaysList,Path,'*.wotreplay',false);//избранное

sg_AllReplays.RowCount:=Label_AllReplaysList.Count+1;
sg_FavoriteReplays.RowCount:=Label_favoriteReplaysList.Count+1;


SeriesProgress.Min:=0;
SeriesProgress.Max:=Label_AllReplaysList.Count+Label_favoriteReplaysList.Count;
SeriesProgress.Position:=0;
SeriesProgress.Visible:=true;

//ResizeRow(sg_AllReplays,0);
//ResizeRow(sg_FavoriteReplays,0);

if Label_AllReplaysList.Count<>0 then
        for i := Label_AllReplaysList.Count-1 downto 0 do
            begin
//if i >= Round(13 / 4) then Continue;
              ProcessCurrentReplay(Label_AllReplaysList.Items[i],sg_AllReplays.RowCount-2-i,sg_AllReplays);
              SeriesProgress.Position:=SeriesProgress.Position+1;
              ResizeRow(sg_AllReplays,i);
              SeriesProgress.Refresh;
            end;

if Label_favoriteReplaysList.Count<>0 then
        for i := Label_favoriteReplaysList.Count-1 downto 0 do
            begin
//if i >= Round(13 / 4) then Continue;
              ProcessCurrentReplay(Label_favoriteReplaysList.Items[i],sg_FavoriteReplays.RowCount-2-i,sg_FavoriteReplays);
              SeriesProgress.Position:=SeriesProgress.Position+1;
              ResizeRow(sg_FavoriteReplays,i);
              SeriesProgress.Refresh;
            end;

SeriesProgress.Visible:=false;



StatusBar.SimpleText:='';
StatusBar.Update;

end;

procedure TReplaysStatForm.bt_RefreshClick(Sender: TObject);
begin
if DirectoryExists(ed_AllReplaysFolder.Text) then
  ProcessReplays();
end;

procedure TReplaysStatForm.ed_AllReplaysFolderDblClick(Sender: TObject);
begin
ShellExecute(Application.Handle,PChar('open'),
              Pchar(ed_AllReplaysFolder.Text),
              Nil,Nil,SW_SHOW);
end;


procedure TReplaysStatForm.ZeroLables();
begin
Label_shots.Caption:='0';
Label_hits.Caption:='0';
Label_he_hits.Caption:='0';
Label_pierced.Caption:='0';
Label_damageDealt.Caption:='0';
Label_shotsReceived.Caption:='0';
Label_damageReceived.Caption:='0';
Label_spotted.Caption:='0';
Label_damageAssistedRadio.Caption:='0';
Label_damageAssistedTrack.Caption:='0';
Label_damaged.Caption:='0';
Label_kills.Caption:='0';
Label_capturePoints.Caption:='0';
Label_droppedCapturePoints.Caption:='0';
Label_lifetime_duration.Caption:='0';
Label_mileage.Caption:='0';
Label_killerID.Caption:='0';
Label_premium.Caption:='0';
Label_xp.Caption:='0';
Label_xpPenalty.Caption:='0';
Label_freeXp.Caption:='0';
Label_credits.Caption:='0';
Label_creditsPenalty.Caption:='0';
Label_creditsContributionIn.Caption:='0';
Label_autoRepairCost.Caption:='0';
Label_autoLoadCost.Caption:='0';
Label_autoEquipCost.Caption:='0';
Label_silverSumm.Caption:='0';
Label_arenaCreateTime.Caption:='0';
Label_heroVehicleIds.Caption:='0';
Label_arenaTypeID.Caption:='0';
Label_achieveIndices.Caption:='0';
Label_map.Caption:='';
Label_time.Caption:='';
Label_replayVersionXml.Caption:='';
Label_isWinner.Caption:='';
Label_battleType.Caption:='';

Label_m_battles.Caption:='0';
Label_m_shots.Caption:='0';
Label_m_dmg.Caption:='0';
Label_m_accuracy.Caption:='0';
Label_m_dmgrecieved.Caption:='0';
Label_m_dmgpershot.Caption:='0';
Label_m_shotsReceived.Caption:='0';
Label_m_potentialgot.Caption:='0';
Label_m_dmgpergot.Caption:='0';
Label_m_potencpershot.Caption:='0';
Label_m_pottorecieved.Caption:='0';
Label_m_spotted.Caption:='0';
Label_m_profit.Caption:='0';
Label_m_exp.Caption:='0';
Label_m_lifetime.Caption:='0';
Label_m_defend.Caption:='0';
Label_m_survive.Caption:='0';
Label_m_lifetimeproc.Caption:='0';
Label_m_capture.Caption:='0';
Label_m_equip.Caption:='0';
Label_m_repair.Caption:='0';
Label_m_ammo.Caption:='0';
Label_m_silver.Caption:='0';
Label_m_support.Caption:='0';
Label_m_tracks.Caption:='0';
Label_m_killed.Caption:='0';
Label_m_damaged.Caption:='0';
Label_m_mileage.Caption:='0';
Label_m_duration.Caption:='0';
Label_m_pierced.Caption:='0';
Label_m_hits.Caption:='0';
Label_m_wins.Caption:='0';
Label_m_hehits.Caption:='0';
end;

procedure TReplaysStatForm.ClearControls();
begin
    ZeroLables();
end;

procedure TReplaysStatForm.LanguagesLoad(const lang : String);
var
iniFile :TINIFile;
begin
  iniFile := TINIFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
  with ReplaysStatForm do
  begin
  // типа для безопасности
  if( lang = 'ru') then
  begin
      Label_PathPlayer.Caption := 'http://worldoftanks.ru/community/accounts/';
      Label_PathPlayerSearch.Caption := 'http://worldoftanks.ru/community/accounts/#wot&at_search=';
      Label_PathClan.Caption := 'http://ru.wargaming.net/clans/wot/';
      ReplaysStatForm.Caption := 'Статистика по реплеям World of Tanks  8.11+ от 2020.05.01';
  end;
  if( lang = 'en') then
  begin
      Label_PathPlayer.Caption := 'https://worldoftanks.asia/en/community/accounts/';
      Label_PathPlayerSearch.Caption := 'https://worldoftanks.asia/en/community/accounts/#wot&at_search=';
      Label_PathClan.Caption := 'https://asia.wargaming.net/clans/wot/';
      ReplaysStatForm.Caption := 'Replays statistics. World of Tanks  8.11+. 1st May 2020';
  end;

  // ОБЩЕЕ
//      ReplaysStatForm.Caption := iniFile.ReadString(lang,'program_caption','Статистика по реплеям World of Tanks  8.11+ от 2020.05.01');
  // ОДИН БОЙ
      AnalyseType.Pages[0].Caption := iniFile.ReadString(lang,'analyse_page_1','Один бой');

      SingleReplayResults.Pages[0].Caption := iniFile.ReadString(lang,'single_page_1','Командные достижения');
      SingleReplayResults.Pages[1].Caption := iniFile.ReadString(lang,'single_page_2','Подробно');
      ViewReplay.Caption := iniFile.ReadString(lang,'view_replay','Просмотреть реплей');
      OpenReplay.Caption := iniFile.ReadString(lang,'open_replay','Открыть');
      About.Caption := iniFile.ReadString(lang,'about','О программе');

      AlliesGrid.Cells[TAB_SQUAD,0] := iniFile.ReadString(lang,'s_grid_1','Взв');
      EnemiesGrid.Cells[TAB_SQUAD,0] := iniFile.ReadString(lang,'s_grid_1','Взв');
      AlliesGrid.Cells[TAB_NICK,0] := iniFile.ReadString(lang,'s_grid_2','Ник');
      EnemiesGrid.Cells[TAB_NICK,0] := iniFile.ReadString(lang,'s_grid_2','Ник');
      AlliesGrid.Cells[TAB_CLAN,0] := iniFile.ReadString(lang,'s_grid_3','Клан');
      EnemiesGrid.Cells[TAB_CLAN,0] := iniFile.ReadString(lang,'s_grid_3','Клан');
      AlliesGrid.Cells[TAB_TANK,0] := iniFile.ReadString(lang,'s_grid_4','Танк');
      EnemiesGrid.Cells[TAB_TANK,0] := iniFile.ReadString(lang,'s_grid_4','Танк');
      AlliesGrid.Cells[TAB_ALIVE,0] := iniFile.ReadString(lang,'s_grid_5','Жив');
      EnemiesGrid.Cells[TAB_ALIVE,0 ]:= iniFile.ReadString(lang,'s_grid_5','Жив');
      AlliesGrid.Cells[TAB_FRAGS,0] := iniFile.ReadString(lang,'s_grid_6','Убил');
      EnemiesGrid.Cells[TAB_FRAGS,0] := iniFile.ReadString(lang,'s_grid_6','Убил');
      AlliesGrid.Cells[TAB_EXP,0] := iniFile.ReadString(lang,'s_grid_7','Опыт');
      EnemiesGrid.Cells[TAB_EXP,0] := iniFile.ReadString(lang,'s_grid_7','Опыт');
      AlliesGrid.Cells[TAB_DAMAGE,0] := iniFile.ReadString(lang,'s_grid_8','Урон');
      EnemiesGrid.Cells[TAB_DAMAGE,0] := iniFile.ReadString(lang,'s_grid_8','Урон');
      AlliesGrid.Cells[TAB_RADIO,0] := iniFile.ReadString(lang,'s_grid_9','Свет');
      EnemiesGrid.Cells[TAB_RADIO,0] := iniFile.ReadString(lang,'s_grid_9','Свет');
      AlliesGrid.Cells[TAB_TRACKS,0] := iniFile.ReadString(lang,'s_grid_10','Гусли');
      EnemiesGrid.Cells[TAB_TRACKS,0] := iniFile.ReadString(lang,'s_grid_10','Гусли');

      Label_assisted_radio.Caption := iniFile.ReadString(lang,'assisted_radio','Насветил:');
      Label_assisted_track.Caption := iniFile.ReadString(lang,'assisted_track','Урон по загуслен.:');
      Label_capture_points.Caption := iniFile.ReadString(lang,'capture_points','Очков захвата:');
      Label_damage_dealt.Caption := iniFile.ReadString(lang,'damage_dealt','Урона нанёс:');
      Label_damage_got_potential.Caption := iniFile.ReadString(lang,'damage_got_potential','Урона получил/потенциал.:');
      Label_direct_hits.Caption := iniFile.ReadString(lang,'direct_hits','прямых попаданий:');
      Label_dropped_points.Caption := iniFile.ReadString(lang,'dropped_points','Захвата сбил:');
      Label_enemies_spotted.Caption := iniFile.ReadString(lang,'enemies_spotted','Обнаружил:');
      Label_equip_cost.Caption := iniFile.ReadString(lang,'equip_cost','Автоснаряжение:');
      Label_exp.Caption := iniFile.ReadString(lang,'exp','Опыта:');
      Label_exp_penalty_lb.Caption := iniFile.ReadString(lang,'exp_penalty','Штрафа за союз.урон:');
      Label_free_exp.Caption := iniFile.ReadString(lang,'free_exp','Свободного:');
      Label_he_hits_count.Caption := iniFile.ReadString(lang,'he_hits_count','фугасных поврежд.:');
      Label_hits_got.Caption := iniFile.ReadString(lang,'hits_got','Попаданий получил:');
      Label_income.Caption := iniFile.ReadString(lang,'income','Серебра:');
      Label_income_contribution.Caption := iniFile.ReadString(lang,'income_contribution','Компенсация:');
      Label_income_penalty.Caption := iniFile.ReadString(lang,'income_penalty','Штрафа за союз.урон:');
      Label_income_total.Caption := iniFile.ReadString(lang,'income_total','Итого:');
      Label_is_premium.Caption := iniFile.ReadString(lang,'is_premium','Премиум?');
      Label_killed_by.Caption := iniFile.ReadString(lang,'killed_by','Убит игроком:');
      Label_life_battle_time.Caption := iniFile.ReadString(lang,'life_battle_time','Прожил/Бой длился:');
      Label_load_cost.Caption := iniFile.ReadString(lang,'load_cost','Автопополнение БК:');
      Label_mileage_lb.Caption := iniFile.ReadString(lang,'mileage','Пробег:');
      Label_piercing_count.Caption := iniFile.ReadString(lang,'piercing_count','Пробитий:');
      Label_repair_cost.Caption := iniFile.ReadString(lang,'repair_cost','Авторемонт:');
      Label_shots_count.Caption := iniFile.ReadString(lang,'shots_count','Выстрелов:');
      Label_tanks_damaged.Caption := iniFile.ReadString(lang,'tanks_damaged','Повредил:');
      Label_tanks_destroyed.Caption := iniFile.ReadString(lang,'tanks_destroyed','Уничтожил:');
      Label_battle_result.Caption := iniFile.ReadString(lang,'battle_result','Результат:');
      Label_battle_time.Caption := iniFile.ReadString(lang,'battle_time','Время:');
      Label_battle_type.Caption := iniFile.ReadString(lang,'battle_type','Тип боя:');
      Label_double_click_help.Caption := iniFile.ReadString(lang,'double_click_help','Двойной клик на имя игрока или клан для открытия профиля на оф. сайте');
      Label_exp_allies_pure.Caption := iniFile.ReadString(lang,'exp_allies_pure','Союзники (чистый опыт):');
      Label_exp_enemies_pure.Caption := iniFile.ReadString(lang,'exp_enemies_pure','Противники (чистый опыт):');
      Label_map_name.Caption := iniFile.ReadString(lang,'map_name','Карта:');
      Label_time.Caption := iniFile.ReadString(lang,'time','Время:');


  // НЕСКОЛЬКО БОЁВ
      AnalyseType.Pages[1].Caption := iniFile.ReadString(lang,'analyse_page_2','Серия боёв');

      SeriesAnalysisButton.Caption := iniFile.ReadString(lang,'series_analyz','Начать');
      HTMLExport.Caption := iniFile.ReadString(lang,'export_html','Экспорт htm');
      XlsExport.Caption := iniFile.ReadString(lang,'export_xls','Экспорт xls');

      Multi.Pages[0].Caption := iniFile.ReadString(lang,'multi_page_1','Опыт');
      Multi.Pages[1].Caption := iniFile.ReadString(lang,'multi_page_2','Фраги');
      Multi.Pages[2].Caption := iniFile.ReadString(lang,'multi_page_3','Урон');
      Multi.Pages[3].Caption := iniFile.ReadString(lang,'multi_page_4','Помощь');
      Multi.Pages[4].Caption := iniFile.ReadString(lang,'multi_page_5','Стрельба');
      Multi.Pages[5].Caption := iniFile.ReadString(lang,'multi_page_6','Итого');
      Multi.Pages[6].Caption := iniFile.ReadString(lang,'multi_page_7','Дополнительно');

      SeriesGridExp.Cells[0,0] := iniFile.ReadString(lang,'m_grid_date','Дата');
      SeriesGridFrags.Cells[0,0] := iniFile.ReadString(lang,'m_grid_date','Дата');
      SeriesGridDamage.Cells[0,0] := iniFile.ReadString(lang,'m_grid_date','Дата');
      SeriesGridSupport.Cells[0,0] := iniFile.ReadString(lang,'m_grid_date','Дата');
      SeriesGridShots.Cells[0,0] := iniFile.ReadString(lang,'m_grid_date','Дата');

      SeriesGridExp.Cells[0,1] := iniFile.ReadString(lang,'m_grid_map','Карта');
      SeriesGridFrags.Cells[0,1] := iniFile.ReadString(lang,'m_grid_map','Карта');
      SeriesGridDamage.Cells[0,1] := iniFile.ReadString(lang,'m_grid_map','Карта');
      SeriesGridSupport.Cells[0,1] := iniFile.ReadString(lang,'m_grid_map','Карта');
      SeriesGridShots.Cells[0,1] := iniFile.ReadString(lang,'m_grid_map','Карта');

      SeriesGridExp.Cells[0,2] := iniFile.ReadString(lang,'m_grid_exp','Ник\Опыт');
      SeriesGridFrags.Cells[0,2] := iniFile.ReadString(lang,'m_grid_frg','Ник\Фраги');
      SeriesGridDamage.Cells[0,2] := iniFile.ReadString(lang,'m_grid_dmg','Ник\Урон');
      SeriesGridSupport.Cells[0,2] := iniFile.ReadString(lang,'m_grid_sup','Ник\ Свет/Гусли');
      SeriesGridShots.Cells[0,2] := iniFile.ReadString(lang,'m_grid_sht','Ник\ Выст.-Проб./Поп.(ОФ)');

      SeriesGridExp.Cells[1,2] := iniFile.ReadString(lang,'m_grid_tank','Техника');
      SeriesGridFrags.Cells[1,2] := iniFile.ReadString(lang,'m_grid_tank','Техника');
      SeriesGridDamage.Cells[1,2] := iniFile.ReadString(lang,'m_grid_tank','Техника');
      SeriesGridSupport.Cells[1,2] := iniFile.ReadString(lang,'m_grid_tank','Техника');
      SeriesGridShots.Cells[1,2] := iniFile.ReadString(lang,'m_grid_tank','Техника');

      Label_m_accuracy_lb.Caption := iniFile.ReadString(lang,'m_accuracy','Точность:');
      Label_m_authors_statistics.Caption := iniFile.ReadString(lang,'m_authors_statistics','Статистика автора реплея');
      Label_m_avg_dmg_got.Caption := iniFile.ReadString(lang,'m_avg_dmg_got','Средн. ур. за получ. попад.:');
      Label_m_avg_dmg_per_shot.Caption := iniFile.ReadString(lang,'m_avg_dmg_per_shot','Средний урон за выстрел:');
      Label_m_avg_dmg_pot_got.Caption := iniFile.ReadString(lang,'m_avg_dmg_pot_got','Сред. потенциал. за попад.:');
      Label_m_capture_points.Caption := iniFile.ReadString(lang,'m_capture_points','Очков захвата:');
      Label_m_damage_dealt.Caption := iniFile.ReadString(lang,'m_damage_dealt','Урона нанёс:');
      Label_m_damage_received.Caption := iniFile.ReadString(lang,'m_damage_received','Урона получил:');
      Label_m_damaged_lb.Caption := iniFile.ReadString(lang,'m_damaged','Повредил:');
      Label_m_destroyed_lb.Caption := iniFile.ReadString(lang,'m_destroyed','Уничтожил:');
      Label_m_drop_files_here.Caption := iniFile.ReadString(lang,'m_drop_files_here','Перетащите реплеи в окно программы');
      Label_m_dropped_points.Caption := iniFile.ReadString(lang,'m_dropped_points','Очков защиты:');
      Label_m_equip_lb.Caption := iniFile.ReadString(lang,'m_equip','Снаряжение:');
      Label_m_exp_lb.Caption := iniFile.ReadString(lang,'m_exp','Опыта:');
      Label_m_he_hits.Caption := iniFile.ReadString(lang,'m_he_hits','Фугасных повреждений:');
      Label_m_hits_count.Caption := iniFile.ReadString(lang,'m_hits_count','Попаданий:');
      Label_m_income.Caption := iniFile.ReadString(lang,'m_income','Серебра:');
      Label_m_income_total.Caption := iniFile.ReadString(lang,'m_income_total','Прибыль:');
      Label_m_killed.Caption := iniFile.ReadString(lang,'m_killed','Уничтожил:');
      Label_m_lifetime_lb.Caption := iniFile.ReadString(lang,'m_lifetime','Прожил:');
      Label_m_lifetime_perc.Caption := iniFile.ReadString(lang,'m_lifetime_perc','Прожил % боя:');
      Label_m_mileage_lb.Caption := iniFile.ReadString(lang,'m_mileage','Пробег:');
      Label_m_survived.Caption := iniFile.ReadString(lang,'m_survived','Выживаемость:');
      Label_m_piercing_count.Caption := iniFile.ReadString(lang,'m_piercing_count','Пробитий:');
      Label_m_potential_damage_got.Caption := iniFile.ReadString(lang,'m_potential_damage_got','Потенц.урона:');
      Label_m_radio.Caption := iniFile.ReadString(lang,'m_radio','Насветил:');
      Label_m_refill.Caption := iniFile.ReadString(lang,'m_refill','Пополнение БК:');
      Label_m_repair_lb.Caption := iniFile.ReadString(lang,'m_repair','Ремонт:');
      Label_m_shots_count.Caption := iniFile.ReadString(lang,'m_shots_count','Выстрелов:');
      Label_m_shots_received.Caption := iniFile.ReadString(lang,'m_shots_count','Попаданий получил:');
      Label_m_spotted_lb.Caption := iniFile.ReadString(lang,'m_spotted','Обнаружил:');
      Label_m_total_avg1.Caption := iniFile.ReadString(lang,'m_total_avg1','Суммарно/В среднем');
      Label_m_total_avg2.Caption := iniFile.ReadString(lang,'m_total_avg2','Суммарно/В среднем');
      Label_m_track.Caption := iniFile.ReadString(lang,'m_track','Урон по загусл.:');
      Label_m_wins_batlles_count.Caption := iniFile.ReadString(lang,'m_wins_batlles_count','Побед/Боёв:');
      Label_m_dmg_rec_to_pot1.Caption := iniFile.ReadString(lang,'m_dmg_rec_to_pot1','Отношение потенц. урона');
      Label_m_dmg_rec_to_pot2.Caption := iniFile.ReadString(lang,'m_dmg_rec_to_pot2','к полученному:');
  // УАПРАВЛЕНИЕ РЕПЛЕЯМИ
      AnalyseType.Pages[2].Caption := iniFile.ReadString(lang,'analyse_page_3','Управление реплеями');
      if(ed_AllReplaysFolder.Text = 'Укажите папку с реплеями -->') then
        ed_AllReplaysFolder.Text := iniFile.ReadString(lang,'replays_folder','Укажите папку с реплеями -->');
      pc_ReplaysList.Pages[0].Caption := iniFile.ReadString(lang,'rm_page_1','Все реплеи');
      pc_ReplaysList.Pages[1].Caption := iniFile.ReadString(lang,'rm_page_2','Избранное');
      bt_Refresh.Caption := iniFile.ReadString(lang,'rm_refresh','Обновить');
      bt_AddToFavorites.Caption := iniFile.ReadString(lang,'rm_to_favs','В избранное');
      bt_ProcessInRS.Caption := iniFile.ReadString(lang,'rm_view','Просмотреть рез-ты');
      bt_DeleteSelected.Caption := iniFile.ReadString(lang,'rm_delete','Удалить');

      sg_AllReplays.Cells[RM_DATE,0] := iniFile.ReadString(lang,'rm_grid_1','Время');
      sg_FavoriteReplays.Cells[RM_DATE,0] := iniFile.ReadString(lang,'rm_grid_1','Время');
      sg_AllReplays.Cells[RM_MAP,0] := iniFile.ReadString(lang,'rm_grid_2','Карта');
      sg_FavoriteReplays.Cells[RM_MAP,0] := iniFile.ReadString(lang,'rm_grid_2','Карта:');
      sg_AllReplays.Cells[RM_NICK,0] := iniFile.ReadString(lang,'rm_grid_3','Ник');
      sg_FavoriteReplays.Cells[RM_NICK,0] := iniFile.ReadString(lang,'rm_grid_3','Ник:');
      sg_AllReplays.Cells[RM_TANK,0] := iniFile.ReadString(lang,'rm_grid_4','Танк');
      sg_FavoriteReplays.Cells[RM_TANK,0] := iniFile.ReadString(lang,'rm_grid_4','Танк');
      sg_AllReplays.Cells[RM_BATTYPE,0] := iniFile.ReadString(lang,'rm_grid_5','Тип боя');
      sg_FavoriteReplays.Cells[RM_BATTYPE,0] := iniFile.ReadString(lang,'rm_grid_5','Тип боя');
      sg_AllReplays.Cells[RM_GAMEPLAY,0] := iniFile.ReadString(lang,'rm_grid_6','Режим');
      sg_FavoriteReplays.Cells[RM_GAMEPLAY,0] := iniFile.ReadString(lang,'rm_grid_6','Режим');
      sg_AllReplays.Cells[RM_WINNER,0] := iniFile.ReadString(lang,'rm_grid_7','Исход');
      sg_FavoriteReplays.Cells[RM_WINNER,0] := iniFile.ReadString(lang,'rm_grid_7','Исход');
      sg_AllReplays.Cells[RM_ALIVE,0] := iniFile.ReadString(lang,'rm_grid_8','Выжил');
      sg_FavoriteReplays.Cells[RM_ALIVE,0] := iniFile.ReadString(lang,'rm_grid_8','Выжил');
      sg_AllReplays.Cells[RM_MARK,0] := iniFile.ReadString(lang,'rm_grid_9','Ст:');
      sg_FavoriteReplays.Cells[RM_MARK,0] := iniFile.ReadString(lang,'rm_grid_9','Ст:');
      sg_AllReplays.Cells[RM_EXP,0] := iniFile.ReadString(lang,'rm_grid_10','Опыт:');
      sg_FavoriteReplays.Cells[RM_EXP,0] := iniFile.ReadString(lang,'rm_grid_10','Опыт:');
      sg_AllReplays.Cells[RM_OEXP,0] := iniFile.ReadString(lang,'rm_grid_11','Чист.опыт:');
      sg_FavoriteReplays.Cells[RM_OEXP,0] := iniFile.ReadString(lang,'rm_grid_11','Чист.опыт:');
      sg_AllReplays.Cells[RM_DAMAGE,0] := iniFile.ReadString(lang,'rm_grid_12','Урон:');
      sg_FavoriteReplays.Cells[RM_DAMAGE,0] := iniFile.ReadString(lang,'rm_grid_12','Урон:');
      sg_AllReplays.Cells[RM_FRAGS,0] := iniFile.ReadString(lang,'rm_grid_13','Фраги:');
      sg_FavoriteReplays.Cells[RM_FRAGS,0] := iniFile.ReadString(lang,'rm_grid_13','Фраги:');
      sg_AllReplays.Cells[RM_RADIO,0] := iniFile.ReadString(lang,'rm_grid_14','Свет:');
      sg_FavoriteReplays.Cells[RM_RADIO,0] := iniFile.ReadString(lang,'rm_grid_14','Свет:');
      sg_AllReplays.Cells[RM_TRACKS,0] := iniFile.ReadString(lang,'rm_grid_15','Гусли:');
      sg_FavoriteReplays.Cells[RM_TRACKS,0] := iniFile.ReadString(lang,'rm_grid_15','Гусли:');
      sg_AllReplays.Cells[RM_CREDITS,0] := iniFile.ReadString(lang,'rm_grid_16','Серебра:');
      sg_FavoriteReplays.Cells[RM_CREDITS,0] := iniFile.ReadString(lang,'rm_grid_16','Серебра:');
      sg_AllReplays.Cells[RM_REPAIR,0] := iniFile.ReadString(lang,'rm_grid_17','Ремонт:');
      sg_FavoriteReplays.Cells[RM_REPAIR,0] := iniFile.ReadString(lang,'rm_grid_17','Ремонт:');
      sg_AllReplays.Cells[RM_LOAD,0] := iniFile.ReadString(lang,'rm_grid_18','Пополн.БК');
      sg_FavoriteReplays.Cells[RM_LOAD,0] := iniFile.ReadString(lang,'rm_grid_18','Пополн.БК');
      sg_AllReplays.Cells[RM_EQUIP,0] := iniFile.ReadString(lang,'rm_grid_19','Снаряжение:');
      sg_FavoriteReplays.Cells[RM_EQUIP,0] := iniFile.ReadString(lang,'rm_grid_19','Снаряжение:');
      sg_AllReplays.Cells[RM_INCOME,0] := iniFile.ReadString(lang,'rm_grid_20','Чист.прибыль:');
      sg_FavoriteReplays.Cells[RM_INCOME,0] := iniFile.ReadString(lang,'rm_grid_20','Чист.прибыль:');
      sg_AllReplays.Cells[RM_VERSION,0] := iniFile.ReadString(lang,'rm_grid_21','Версия:');
      sg_FavoriteReplays.Cells[RM_VERSION,0] := iniFile.ReadString(lang,'rm_grid_21','Версия:');
      sg_AllReplays.Cells[RM_PATH,0] := iniFile.ReadString(lang,'rm_grid_22','Путь:');
      sg_FavoriteReplays.Cells[RM_PATH,0] := iniFile.ReadString(lang,'rm_grid_22','Путь:');
  // НАСТРОЙКИ
      AnalyseType.Pages[3].Caption := iniFile.ReadString(lang,'analyse_page_4','Настройки');
      gp_options_multi.Caption := iniFile.ReadString(lang,'opt_series','Отображение серии боёв');
      gp_options_rep_mng.Caption := iniFile.ReadString(lang,'opt_manager','Управление реплеями');
      gp_options_export.Caption := iniFile.ReadString(lang,'opt_export','Экспорт результатов серии боёв');

      MultiAdditional.Caption := iniFile.ReadString(lang,'opt_series_author','Собирать всю информацию по автору');
      MultiGroupPlayers.Caption := iniFile.ReadString(lang,'opt_series_group','Группировать по боям');
      MultiToBegin.Caption := iniFile.ReadString(lang,'opt_series_to_begin','"Итого" в начало');
      cb_AutoProcessReplays.Caption := iniFile.ReadString(lang,'opt_manager_auto','Автообработка');
      cb_export_enemies.Caption := iniFile.ReadString(lang,'opt_export_enemies','Экспортировать рез-ты противников');

      Label_opt_collect_user_data.Caption := iniFile.ReadString(lang,'opt_collect_user_data','(включая кол-во выстрелов, урон по танку игрока, серебро и т.д.)');
      Label_opt_group_by_battle.Caption := iniFile.ReadString(lang,'opt_group_by_battle','(игнорировать участие игроков в предыдущих боях)');
      Label_opt_summary_to_begin.Caption := iniFile.ReadString(lang,'opt_summary_to_begin','(перенести колонки с суммарными и средними показателями в начало таблиц)');
      Label_opt_auto_proceed.Caption := iniFile.ReadString(lang,'opt_auto_proceed','(при запуске обрабатывать папку с реплеями и переключаться на вкладку)');
      Label_opt_export_enemies.Caption := iniFile.ReadString(lang,'opt_export_enemies_lb','(при обработке серии боев в папке с программой создастся htm файл с результатами обеих команд)');
      bt_UpdateTankNames.Caption := iniFile.ReadString(lang,'opt_update_tanks','Обновить названия танков');
// ОБЩЕЕ
      Label_common_browse.Caption := iniFile.ReadString(lang,'browse','Укажите папку с реплеями');
      Label_common_favs.Caption := iniFile.ReadString(lang,'favs','[Избранное]\');
      Label_common_delete_selected.Caption := iniFile.ReadString(lang,'delete_selected','Удалить выбранные реплеи');
      Label_common_error.Caption := iniFile.ReadString(lang,'error','Ошибка');
      Label_current_replay.Caption := iniFile.ReadString(lang,'current_replay','Текущий реплей:');
      Label_common_name.Caption := iniFile.ReadString(lang,'name','Ник');
      Label_common_total_exp.Caption := iniFile.ReadString(lang,'total_exp','Суммарно опыта');
      Label_common_total_dmg.Caption := iniFile.ReadString(lang,'total_dmg','Суммарно урона');
      Label_common_total_frags.Caption := iniFile.ReadString(lang,'total_frags','Суммарно фрагов');
      Label_common_total_supp.Caption := iniFile.ReadString(lang,'total_supp','Суммарно поддержки');
      Label_common_avg_exp.Caption := iniFile.ReadString(lang,'avg_exp','Средний опыт');
      Label_common_avg_frags.Caption := iniFile.ReadString(lang,'avg_frags','В среднем фрагов');
      Label_common_avg_dmg.Caption := iniFile.ReadString(lang,'avg_dmg','Средний урон');
      Label_common_avg_supp.Caption := iniFile.ReadString(lang,'avg_supp','В среднем поддержки');
      Label_common_dragndrop.Caption := iniFile.ReadString(lang,'dragndrop','Перетащите реплеи в окно программы');
      Label_common_old_ver.Caption := iniFile.ReadString(lang,'old_ver','Старая версия');
      Label_common_win.Caption := iniFile.ReadString(lang,'win','Победа');
      Label_common_draw.Caption := iniFile.ReadString(lang,'draw','Ничья');
      Label_common_defeat.Caption := iniFile.ReadString(lang,'defeat','Поражение');
      Label_common_leaved.Caption := iniFile.ReadString(lang,'leaved','Вышел');
      Label_common_battle_count.Caption := iniFile.ReadString(lang,'battle_count','Боёв');
      Label_common_domination.Caption := iniFile.ReadString(lang,'domination','встречный');
      Label_common_assault.Caption := iniFile.ReadString(lang,'assault','штурм');
      Label_common_ctf.Caption := iniFile.ReadString(lang,'ctf','обычный');
      Label_common_nations.Caption := iniFile.ReadString(lang,'nations','противостояние');
      Label_common_assault2.Caption := iniFile.ReadString(lang,'assault2','превосходство');
      Label_common_ctf30.Caption := iniFile.ReadString(lang,'ctf30x30','превосходство');
      Label_common_epic.Caption := iniFile.ReadString(lang,'epic','генеральное сражение');
      Label_common_random.Caption := iniFile.ReadString(lang,'random','случайный');
      Label_common_training.Caption := iniFile.ReadString(lang,'training','тренировка');
      Label_common_clan.Caption := iniFile.ReadString(lang,'clan','ротный');
      Label_common_2.Caption := iniFile.ReadString(lang,'battle_2','турнир');
      Label_common_3.Caption := iniFile.ReadString(lang,'battle_3','ГК');
      Label_common_4.Caption := iniFile.ReadString(lang,'battle_4','боев.обучение');
      Label_common_company.Caption := iniFile.ReadString(lang,'company','командный');
      Label_common_hist.Caption := iniFile.ReadString(lang,'hist','исторический');
      Label_common_5.Caption := iniFile.ReadString(lang,'battle_5','спорт_5');
      Label_common_1.Caption := iniFile.ReadString(lang,'battle_1','укрепрайон');
      Label_common_unknown.Caption := iniFile.ReadString(lang,'unknown','неизвестный');
      Label_common_domination_short.Caption := iniFile.ReadString(lang,'domination_short','Встреч.');
      Label_common_assault_short.Caption := iniFile.ReadString(lang,'assault_short','Штурм');
      Label_common_ctf_short.Caption := iniFile.ReadString(lang,'ctf_short','');
      Label_common_nations_short.Caption := iniFile.ReadString(lang,'nations_short','Против.');
      Label_common_ctf30x30_short.Caption := iniFile.ReadString(lang,'ctf30x30_short','30x30');
      Label_common_epic_short.Caption := iniFile.ReadString(lang,'epic_short','Ген.ср.');
      Label_common_total.Caption := iniFile.ReadString(lang,'total','Сумммарно');
      Label_common_avg.Caption := iniFile.ReadString(lang,'avg','В среднем');
      Label_common_pressToSort.Caption := iniFile.ReadString(lang,'pressToSort','Нажмите для сортировки');
      Label_common_battles.Caption := iniFile.ReadString(lang,'wins','побед');
  end;

  ReplaysStatForm.Update;
  iniFile.Destroy;
end;

procedure LoadLanguages(sIn :String);
var s:String;
begin
ReplaysStatForm.cb_language_selector.Items.Clear;
while sIn <> '' do
begin
  s := Copy(sIn,0,Pos(',',sIn)-1);
  ReplaysStatForm.cb_language_selector.Items.Add(s);
  Delete(sIn,1,Length(s)+1);
end;
ReplaysStatForm.cb_language_selector.ItemIndex:=0;
end;


procedure TReplaysStatForm.FormCreate(Sender: TObject);
begin

_DEBUG:=false;// выставить в true для отладки

if not _DEBUG then
begin
  gp_options_remote_export.Visible:=false;
  cb_remote_export_enable.Enabled:=false;
  ed_remote_server_address.Enabled:=false;
  ed_remote_export_author.Enabled:=false;
end;

//ReportMemoryLeaksOnShutdown:=_DEBUG;
DragAcceptFiles(Handle,true);

OpenReplayDialog.Create(parent);
OpenReplayDialog.Options := [ofFileMustExist];
OpenReplayDialog.Filter := 'World of Tanks replays|*.wotreplay';
OpenReplayDialog.InitialDir:= 'D:\Games\World_of_Tanks\replays';

ClearControls();

ReplayPath.Clear;
Label_replaysList.Items.Clear;
Label_AllReplaysList.Items.Clear;
Label_favoriteReplaysList.Items.Clear;

sortByInc:=true;

if _DEBUG then// реплеи по версиям для отладки
  begin
    ReplayPath.Text:='D:\replays by version\1.9.0.wotreplay';
    SingleReplayAnalyse.Visible:=true;
    Label_replaysList.Items.Add('D:\replays by version\1.9.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.8.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.7.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.7.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.6.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.6.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.5.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.4.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.4.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.3.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.3.0.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.2.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.2.0.2.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.2.0.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.1.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.2.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.2.3.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.2.2.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.2.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.1.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.0.3.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.0.2.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.0.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\1.0.0.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.9.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.8.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.7.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.6.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.5.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.4.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.3.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.23.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.22.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.21.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.20.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.20.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.2.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.19.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.19.02.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.18.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.17.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.17.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.16.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.15.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.15.2.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.15.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.14.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.13.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.12.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.10.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.1.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.9.0.wotreplay');
    Label_replaysList.Items.Add('D:\replays by version\0.8.11.wotreplay');


  end;

if FileExists(ExtractFilePath(Application.ExeName)+'tanks.ini') then
  begin
    TanksINIFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
    MultiAdditional.Checked:=StrToBool(TanksINIFile.ReadString('options','Additional','false'));
    MultiToBegin.Checked:=StrToBool(TanksINIFile.ReadString('options','ToBegin','false'));
    MultiGroupPlayers.Checked:=StrToBool(TanksINIFile.ReadString('options','Group','false'));
    ed_AllReplaysFolder.Text:=TanksINIFile.ReadString('options','AllReplaysFolder','Укажите папку с реплеями -->');
    cb_AutoProcessReplays.Checked:=StrToBool(TanksINIFile.ReadString('options','AutoProcessReplays','false'));
    exportAllHTML:=StrToBool(TanksINIFile.ReadString('options','ExportAllHTML','false'));
    remoteExport:=StrToBool(TanksINIFile.ReadString('options','RemoteExport','false'));
    cb_remote_export_enable.Checked:=remoteExport;
    LoadLanguages(TanksINIFile.ReadString('options','Languages','ru,en'));
    language := TanksINIFile.ReadString('options','LangLast','ru');
    TanksINIFile.Free;
  end;
  cb_language_selector.ItemIndex := cb_language_selector.Items.IndexOf(language);
  LanguagesLoad(language);// Load language vars

if ((cb_AutoProcessReplays.Checked) AND (DirectoryExists(ed_AllReplaysFolder.Text))) then
  begin
  ProcessReplays();
  AnalyseType.ActivePageIndex:=2;
  end;

end;

procedure TReplaysStatForm.Additional(StrList:TStringList);
var
TempString:String;
j
:Integer;
begin
  j:=StrList.IndexOf('sS'+#39+'he_hits'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_hehits.Caption:=IntToStr(StrToInt(Label_m_hehits.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'tmenXP'+#39);
  TempString:=StrList[j+4];
  Delete(TempString,1,1);
  Label_m_pierced.Caption:=IntToStr(StrToInt(Label_m_pierced.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'potentialDamageReceived'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_potentialgot.Caption:=IntToStr(StrToInt(Label_m_potentialgot.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'damageAssistedRadio'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_support.Caption:=IntToStr(StrToInt(Label_m_support.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'damageAssistedTrack'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_tracks.Caption:=IntToStr(StrToInt(Label_m_tracks.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'mileage'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_mileage.Caption:=IntToStr(StrToInt(Label_m_mileage.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'lifetime'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_lifetime.Caption:=IntToStr(StrToInt(Label_m_lifetime.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'duration'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  if Pos('.',TempString)<>0 then TempString:=Copy(TempString,0,Pos('.',TempString)-1);
  Label_m_duration.Caption:=IntToStr(StrToInt(Label_m_duration.Caption)+Round(StrToInt(TempString)));

  Label_m_lifetimeproc.Caption:=IntToStr(StrToInt(Label_m_lifetimeproc.Caption)+Round(100*StrToInt(Label_m_lifetime.Caption)/StrToInt(Label_m_duration.Caption)));

  j:=StrList.IndexOf('sS'+#39+'autoRepairCost'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,1);
  Label_m_repair.Caption:=IntToStr(StrToInt(Label_m_repair.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'autoLoadCost'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,2);
  Label_m_ammo.Caption:=IntToStr(StrToInt(Label_m_ammo.Caption)+StrToInt(TempString));

  j:=StrList.IndexOf('sS'+#39+'autoEquipCost'+#39);
  TempString:=StrList[j+2];
  Delete(TempString,1,2);
  Label_m_equip.Caption:=IntToStr(StrToInt(Label_m_equip.Caption)+StrToInt(TempString));

  Label_m_battles.Caption:=IntToStr(StrToInt(Label_m_battles.Caption)+1);

end;

procedure TReplaysStatForm.AdditionalFinalize();
var
TempString1
:string;
battles
:Integer;
begin
battles:=StrToInt(Label_m_battles.Caption);
Label_m_battles.Caption:=Label_m_wins.Caption+'/'+Label_m_battles.Caption;
if Label_m_Shots.Caption<>'0' then Label_m_accuracy.Caption:=IntToStr(Round(100*StrToInt(Label_m_hits.Caption)/StrToInt(Label_m_Shots.Caption)))+'%' else Label_m_accuracy.Caption:='0';
if Label_m_hits.Caption<>'0' then Label_m_dmgpershot.Caption:=IntToStr(Round(StrToInt(Label_m_dmg.Caption)/StrToInt(Label_m_hits.Caption)+StrToInt(Label_m_hehits.Caption))) else Label_m_dmgpershot.Caption:='0';
if Label_m_shotsReceived.Caption<>'0' then Label_m_dmgpergot.Caption:=IntToStr(Round(StrToInt(Label_m_dmgrecieved.Caption)/StrToInt(Label_m_shotsReceived.Caption))) else Label_m_dmgpergot.Caption:='0';
if Label_m_shotsReceived.Caption<>'0' then Label_m_potencpershot.Caption:=IntToStr(Round(StrToInt(Label_m_potentialgot.Caption)/StrToInt(Label_m_shotsReceived.Caption))) else Label_m_potencpershot.Caption:='0';
if Label_m_dmgrecieved.Caption<>'0' then TempString1:=FloatToStr(StrToInt(Label_m_potentialgot.Caption)/StrToInt(Label_m_dmgrecieved.Caption)) else TempString1:='0';
Label_m_pottorecieved.Caption:=Copy(TempString1,0,Pos(',',TempString1)+3);
Label_m_profit.Caption:=IntToStr(StrToInt(Label_m_silver.Caption)-
  (StrToInt(Label_m_ammo.Caption))-(StrToInt(Label_m_repair.Caption))-
  (StrToInt(Label_m_equip.Caption)));
//подсчет средних значений
Label_m_battles.Caption:=Label_m_battles.Caption+'  ('+RoundTo(100*StrToFloat(Label_m_wins.Caption)/battles)+'%)';
Label_m_lifetimeproc.Caption:=RoundTo(StrToFloat(Label_m_lifetimeproc.Caption)/battles)+'%';
Label_m_Shots.Caption:=Label_m_Shots.Caption+' / '+RoundTo(StrToFloat(Label_m_Shots.Caption)/battles);
Label_m_hits.Caption:=Label_m_hits.Caption+' / '+RoundTo(StrToFloat(Label_m_hits.Caption)/battles);
Label_m_hehits.Caption:=Label_m_hehits.Caption+' / '+RoundTo(StrToFloat(Label_m_hehits.Caption)/battles);
Label_m_Pierced.Caption:=Label_m_Pierced.Caption+' / '+RoundTo(StrToFloat(Label_m_Pierced.Caption)/battles);
Label_m_dmg.Caption:=Label_m_dmg.Caption+' / '+RoundTo(StrToFloat(Label_m_dmg.Caption)/battles);
Label_m_dmgrecieved.Caption:=Label_m_dmgrecieved.Caption+' / '+RoundTo(StrToFloat(Label_m_dmgrecieved.Caption)/battles);
Label_m_shotsReceived.Caption:=Label_m_shotsReceived.Caption+' / '+RoundTo(StrToFloat(Label_m_shotsReceived.Caption)/battles);
Label_m_potentialgot.Caption:=Label_m_potentialgot.Caption+' / '+RoundTo(StrToFloat(Label_m_potentialgot.Caption)/battles);
Label_m_spotted.Caption:=Label_m_spotted.Caption+' / '+RoundTo(StrToFloat(Label_m_spotted.Caption)/battles);
Label_m_support.Caption:=Label_m_support.Caption+' / '+RoundTo(StrToFloat(Label_m_support.Caption)/battles);
Label_m_tracks.Caption:=Label_m_tracks.Caption+' / '+RoundTo(StrToFloat(Label_m_tracks.Caption)/battles);
Label_m_damaged.Caption:=Label_m_damaged.Caption+' / '+RoundTo(StrToFloat(Label_m_damaged.Caption)/battles);
Label_m_killed.Caption:=Label_m_killed.Caption+' / '+RoundTo(StrToFloat(Label_m_killed.Caption)/battles);
Label_m_capture.Caption:=Label_m_capture.Caption+' / '+RoundTo(StrToFloat(Label_m_capture.Caption)/battles);
Label_m_defend.Caption:=Label_m_defend.Caption+' / '+RoundTo(StrToFloat(Label_m_defend.Caption)/battles);
Label_m_lifetime.Caption:=Label_m_lifetime.Caption+' / '+RoundTo(StrToFloat(Label_m_lifetime.Caption)/battles);
Label_m_survive.Caption:=RoundTo(100*StrToFloat(Label_m_survive.Caption)/battles)+'%';
Label_m_mileage.Caption:=Label_m_mileage.Caption+' / '+RoundTo(StrToFloat(Label_m_mileage.Caption)/battles);
Label_m_exp.Caption:=Label_m_exp.Caption+' / '+RoundTo(StrToFloat(Label_m_exp.Caption)/battles);
Label_m_silver.Caption:=Label_m_silver.Caption+' / '+RoundTo(StrToFloat(Label_m_silver.Caption)/battles);
Label_m_ammo.Caption:=Label_m_ammo.Caption+' / '+RoundTo(StrToFloat(Label_m_ammo.Caption)/battles);
Label_m_repair.Caption:=Label_m_repair.Caption+' / '+RoundTo(StrToFloat(Label_m_repair.Caption)/battles);
Label_m_equip.Caption:=Label_m_equip.Caption+' / '+RoundTo(StrToFloat(Label_m_equip.Caption)/battles);
Label_m_profit.Caption:=Label_m_profit.Caption+' / '+RoundTo(StrToFloat(Label_m_profit.Caption)/battles);
//разбиение на км, минуты и т.д.
//0 - none; 1 - time; 2 - dist;

Format(Label_m_shots,0);
Format(Label_m_dmg,0);
Format(Label_m_accuracy,0);
Format(Label_m_dmgrecieved,0);
Format(Label_m_dmgpershot,0);
Format(Label_m_shotsReceived,0);
Format(Label_m_potentialgot,0);
Format(Label_m_dmgpergot,0);
Format(Label_m_potencpershot,0);
Format(Label_m_spotted,0);
Format(Label_m_profit,0);
Format(Label_m_exp,0);
Format(Label_m_lifetime,1);
Format(Label_m_defend,0);
Format(Label_m_survive,0);
Format(Label_m_capture,0);
Format(Label_m_equip,0);
Format(Label_m_repair,0);
Format(Label_m_ammo,0);
Format(Label_m_silver,0);
Format(Label_m_support,0);
Format(Label_m_tracks,0);
Format(Label_m_killed,0);
Format(Label_m_damaged,0);
Format(Label_m_mileage,2);
Format(Label_m_duration,0);
Format(Label_m_pierced,0);
Format(Label_m_hits,0);
Format(Label_m_wins,0);
Format(Label_m_hehits,0);

end;



procedure TReplaysStatForm.FormResize(Sender: TObject);
begin
SeriesGridExp.Refresh;
AlliesGrid.Refresh;
EnemiesGrid.Refresh;

AlliesGrid.Width:=Round((ReplaysStatForm.Width-52)/2);
EnemiesGrid.Left:=AlliesGrid.Width+7;
EnemiesGrid.Width:=AlliesGrid.Width;

Label_exp_enemies_pure.Left:=AlliesGrid.Width+7;

SingleReplay.Height:=Round(ReplaysStatForm.Height - StatusBar.Height - 25);
SingleReplayResults.Height:=SingleReplay.Height - 25;

Label_map_name.Top:=SingleReplay.Height - 105;Label_map.Top:=SingleReplay.Height - 105;
Label_battle_time.Top:=SingleReplay.Height - 90;Label_time.Top:=SingleReplay.Height - 90;
Label_battle_result.Top:=SingleReplay.Height - 75;Label_isWinner.Top:=SingleReplay.Height - 75;Label_battle_type.Top:=SingleReplay.Height - 75;Label_battleType.Top:=SingleReplay.Height - 75;


Label_double_click_help.Top:=SingleReplay.Height - 100;
Label_replayVersionXml.Top:=SingleReplay.Height - 80;
end;

procedure TReplaysStatForm.AboutClick(Sender: TObject);
begin
Application.CreateForm(TAboutBox, AboutBox);
AboutBox.Label_current_language.Caption := language;
AboutBox.ShowModal;
AboutBox.Destroy;
end;

procedure TReplaysStatForm.AlliesGridDblClick(Sender: TObject);
var
g:TGridCoord;
pnt:TPoint;
begin
 pnt:=AlliesGrid.ScreenToClient(Mouse.CursorPos);
 g:=AlliesGrid.MouseCoord(pnt.X,pnt.Y);
 if ((g.X=TAB_NICK) and (g.Y>=AlliesGrid.FixedRows)) and (AlliesGrid.Cells[TAB_PID,g.Y]<>'0')
 then
 begin
 ShellExecute(Application.Handle,PChar('open'),
              Pchar(Label_PathPlayer.Caption + AlliesGrid.Cells[TAB_PID,g.Y]),
              Nil,Nil,SW_SHOW);
 end;
 if ((g.X=TAB_CLAN) and (g.Y>=AlliesGrid.FixedRows)) and (AlliesGrid.Cells[TAB_CID,g.Y]<>'0')
 then
 begin
 ShellExecute(Application.Handle,PChar('open'),
                Pchar(Label_PathClan.Caption + AlliesGrid.Cells[TAB_CID,g.Y]),
              Nil,Nil,SW_SHOW);
 end;
end;

procedure TReplaysStatForm.SingleGridsFixedCellClick(Sender: TObject; ACol,
  ARow: Integer);
begin

  if ((ACOl>=TAB_FRAGS) AND (ACol<=TAB_TRACKS)) then
      begin
      SortCol(AlliesGrid,ACol);
      SortCol(EnemiesGrid,ACol);
      end;
end;


procedure TReplaysStatForm.EnemiesGridDblClick(Sender: TObject);
var
g:TGridCoord;
pnt:TPoint;
begin
 pnt:=EnemiesGrid.ScreenToClient(Mouse.CursorPos);
 g:=EnemiesGrid.MouseCoord(pnt.X,pnt.Y);
 if ((g.X=TAB_NICK) and (g.Y>=EnemiesGrid.FixedRows)) and (EnemiesGrid.Cells[TAB_PID,g.Y]<>'0')
 then
 begin
 ShellExecute(Application.Handle,PChar('open'),
              Pchar(Label_PathPlayer.Caption + EnemiesGrid.Cells[TAB_PID,g.Y]),
              Nil,Nil,SW_SHOW);
 end;
 if ((g.X=TAB_CLAN) and (g.Y>=EnemiesGrid.FixedRows)) and (EnemiesGrid.Cells[TAB_CID,g.Y]<>'0')
 then
 begin
 ShellExecute(Application.Handle,PChar('open'),
              Pchar(Label_PathClan.Caption + EnemiesGrid.Cells[TAB_CID,g.Y]),
              Nil,Nil,SW_SHOW);
 end;
end;

procedure TReplaysStatForm.SingleGridsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  hGrid: TStringGrid;
  Line1: string;
  Line2: string;
  ptr: integer;

//MinMax:Integer;
//TempString:String;

begin
hGrid:= (Sender as TStringGrid);
if ARow=0 then Exit;
if hGrid.Cells[ACol,ARow]='' then Exit;

    if ACol=TAB_ALIVE then
      begin
         if hGrid.Cells[ACol,ARow]='+' then hGrid.Canvas.Brush.Color:=RGB(216,255,216)
            else hGrid.Canvas.Brush.Color:=RGB(255,216,216);
         hGrid.Canvas.FillRect(rect);
         hGrid.Canvas.TextOut(Rect.Left+5, Rect.Top, hGrid.Cells[ACol, ARow]);
      end;


    if Pos(';',hGrid.Cells[ACol,ARow])<>0 then//если многострочна
      BEGIN//multistring
    ptr := Pos(';', hGrid.Cells[ACol, ARow]);
    if ptr > 0 then
    begin
        Line1 := Copy(hGrid.Cells[ACol, ARow], 1, ptr - 1);
        Line2 := Copy(hGrid.Cells[ACol, ARow], ptr + 1,
                      Length(hGrid.Cells[ACol,ARow]) - ptr);
    end
    else Line1 := hGrid.Cells[ACol, ARow];
    hGrid.Canvas.FillRect(Rect);
    hGrid.Canvas.TextOut(
              Rect.Left+2,//1я строка по ячейке вправо
              Rect.Top+2,//1я строка по ячейке вниз
              Line1);
      if ptr > 0 then
        hGrid.Canvas.TextOut(
              Rect.Left+3,//2я строка по ячейке вправо
              Rect.Top+3 - //2я строка по ячейке вниз
                             hGrid.Canvas.Font.Height + 7, Line2);
      END;//multistring end

end;

procedure TReplaysStatForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
OpenReplayDialog.Destroy;

if FileExists(ExtractFilePath(Application.ExeName)+'tanks.ini') then
  begin
  TanksINIFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
  TanksINIFile.WriteString('options','Additional',BoolToStr(MultiAdditional.Checked));
  TanksINIFile.WriteString('options','ToBegin',BoolToStr(MultiToBegin.Checked));
  TanksINIFile.WriteString('options','Group',BoolToStr(MultiGroupPlayers.Checked));
  TanksINIFile.WriteString('options','AllReplaysFolder',ed_AllReplaysFolder.Text);
  TanksINIFile.WriteString('options','AutoProcessReplays',BoolToStr(cb_AutoProcessReplays.Checked));
  TanksINIFile.WriteString('options','ExportAllHTML',BoolToStr(exportAllHTML));
  TanksINIFile.WriteString('options','RemoteExport',BoolToStr(remoteExport));
  TanksINIFile.WriteString('options','RemoteServerAddress',remoteServerAddress);
  TanksINIFile.WriteString('options','RemoteServerPort',remoteServerPort);
  TanksINIFile.WriteString('options','LangLast',cb_language_selector.Text);
  TanksINIFile.Free;
  end;
end;

procedure TReplaysStatForm.OpenReplayClick(Sender: TObject);
begin
  if OpenReplayDialog.Execute then
  begin
  ReplayPath.Text:= OpenReplayDialog.FileName;
  ReplaysStatForm.SingleReplayAnalyseClick(Sender);
  end;
end;

procedure TReplaysStatForm.WMDROPFILES(var Msg: TMessage);
var
  i, amount, size: integer;
  Filename: PChar;
  TempString:string;
begin
  SeriesGridExp.ColCount:=Label_replaysList.Items.Count+2;
  SeriesGridExp.RowCount:=18;

ClearStringGrid(SeriesGridExp);
ClearStringGrid(SeriesGridSupport);
ClearStringGrid(SeriesGridDamage);
ClearStringGrid(SeriesGridSupport);
ClearStringGrid(SeriesGridSummary);
ClearStringGrid(SeriesGridShots);

  Filename:='';
  Label_replaysList.Items.Clear;
  inherited;
  Amount := DragQueryFile(Msg.WParam, $FFFFFFFF, Filename, 255);

  for i := 0 to (Amount - 1) do
  begin
    size := DragQueryFile(Msg.WParam, i, nil, 0) + 1;
    Filename := StrAlloc(size);
    DragQueryFile(Msg.WParam, i, Filename, size);
    TempString:=ExtractFileExt(StrPas(Filename));

    if ((ExtractFileExt(StrPas(Filename))<>'.wotreplay') OR (Pos('temp',Filename)<>0)) then Continue;//пропуск НЕреплеев

    Label_replaysList.items.add(StrPas(Filename));
    StrDispose(Filename);
  end;
  DragFinish(Msg.WParam);

  if Label_replaysList.Items.Count=1 then
      begin
        ReplayPath.Text:=Label_replaysList.Items[0];
        ReplaysStatForm.SingleReplayAnalyseClick(parent);
        AnalyseType.Pages[0].Show;
      end
    else
      begin
        Label_replaysList.Visible:=true;
        AnalyseType.Pages[1].Show;
      end;

  Label_replaysList.Sorted:=true;

end;

Procedure GridToHtml(StrList:TStringList;hGrid:TStringGrid);
var
MinMax,i,j:integer;
ExpAm,TempString:String;
Alive:Bool;
CssClass,CssFonrClass:String;
begin
StrList.Add('<table border="2" align="center" cellspacing="0" rules="all">');//начало таблицы
//начало заголовков
for i := 0 to hGrid.FixedRows-1 do
  begin
    StrList.Add('<tr>');
    For j:=0 To hGrid.ColCount-1 Do
      begin
//CssClass,CssTClass:String;
      hGrid.Cells[hGrid.ColCount-2,1]:='';
      if hGrid.Cells[j,2]= ReplaysStatForm.Label_common_defeat.Caption then CssClass:='defeat';
      if hGrid.Cells[j,2]= ReplaysStatForm.Label_common_draw.Caption then CssClass:='standoff';
      if hGrid.Cells[j,2]= ReplaysStatForm.Label_common_win.Caption then CssClass:='win';
      if ((hGrid.Cells[j,i]<>ReplaysStatForm.Label_common_defeat.Caption) AND (hGrid.Cells[j,i]<>ReplaysStatForm.Label_common_draw.Caption) AND (hGrid.Cells[j,i]<>ReplaysStatForm.Label_common_win.Caption)) then
      CssClass:='grayed';//серые заголовки
      StrList.Add('<th class="'+CssClass+'">'+StringReplace(hGrid.Cells[j,i],';','<br>',[])+'</th>');
      end;
      StrList.Add('</tr>');

  end;
//конец заголовков
//начало данных
for i := hGrid.FixedRows to hGrid.RowCount-1 do
begin
StrList.Add('<tr>');

         case i mod 2 of
         0:  CssClass:='even';//четный
         1:  CssClass:='odd';//нечетный
         end;
      StrList.Add('<td class="'+CssClass+'"><a href="'+ReplaysStatForm.Label_PathPlayerSearch.Caption + hGrid.Cells[0,i]+'">'+hGrid.Cells[0,i]+'</a></td>');
      StrList.Add('<td class="'+CssClass+'">'+hGrid.Cells[1,i]+'</td>');


  for j := 2 to hGrid.ColCount-1 do
    begin
    if Pos(';',hGrid.Cells[j,i])<>0 then
        BEGIN
        if hGrid.Cells[j,i]='' then Continue;
        TempString:=hGrid.Cells[j,i];
        ExpAm:=Copy(TempString,0,Pos(';',TempString)-1);
        Delete(TempString,1,Pos(';',TempString));
        MinMax:=StrToInt(Copy(TempString,0,Pos(';',TempString)-1));
        Delete(TempString,1,Pos(';',TempString));
        Alive:=StrToBool(TempString);

          case Alive of
          false: CssClass:='died';//died
          true:  CssClass:='survived';//survived
          end;

          case MinMax of
          -1: CssFonrClass:=' class="min"';//min
          0:  CssFonrClass:='';            //avg
          1:  CssFonrClass:=' class="max"';//max
          end;
          StrList.Add('<td class="'+CssClass+'"><p'+CssFonrClass+'>'+ExpAm+'</p></td>');
        END
        else
        BEGIN
         case i mod 2 of
         0:  CssClass:='even';//четный
         1:  CssClass:='odd';//нечетный
         end;
         StrList.Add('<td class="'+CssClass+'">'+hGrid.Cells[j,i]+'</td>');
        END;
    CssClass:='';CssFonrClass:='';
    end;
StrList.Add('</tr>');

end;
  StrList.Add('</table>');  //конец таблицы

end;

Procedure TReplaysStatForm.ExportHTMLNew();
var
t:TStringList;
filename:String;
begin
if SeriesGridExp.Cells[1,4]='' then
begin
ShowMessage('Таблица пуста.'); Exit;
end;
DeleteFile(pCHar(ExtractFilePath(Application.ExeName)+'table.htm'));

t:=TStringList.Create;
t.Add('<html>');
t.Add('<head>');
t.Add('<meta http-equiv="Content-Type" content="text/html; charset=windows-1251">');
t.Add('<title>' + AnalyseType.Pages[1].Caption + '</title>');
t.Add('<style type="text/css">');
t.Add('a:link	{	text-decoration: none;}');
t.Add('.grayed 	{ background-color:#D2D2D2 }');//серый
t.Add('.win		{ background-color:#00FF00 }');//победа
t.Add('.standoff 	{ background-color:#FFFF00 }');//ничья
t.Add('.defeat 	{ background-color:#FF0000 }');//поражение
t.Add('.even		{ background-color:#EEEEDD }');//четная строка
t.Add('.odd		{ background-color:#DDDDC8 }');//нечетная строка
t.Add('.survived	{ background-color:#D8FFD8 }');//выжил
t.Add('.died		{ background-color:#FFD8D8 }');//помер
t.Add('p,td 		{ font-weight:bold }');//жирный текст в ячейках
t.Add('.min		{ color:#FF0000 }');//мин опыт
t.Add('.max		{ color:#008000 }');//макс опыт

t.Add('body {background-color:#D2D2D2;}');//вкладки начало
t.Add('.tabs {opacity:0;visibility:hidden;}');
t.Add('.tab {visibility:hidden;position:absolute;}');
t.Add('.tabs:target+.tab {opacity:1;visibility:visible;}');
t.Add('.tabsLink a{background-color:#478CFB;padding:5px;font:bold;color:#fff;text-decoration:none;-webkit-border-top-left-radius:10px;-webkit-border-top-right-radius:10px;');
t.Add('-moz-border-radius-topleft:10px;-moz-border-radius-topright:10px;border-top-left-radius:10px;border-top-right-radius:10px;}');
t.Add('</style>');
t.Add('</head>');
t.Add('<body>');

t.Add('<div class="tabsLink">');
t.Add('<a href="#exp">' + Multi.Pages[0].Caption + '</a>');
t.Add('<a href="#frg">' + Multi.Pages[1].Caption + '</a>');
t.Add('<a href="#dmg">' + Multi.Pages[2].Caption + '</a>');
t.Add('<a href="#sup">' + Multi.Pages[3].Caption + '</a>');
t.Add('<a href="#sht">' + Multi.Pages[4].Caption + '</a>');
t.Add('</div>');
t.Add('<a class="tabs" id="exp"></a>');
t.Add('<div class="tab" style="visibility:visible">');
  GridToHtml(t,SeriesGridExp);
t.Add('</div>');
t.Add('<a class="tabs" id="frg"></a>');
t.Add('<div class="tab">');
  GridToHtml(t,SeriesGridFrags);
t.Add('</div>');
t.Add('<a class="tabs" id="dmg"></a>');
t.Add('<div class="tab">');
  GridToHtml(t,SeriesGridDamage);
t.Add('</div>');
t.Add('<a class="tabs" id="sup"></a>');
t.Add('<div class="tab">');
  GridToHtml(t,SeriesGridSupport);
t.Add('</div>');
t.Add('<a class="tabs" id="sht"></a>');
t.Add('<div class="tab">');
  GridToHtml(t,SeriesGridShots);
t.Add('</div>');

t.Add('</body>');
t.Add('</html>');
//конец данных
DateTimeToString(filename,'yyyy.mm.dd hh.nn.ss',now());
filename:=ExtractFilePath(Application.ExeName)+'ExportAllies_'+filename+'.htm';
t.SaveToFile(filename);
t.Free;
      ShellExecute(Application.Handle,PChar('open'),
      Pchar(filename),
      Nil,Nil,SW_SHOW);
end;

procedure TReplaysStatForm.HTMLExportClick(Sender: TObject);
begin
  if SeriesGridExp.Cells[1,4]='' then
    begin
    ShowMessage('Таблица пуста.'); Exit;
    end;
  ExportHTMLNew();
end;



procedure WriteData(Grid:TStringGrid;SheetNum:Integer;SheetName:String);
var i,j: integer;
    FData: Variant;
    temp:string;
begin
//создаем вариантный массив
  FData:=VarArrayCreate([1,Grid.RowCount,1,Grid.ColCount],varVariant);
//заполняем массив данными из StringGrid
  for i:=1 to VarArrayHighBound(FData,1) do
    for j:=1 to VarArrayHighBound(FData,2) do
        BEGIN
         temp:=Grid.Cells[J-1,I-1];
         if Pos(';',Grid.Cells[J-1,I-1])<>0 then
            begin
              if I=1 then
                  FData[i,j]:=StringReplace(Grid.Cells[J-1,I-1],';',' ',[rfReplaceAll])//для 1й строки
              else
                  FData[i,j]:=Copy(Grid.Cells[J-1,I-1],0,Pos(';',Grid.Cells[J-1,I-1])-1)//для 2+ строк
            end
          else
          FData[i,j]:=Grid.Cells[J-1,I-1];//любая ячейка БЕЗ ';'
        END;
Sheet:=ExcelApp.Workbooks[1].WorkSheets[SheetNum];
Sheet.Activate;
Sheet.Name:=SheetName;
//выделяем диапазон для вставки данных
Range:=Sheet.Range[Sheet.Cells[1,1],Sheet.Cells[VarArrayHighBound(FData,1),VarArrayHighBound(FData,2)]];
//вставляем данные
Range.Value:=FData;
end;

procedure TReplaysStatForm.XlsExportClick(Sender: TObject);
const
  xlWBATWorksheet = -4167;
begin
if SeriesGridExp.Cells[1,4]='' then
begin
ShowMessage('Таблица пуста.');
Exit;
end;
SeriesGridExp.Cells[SeriesGridExp.ColCount-2,1]:='';
SeriesGridFrags.Cells[SeriesGridExp.ColCount-2,1]:='';
SeriesGridDamage.Cells[SeriesGridExp.ColCount-2,1]:='';
SeriesGridSupport.Cells[SeriesGridExp.ColCount-2,1]:='';
SeriesGridShots.Cells[SeriesGridExp.ColCount-2,1]:='';

ExcelApp  := CreateOleObject('Excel.Application');
ExcelApp.Workbooks.Add(xlWBATWorksheet);
ExcelApp.Worksheets.Add;
ExcelApp.Worksheets.Add;
ExcelApp.Worksheets.Add;
ExcelApp.Worksheets.Add;
ExcelApp.Worksheets.Add;

WriteData(SeriesGridExp,1,Multi.Pages[0].Caption);
WriteData(SeriesGridFrags,2,Multi.Pages[1].Caption);
WriteData(SeriesGridDamage,3,Multi.Pages[2].Caption);
WriteData(SeriesGridSupport,4,Multi.Pages[3].Caption);
WriteData(SeriesGridShots,5,Multi.Pages[4].Caption);
WriteData(SeriesGridSummary,6,Multi.Pages[5].Caption);

ExcelApp.Workbooks[1].WorkSheets[1].Activate;

ExcelApp.ActiveWorkbook.SaveCopyAs(ExtractFilePath(Application.ExeName)+'table.xls');
ExcelApp.DisplayAlerts := False;
ExcelApp.Visible:=True;

end;






function GetBattleJSON(JSONString:String):TStringArray;
var
  JSON,ResultJSON:TJSONObject;
  t:String;
begin
try
  JSON:=TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
  if Assigned(JSON) then
  begin
    SetLength(Result,2);
    ResultJSON := TJSONObject.Create();
    if not JSON.TryGetValue('clientVersionFromXml',t) then t:='error';
    ResultJSON.AddPair('clientVersionFromXml',t);
    if not JSON.TryGetValue('clientVersionFromExe',t) then t:='error';
    ResultJSON.AddPair('clientVersionFromExe',t);
    if not JSON.TryGetValue('mapDisplayName',t) then t:='error';
    ResultJSON.AddPair('mapDisplayName',t);
    if not JSON.TryGetValue('gameplayID',t) then t:='error';
    ResultJSON.AddPair('gameplayID',t);
    if not JSON.TryGetValue('regionCode',t) then t:='error';
    ResultJSON.AddPair('regionCode',t);
    if not JSON.TryGetValue('playerID',t) then t:='error';
    ResultJSON.AddPair('playerID',t);
    if not JSON.TryGetValue('serverName',t) then t:='error';
    ResultJSON.AddPair('serverName',t);

    Result[1]:=JSON.Get('vehicles').ToJSON;

    if not JSON.TryGetValue('dateTime',t) then t:='error';
    ResultJSON.AddPair('dateTime',t);
    if not JSON.TryGetValue('mapName',t) then t:='error';
    ResultJSON.AddPair('mapName',t);
    if not JSON.TryGetValue('playerName',t) then t:='error';
    ResultJSON.AddPair('playerName',t);
    if not JSON.TryGetValue('battleType',t) then t:='error';
    ResultJSON.AddPair('battleType',t);
    if not JSON.TryGetValue('playerName',t) then t:='error';
    ResultJSON.AddPair('playerName',t);
    if not JSON.TryGetValue('playerVehicle',t) then t:='error';
    ResultJSON.AddPair('playerVehicle',t);

    t:=ResultJSON.ToString;
    JSON.Destroy;
    ResultJSON.Destroy;

  end
  else begin ShowMessage('Cant parse battle 1');Exit;end;
except
   begin ShowMessage('Cant parse battle 2');Exit;end;
end;

  Result[0]:=t;
end;

function GetAuthorData(personal:String;const replayVersion:integer):TJSONObject;
var
t:String;
JSON:TJSONObject;

begin
if replayVersion>=980 then
  begin
    JSON:=TJSONObject.ParseJSONValue(personal) as TJSONObject;
    if Assigned(JSON) then
      begin
      personal:=JSON.Pairs[0].JsonValue.ToString;
      JSON.Destroy;
      end
      else begin ShowMessage('Cant parse author 1');Exit;end;
  end;

JSON:=TJSONObject.ParseJSONValue(personal) as TJSONObject;
if Assigned(JSON) then
begin
  if replayVersion=0811 then
  begin//переименование старых переменных в новые
    if not JSON.TryGetValue('heHitsReceived',t) then t:='error'
    else begin JSON.RemovePair('heHitsReceived'); JSON.AddPair('explosionHitsReceived',t); end;

    if not JSON.TryGetValue('piercedReceived',t) then t:='error'
    else begin JSON.RemovePair('piercedReceived'); JSON.AddPair('piercingsReceived',t); end;

    if not JSON.TryGetValue('shotsReceived',t) then t:='error'
    else begin JSON.RemovePair('shotsReceived'); JSON.AddPair('directHitsReceived',t); end;

    if not JSON.TryGetValue('pierced',t) then t:='error'
    else begin JSON.RemovePair('pierced'); JSON.AddPair('piercings',t); end;

    if not JSON.TryGetValue('hits',t) then t:='error'
    else begin JSON.RemovePair('hits'); JSON.AddPair('directHits',t); end;

    if not JSON.TryGetValue('he_hits',t) then t:='error'
    else begin JSON.RemovePair('he_hits'); JSON.AddPair('explosionHits',t); end;

    if not JSON.TryGetValue('potentialDamageReceived',t) then t:='error'
    else begin JSON.RemovePair('potentialDamageReceived'); JSON.AddPair('damageBlockedByArmor',t); end;

    if not JSON.TryGetValue('thits',t) then t:='error'
    else begin JSON.RemovePair('thits'); JSON.AddPair('directTeamHits',t); end;
  end;
end
else begin ShowMessage('Cant parse author 2');Exit;end;
Result:= JSON;
end;

function GetDataFromJSON(const JSONString:String; out battleJSON:TJSONObject; out detailedResults: TStringArray):boolean;
var
common,s:string;
details:TStringArray;
JSON,tJSON:TJSONObject;
begin
  try
    begin
      SetLength(details,3);
      JSON:=TJSONObject.ParseJSONValue(JSONString) as TJSONObject;
      if Assigned(JSON) then
      begin
        if not JSON.TryGetValue('arenaUniqueID',s) then s:='error'
        else battleJSON.AddPair('arenaUniqueID',s);
      if not JSON.TryGetValue('personal',tJSON) then details[DETAILED_RESULTS_PERSONAL]:='error'
        else details[DETAILED_RESULTS_PERSONAL]:=tJSON.ToJSON;
        if not JSON.TryGetValue('vehicles',tJSON) then details[DETAILED_RESULTS_VEHICLES]:='error'
        else details[DETAILED_RESULTS_VEHICLES]:=tJSON.ToJSON;
        if not JSON.TryGetValue('players',tJSON) then details[DETAILED_RESULTS_PLAYERS]:='error'
        else details[DETAILED_RESULTS_PLAYERS]:=tJSON.ToJSON;
        if not JSON.TryGetValue('common',tJSON) then common:='error'
        else common:=tJSON.ToJSON;
        JSON.Destroy;
      end;
    end
  except
    begin ShowMessage('Cant parse json2 1');Result:=false;end;
  end;
//////////////////////////////////////////////////////////
  try
    begin
        JSON:=TJSONObject.ParseJSONValue(common) as TJSONObject;
        if Assigned(JSON) then
        begin
          if not JSON.TryGetValue('division',s) then s:='error'
          else battleJSON.AddPair('division',s);
          if not JSON.TryGetValue('finishReason',s) then s:='error'
          else battleJSON.AddPair('finishReason',s);
          if not JSON.TryGetValue('guiType',s) then s:='error'
          else battleJSON.AddPair('guiType',s);
          if not JSON.TryGetValue('arenaCreateTime',s) then s:='error'
          else battleJSON.AddPair('arenaCreateTime',s);
          if not JSON.TryGetValue('duration',s) then s:='error'
          else battleJSON.AddPair('duration',s);
          if not JSON.TryGetValue('arenaTypeID',s) then s:='error'
          else battleJSON.AddPair('arenaTypeID',s);
          if not JSON.TryGetValue('gasAttackWinnerTeam',s) then s:='error'
          else battleJSON.AddPair('gasAttackWinnerTeam',s);
          if not JSON.TryGetValue('winnerTeam',s) then s:='error'
          else battleJSON.AddPair('winnerTeam',s);
          if not JSON.TryGetValue('vehLockMode',s) then s:='error'
          else battleJSON.AddPair('vehLockMode',s);
          if not JSON.TryGetValue('bonusType',s) then s:='error'
          else battleJSON.AddPair('bonusType',s);
          JSON.Destroy;
        end;
    end
  except
    begin ShowMessage('Cant parse common');Result:=false;end;
  end;
  detailedResults:=details;
  Result:=true;
end;

function MergeJSON(JSONtoMerge:String):String;
var
s,t,ext:String;
int1,int2:Integer;
bl1, bl2 :boolean;
fl1, fl2 :single;

newJSON
 : TJSONObject;

oldJSONArr
: TJSONArray;

oldJSONVal: TJSONValue;

JSONItem
: TJSONValue;

begin
  newJSON := TJSONObject.Create as TJSONObject;

  oldJSONArr := TJSONObject.ParseJSONValue(JSONtoMerge) as TJSONArray;
  for oldJSONVal in oldJSONArr do
  begin
    for JSONItem in TJSONArray(oldJSONVal) do
    begin
      s:= TJSONPair(JSONItem).JsonString.Value;
      t:= TJSONPair(JSONItem).JsonValue.Value;

      if not newJSON.TryGetValue(s,ext) then
      begin
         newJSON.AddPair(s,t);
      end
      else
      begin
        if Pos(s,'killerID,accountDBID') > 0 then
        Continue;

        if ((TryStrToInt(ext,int1) AND (TryStrToInt(t,int2)))) then
          t := IntToStr(int1 + int2)
        else if ((TryStrToBool(ext,bl1) AND (TryStrToBool(t,bl2)))) then
          t := BoolToStr(bl1 AND bl2)
        else if ((TryStrToFloat(ext,fl1) AND (TryStrToFloat(t,fl2)))) then
          t := FloatToStrF(fl1 + fl2,ffGeneral,3,3)
        else
          t := t + ext;

        newJSON.RemovePair(s);
        newJSON.AddPair(s,t);


      end;

    end;
  end;
  oldJSONArr.Destroy;
  Result := newJSON.ToString;
  newJSON.Destroy;


end;

function GetVehiclesData(const vehiclesJSON,playersJSON:TJSONObject;const details,frags:String):TJSONObject;
var
  i,j:integer;
  tmp,tempJSONObject,detailsJSON,tempDetails,newJSON,fragsJSON:TJSONObject;
  currentDetailsValue,currentJSONKey,currentJSONValue,tempKey:String;
  tempValue:TJSONValue;
  tempJSONArray:TJSONArray;
  s,currName,currFakeName,currPlayer:String;

begin

try
  detailsJSON:=TJSONObject.ParseJSONValue(details) as TJSONObject;
  fragsJSON:=fragsJSON.ParseJSONValue(frags) as TJSONObject;
except
  begin ShowMessage('Cant parse details');Exit;end;
end;

  newJSON:= TJSONObject.Create;
  for i := 0 to vehiclesJSON.Count-1 do
    begin

      currentJSONKey:=TrimQuotes(vehiclesJSON.Pairs[i].JsonString.ToJSON);
      currentJSONValue:=vehiclesJSON.Pairs[i].JsonValue.ToJSON;

      tempJSONObject:=TJSONObject.ParseJSONValue(currentJSONValue) as TJSONObject;
      tempJSONArray:= TJSONArray.Create;
      tmp:=TJSONObject.Create();
      tmp.AddPair('code',currentJSONKey);
      for j := 0 to tempJSONObject.Count-1 do
      begin
        tempKey:=TrimQuotes(tempJSONObject.Pairs[j].JsonString.ToJSON);
        tempValue:=tempJSONObject.Pairs[j].JsonValue;
        if tempKey = 'vehicleType' then
          tmp.AddPair(TJSONPair.Create(tempKey,DecodeTechs(TrimQuotes(tempValue.ToJSON))))
        else
          tmp.AddPair(TJSONPair.Create(tempKey,tempValue));
      end;

      if tmp.TryGetValue('fakeName',currFakeName) then// another wg's stupidity fix 1.8.0
      begin
        currPlayer := MergeJSON(playersJSON.GetValue(currFakeName).ToJSON);
      end
      else
      begin
        currName:=TrimQuotes(tmp.GetValue('name').ToString);
        currPlayer := MergeJSON(playersJSON.GetValue(currName).ToJSON);
      end;

      tempDetails:=TJSONObject.ParseJSONValue(currPlayer) as TJSONObject;
      for j := 0 to tempDetails.Count-1 do
        begin
          tempKey:=TrimQuotes(tempDetails.Pairs[j].JsonString.ToString);
          tempValue:=tempDetails.Pairs[j].JsonValue;
          tmp.AddPair(tempKey,tempValue);
        end;

      s := detailsJSON.GetValue(currentJSONKey).ToJSON;
      if s[1] = '[' then
        currentDetailsValue := MergeJSON(s)
      else currentDetailsValue := s;

//      currentDetailsValue := MergeJSON(detailsJSON.GetValue(currentJSONKey).ToJSON);
      tempDetails:=TJSONObject.ParseJSONValue(currentDetailsValue) as TJSONObject;
      for j := 0 to tempDetails.Count-1 do
        begin
          tempKey:=TrimQuotes(tempDetails.Pairs[j].JsonString.ToJSON);
          tempValue:=tempDetails.Pairs[j].JsonValue;
          tmp.AddPair(TJSONPair.Create(tempKey,tempValue));
        end;
      currentDetailsValue:=fragsJSON.GetValue(currentJSONKey).ToJSON;
      tempDetails:=TJSONObject.ParseJSONValue(currentDetailsValue) as TJSONObject;
      for j := 0 to tempDetails.Count-1 do
        begin
          tempKey:=TrimQuotes(tempDetails.Pairs[j].JsonString.ToJSON);
          tempValue:=tempDetails.Pairs[j].JsonValue;
          tmp.AddPair(TJSONPair.Create(tempKey,tempValue));
        end;
      tempJSONArray.Add(tmp);
      newJSON.AddPair(currentJSONKey,tempJSONArray);
    end;

Result:=newJSON;
end;

function GetPlayersData(players:String):TJSONObject;
var
i,j:integer;
playersJSON,currJSON,sortedJSON:TJSONObject;
tempJSONObject:TJSONObject;
tempJSONArray:TJSONArray;
currKey,currValue,currName:String;
begin
try
  playersJSON:=TJSONObject.ParseJSONValue(players) as TJSONObject;
except begin ShowMessage('Cant parse players');Exit;end;
end;
sortedJSON:=TJSONObject.Create();
for i := 0 to playersJSON.Count-1 do
  begin
    currKey:=TrimQuotes(playersJSON.Pairs[i].JsonString.ToJSON);
    currValue:=playersJSON.Pairs[i].JsonValue.ToJSON;

    tempJSONArray:=TJSONArray.Create();
    tempJSONObject:=TJSONObject.Create();
    tempJSONObject.AddPair('accountDBID',currKey);
    try
      currJSON:=TJSONObject.ParseJSONValue(currValue) as TJSONObject;
    except begin ShowMessage('Cant parse current player');Exit;end;
    end;
    for j := 0 to currJSON.Count-1 do
      begin
        tempJSONObject.AddPair(TrimQuotes(currJSON.Pairs[j].JsonString.ToJSON),currJSON.Pairs[j].JsonValue);
      end;
    currName:=TrimQuotes(tempJSONObject.GetValue('name').ToString);
    tempJSONObject.RemovePair('name');
    tempJSONArray.Add(tempJSONObject);

    sortedJSON.AddPair(currName,tempJSONArray);
  end;
playersJSON.Free;
result:=sortedJSON;
end;

function FinalizeVehicles(const JSON:TJSONObject):TJSONObject;
var
i:Integer;

currentValue,currentKey,currentName:String;

newJSON,tempJSON:TJSONObject;
begin
newJSON:=TJSONObject.Create;
for i := 0 to JSON.Count-1 do
  begin
    currentKey:=TrimQuotes(JSON.Pairs[i].JsonString.ToString);
    currentValue:=DeleteSquareBrakets(JSON.GetValue(currentKey).ToJSON);
    tempJSON:=TJSONObject.ParseJSONValue(currentValue) as TJSONObject;
    currentName:=TrimQuotes(tempJSON.GetValue('name').ToString);
    newJSON.AddPair(currentName,tempJSON);
   end;
Result:=newJSON;
end;


function FillArrays(const JSON:TJSONObject; out PlayersArray:TString2Array):bool;
var
  i:integer;
  tempJson:TJSONObject;
  v : TJSONValue;
  s:String;
begin
  SetLength(PlayersArray,JSON.Count,ARR_WIDTH);
  for i := 0 to JSON.Count-1 do
    begin
      tempJson:=TJSONObject.ParseJSONValue(JSON.Pairs[i].JsonValue.ToString) as TJSONObject;
      PlayersArray[i,ARR_CODE]:=TrimQuotes(tempJson.GetValue('code').ToString);
      PlayersArray[i,ARR_TANK]:=TrimQuotes(tempJson.GetValue('vehicleType').ToString);

      if tempJson.TryGetValue('deathCount',s) then
        if TrimQuotes(s) = '0' then PlayersArray[i,ARR_ALIVE]:='true' else PlayersArray[i,ARR_ALIVE]:='false'
      else
      begin
        if (tempJson.TryGetValue('isAlive',v)) then
        begin
          if (v is TJSONTrue) then
            PlayersArray[i,ARR_ALIVE]:='true'
          else PlayersArray[i,ARR_ALIVE]:='false';
        end;

      end;

      PlayersArray[i,ARR_NICK]:=TrimQuotes(tempJson.GetValue('name').ToString);
      PlayersArray[i,ARR_IGR_TYPE]:=tempJson.GetValue('igrType').ToString;
      PlayersArray[i,ARR_CLAN]:=TrimQuotes(tempJson.GetValue('clanAbbrev').ToString);
      PlayersArray[i,ARR_TEAM]:=tempJson.GetValue('team').ToString;
      PlayersArray[i,ARR_MEDALS]:=tempJson.GetValue('events').ToString;
      PlayersArray[i,ARR_ISTK]:=tempJson.GetValue('isTeamKiller').ToString;
      PlayersArray[i,ARR_FRAGS]:=TrimQuotes(tempJson.GetValue('kills').ToString);
      PlayersArray[i,ARR_EXP]:=TrimQuotes(tempJson.GetValue('xp').ToString);
      PlayersArray[i,ARR_PID]:=TrimQuotes(tempJson.GetValue('accountDBID').ToString);
      PlayersArray[i,ARR_CID]:=TrimQuotes(tempJson.GetValue('clanDBID').ToString);
      PlayersArray[i,ARR_DAMAGE]:=TrimQuotes(tempJson.GetValue('damageDealt').ToString);
      PlayersArray[i,ARR_RADIO]:=TrimQuotes(tempJson.GetValue('damageAssistedRadio').ToString);
      PlayersArray[i,ARR_TRACKS]:=TrimQuotes(tempJson.GetValue('damageAssistedTrack').ToString);
      PlayersArray[i,ARR_SHOTS]:=TrimQuotes(tempJson.GetValue('shots').ToString);

      if tempJson.TryGetValue('directHits',s) then
        PlayersArray[i,ARR_HITS]:=TrimQuotes(s)
      else
        if tempJson.TryGetValue('hits',s) then
          PlayersArray[i,ARR_HITS]:=TrimQuotes(s);

      if tempJson.TryGetValue('directHits',s) then
        PlayersArray[i,ARR_PENETR]:=TrimQuotes(s)
      else
        if tempJson.TryGetValue('pierced',s) then
          PlayersArray[i,ARR_PENETR]:=TrimQuotes(s);


      if tempJson.TryGetValue('explosionHits',s) then
        PlayersArray[i,ARR_EXPHITS]:=TrimQuotes(s)
      else
        if tempJson.TryGetValue('he_hits',s) then
          PlayersArray[i,ARR_EXPHITS]:=TrimQuotes(s);

      tempJson.Free;
    end;
Result:=true;
end;

function CheckWin(const vehiclesJSON:TJSONObject; const playerName,winnerTeam:string):TStringArray;
var
tempJson:TJSONObject;
begin
tempJson:=TJSONObject.ParseJSONValue(vehiclesJSON.GetValue(playerName).ToString) as TJSONObject;
Result[0]:=tempJson.GetValue('team').ToString;
if Result[0] = winnerTeam then Result[1]:='true' else Result[1]:='false';
tempJson.Free;
end;

procedure TReplaysStatForm.SingleReplayAnalyseClick(Sender: TObject);
var
i,j,k,l
:integer;

TempString,winnerTeam,playerName,mapDisplayName,gameplayID
:String;
isWinner:TStringArray;


currentJSONData,detailedResults:TStringArray;
PlayersArray:TString2Array;
replayVersion:integer;

battleJSON,vehiclesJSON,authorJSON,playersJSON:TJSONObject;

Fr,time:Int64;Dt:Extended;//время работы процедуры

begin
QueryPerformanceFrequency(Fr);
QueryPerformanceCounter(time);

AnalyseType.ActivePageIndex:=0;

TanksINIFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');

  if not FileExists(ReplayPath.Text) then
    if OpenReplayDialog.Execute then ReplayPath.Text := OpenReplayDialog.FileName else begin Beep(400,200); Exit; end;

  SetLength(PlayersArray,0,0);//clear player array
  ClearStringGrid(AlliesGrid);
  ClearStringGrid(EnemiesGrid);
  ZeroLables();

  currentJSONData:=GetJSONStrings(ReplayPath.Text);

  battleJSON:= TJSONObject.ParseJSONValue(currentJSONData[DETAILED_RESULTS_PERSONAL]) as TJSONObject;

  battleJSON.TryGetValue('playerName',playerName);//берем имя
  battleJSON.TryGetValue('clientVersionFromXml',TempString);
  Label_replayVersionXml.Caption:=TempString;
  battleJSON.TryGetValue('clientVersionFromExe',TempString);
  TempString:=StringReplace(TempString,' ','',[rfReplaceAll]);
  TempString:=StringReplace(TempString,',','',[rfReplaceAll]);
  TempString:=StringReplace(TempString,'.','',[rfReplaceAll]);
  TempString:=StringReplace(TempString,'08100','0810',[rfReplaceAll]);
  TempString:=StringReplace(TempString,'08110','0811',[rfReplaceAll]);
  replayVersion:=StrToInt(TempString);
  battleJSON.TryGetValue('vehicles',vehiclesJSON);//берем vehicles - участники боя - кто загружался
  battleJSON.RemovePair('vehicles');              //удаляем их их общей инфы боя

  if ((replayVersion<900) AND (replayVersion<>811)) then begin ShowMessage('Реплеи WoT версий 0.8.10 и ниже этой версией RS не поддерживаются. Скачайте соответствующую версию с форума WoT.'); Exit; end;

  currentJSONData[1] := StringReplace(currentJSONData[1], 'Infinity', '0', [ rfReplaceAll ]); // хз что хотел сказать вг значением "бесконечность".

  GetDataFromJSON(currentJSONData[1],battleJSON,detailedResults);

  battleJSON.TryGetValue('winnerTeam',winnerTeam);

  authorJSON:=GetAuthorData(detailedResults[DETAILED_RESULTS_PERSONAL],replayVersion);
  playersJSON:=GetPlayersData(detailedResults[DETAILED_RESULTS_PLAYERS]);
  //TempString:=playersJSON.ToString;

  vehiclesJSON:=GetVehiclesData(vehiclesJSON,playersJSON,detailedResults[DETAILED_RESULTS_VEHICLES],currentJSONData[3]);

  vehiclesJSON:=FinalizeVehicles(vehiclesJSON);
  FillArrays(vehiclesJSON,PlayersArray);
  SetLength(isWinner,2);
  isWinner:=CheckWin(vehiclesJSON,playerName,winnerTeam);// 0 - authorTeam
                                                         // 1 - isWinner

    mapDisplayName:=TrimQuotes(battleJSON.GetValue('mapDisplayName').ToString);
    gameplayID:=TrimQuotes(battleJSON.GetValue('gameplayID').ToString);
      if gameplayID='domination' then Label_map.Caption:=mapDisplayName+', '+Label_common_domination.Caption;
      if gameplayID='assault' then Label_map.Caption:=mapDisplayName+', '+Label_common_assault.Caption;
      if gameplayID='ctf' then Label_map.Caption:=mapDisplayName+', '+Label_common_ctf.Caption;
      if gameplayID='nations' then Label_map.Caption:=mapDisplayName+', ' +Label_common_nations.Caption;
      if gameplayID='assault2' then Label_map.Caption:=mapDisplayName+', ' +Label_common_assault2.Caption;
      if gameplayID='ctf30x30' then Label_map.Caption:=mapDisplayName+', ' +Label_common_ctf30.Caption;
      if gameplayID='epic' then Label_map.Caption:=mapDisplayName+', ' +Label_common_epic.Caption;

    Label_time.Caption:=TrimQuotes(battleJSON.GetValue('dateTime').ToString);

      case StrToInt(TrimQuotes(battleJSON.GetValue('arenaTypeID').ToString)) of
      1: Label_battleType.Caption:=Label_common_random.Caption;
      2: Label_battleType.Caption:=Label_common_training.Caption;
      3: Label_battleType.Caption:=Label_common_clan.Caption;
      4: Label_battleType.Caption:=Label_common_2.Caption;
      5: Label_battleType.Caption:=Label_common_3.Caption;
      6: Label_battleType.Caption:=Label_common_4.Caption;
      7: Label_battleType.Caption:=Label_common_company.Caption;
      8: Label_battleType.Caption:=Label_common_hist.Caption;
      9: Label_battleType.Caption:=Label_common_5.Caption;
      10: Label_battleType.Caption:=Label_common_1.Caption;
      else Label_battleType.Caption:=Label_common_unknown.Caption;
      end;

          if isWinner[1]='false' then Label_isWinner.Caption:=Label_common_defeat.Caption;
          if winnerTeam = '0' then Label_isWinner.Caption:=Label_common_draw.Caption;
          if isWinner[1]='true' then Label_isWinner.Caption:=Label_common_win.Caption;

  k:=AlliesGrid.FixedRows;
  l:=EnemiesGrid.FixedRows;
{
  GetMinMaxP(ARR_EXP,isWinner[0]);
  GetMinMaxP(ARR_DAMAGE,isWinner[0]);
  GetMinMaxP(ARR_RADIO,isWinner[0]);
  GetMinMaxP(ARR_TRACKS,isWinner[0]);
}
  i:=Round(Length(PlayersArray)/2)+1;
  AlliesGrid.RowCount:=i;
  EnemiesGrid.RowCount:=i;

  for i := 0 to Length(PlayersArray)-1 do
  begin
    if PlayersArray[i,ARR_TEAM]='' then Continue;
    if PlayersArray[i,ARR_TEAM]=isWinner[0] then
      Begin
      PlayersArray[i,ARR_TEAM]:='true';
          AlliesGrid.Cells[TAB_SQUAD,k]:=PlayersArray[i,ARR_SQUAD];

          AlliesGrid.Cells[TAB_NICK,k]:=PlayersArray[i,ARR_NICK];
          AlliesGrid.Cells[TAB_CLAN,k]:=PlayersArray[i,ARR_CLAN];
          AlliesGrid.Cells[TAB_TANK,k]:=PlayersArray[i,ARR_TANK];
          if PlayersArray[i,ARR_ALIVE]='true' then AlliesGrid.Cells[TAB_ALIVE,k]:='+' else AlliesGrid.Cells[TAB_ALIVE,k]:='-';
          if PlayersArray[i,ARR_FRAGS]='0' then AlliesGrid.Cells[TAB_FRAGS,k]:='' else AlliesGrid.Cells[TAB_FRAGS,k]:=PlayersArray[i,ARR_FRAGS];
          AlliesGrid.Cells[TAB_EXP,k]:=PlayersArray[i,ARR_EXP];
          AlliesGrid.Cells[TAB_DAMAGE,k]:=PlayersArray[i,ARR_DAMAGE];
          AlliesGrid.Cells[TAB_PID,k]:=PlayersArray[i,ARR_PID];
          AlliesGrid.Cells[TAB_CID,k]:=PlayersArray[i,ARR_CID];
          AlliesGrid.Cells[TAB_RADIO,k]:=PlayersArray[i,ARR_RADIO];
          AlliesGrid.Cells[TAB_TRACKS,k]:=PlayersArray[i,ARR_TRACKS];
        k:=k+1;
       End
    else
      Begin
      PlayersArray[i,ARR_TEAM]:='false';
          EnemiesGrid.Cells[TAB_SQUAD,l]:=PlayersArray[i,ARR_SQUAD];
          EnemiesGrid.Cells[TAB_NICK,l]:=PlayersArray[i,ARR_NICK];
          EnemiesGrid.Cells[TAB_CLAN,l]:=PlayersArray[i,ARR_CLAN];
          EnemiesGrid.Cells[TAB_TANK,l]:=PlayersArray[i,ARR_TANK];
          if PlayersArray[i,ARR_ALIVE]='true'  then EnemiesGrid.Cells[TAB_ALIVE,l]:='+' else EnemiesGrid.Cells[TAB_ALIVE,l]:='-';
          if PlayersArray[i,ARR_FRAGS]='0' then EnemiesGrid.Cells[TAB_FRAGS,l]:='' else EnemiesGrid.Cells[TAB_FRAGS,l]:=PlayersArray[i,ARR_FRAGS];
          EnemiesGrid.Cells[TAB_EXP,l]:=PlayersArray[i,ARR_EXP];
          EnemiesGrid.Cells[TAB_DAMAGE,l]:=PlayersArray[i,ARR_DAMAGE];
          EnemiesGrid.Cells[TAB_PID,l]:=PlayersArray[i,ARR_PID];
          EnemiesGrid.Cells[TAB_CID,l]:=PlayersArray[i,ARR_CID];
          EnemiesGrid.Cells[TAB_RADIO,l]:=PlayersArray[i,ARR_RADIO];
          EnemiesGrid.Cells[TAB_TRACKS,l]:=PlayersArray[i,ARR_TRACKS];
        l:=l+1;
     End;
  end;

for j := 0 to TAB_EXP-1 do AlliesGrid.ColWidths[j]:=GetColMaxWidth(AlliesGrid,j);
for j := 0 to TAB_EXP-1 do EnemiesGrid.ColWidths[j]:=GetColMaxWidth(EnemiesGrid,j);

AlliesGrid.ColWidths[TAB_CID] := 0;
AlliesGrid.ColWidths[TAB_PID] := 0;
EnemiesGrid.ColWidths[TAB_CID] := 0;
EnemiesGrid.ColWidths[TAB_PID] := 0;


  Label_spotted.Caption:=authorJSON.GetValue('spotted').ToString;
  Label_damaged.Caption:=authorJSON.GetValue('damaged').ToString;
  Label_kills.Caption:=authorJSON.GetValue('kills').ToString;
  Label_hits.Caption:=authorJSON.GetValue('directHits').ToString;;
  Label_damageDealt.Caption:=authorJSON.GetValue('damageDealt').ToString;;
  Label_capturePoints.Caption:=authorJSON.GetValue('capturePoints').ToString;;
  Label_damageReceived.Caption:=authorJSON.GetValue('damageReceived').ToString;;
  Label_arenaCreateTime.Caption:=battleJSON.GetValue('arenaCreateTime').ToString;;
  Label_credits.Caption:=authorJSON.GetValue('credits').ToString;;
  Label_shotsReceived.Caption:=authorJSON.GetValue('directHitsReceived').ToString;;
  Label_droppedCapturePoints.Caption:=authorJSON.GetValue('droppedCapturePoints').ToString;;
  Label_xp.Caption:=authorJSON.GetValue('xp').ToString;;
  Label_shots.Caption:=authorJSON.GetValue('shots').ToString;;
  Label_he_hits.Caption:=authorJSON.GetValue('explosionHits').ToString;;
  Label_pierced.Caption:=authorJSON.GetValue('piercings').ToString;;
  Label_damageReceived.Caption:=authorJSON.GetValue('damageReceived').ToString+' / '+authorJSON.GetValue('damageBlockedByArmor').ToString;
  Label_damageAssistedRadio.Caption:=authorJSON.GetValue('damageAssistedRadio').ToString;;
  Label_damageAssistedTrack.Caption:=authorJSON.GetValue('damageAssistedTrack').ToString;;
  Label_mileage.Caption:=FloatToStr(StrToInt(authorJSON.GetValue('mileage').ToString)/1000)+' км';

  TempString:=TrimQuotes(battleJSON.GetValue('duration').ToString);
  if Pos('.',TempString)<>0 then
  TempString:=Copy(TempString,0,Pos('.',TempString)-1);
  k:=StrToInt(TempString);
  TempString:=TrimQuotes(authorJSON.GetValue('lifeTime').ToString);
  l:=StrToInt(TempString);

   Label_lifetime_duration.Caption:=IntToStr(l div 60)+'м '
   +IntToStr(l-60*(l div 60))+'c / '+
   IntToStr(k div 60)+'м '
   +IntToStr(k-60*(k div 60))+'c';

  if authorJSON.GetValue('isPremium').ToString='true' then Label_premium.Caption:='Да'
  else Label_premium.Caption:='Нет';
  j:=Round(StrToInt(authorJSON.GetValue('dailyXPFactor10').ToString)/10);
  if j>1 then Label_xp.Caption:=Label_xp.Caption+' (x'+IntToStr(j)+')';
  Label_freeXp.Caption:=authorJSON.GetValue('originalFreeXP').ToString;
  Label_autoRepairCost.Caption:=authorJSON.GetValue('autoRepairCost').ToString;

  TempString:=StringReplace(authorJSON.GetValue('autoLoadCost').ToString,'[','',[]);
  TempString:=Copy(TempString,0,Pos(',',TempString)-1);
  Label_autoLoadCost.Caption:=TempString;

  TempString:=StringReplace(authorJSON.GetValue('autoEquipCost').ToString,'[','',[]);
  TempString:=Copy(TempString,0,Pos(',',TempString)-1);
  Label_autoEquipCost.Caption:=TempString;

  Label_xpPenalty.Caption:=authorJSON.GetValue('xpPenalty').ToString;;
  Label_creditsPenalty.Caption:=authorJSON.GetValue('creditsPenalty').ToString;;
  Label_creditsContributionIn.Caption:=authorJSON.GetValue('creditsContributionIn').ToString;;
  Label_silverSumm.Caption:=IntToStr(StrToInt(Label_credits.Caption)-
  (StrToInt(Label_creditsPenalty.Caption))+(StrToInt(Label_creditsContributionIn.Caption))-
  (StrToInt(Label_autoRepairCost.Caption))-(StrToInt(Label_autoLoadCost.Caption))-
  (StrToInt(Label_autoEquipCost.Caption)));


  SortCol(EnemiesGrid,TAB_EXP);
  SortCol(AlliesGrid,TAB_EXP);

  TanksINIFile.Free;

  Dt:=time;
  QueryPerformanceCounter(time);
  Dt := (time - Dt)/Fr;// [мс]
  StatusBar.SimpleText:=FloatToStr(Dt);

end;

procedure TReplaysStatForm.ViewReplayClick(Sender: TObject);
begin
if FileExists(ReplayPath.Text) then
ShellExecute(Handle,'open',PChar(ReplayPath.Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TReplaysStatForm.SeriesGridExpDblClick(Sender: TObject);
var
g:TGridCoord;
pnt:TPoint;
begin

 pnt:=SeriesGridExp.ScreenToClient(Mouse.CursorPos);
 g:=SeriesGridExp.MouseCoord(pnt.X,pnt.Y);

 if ((g.X=0) and (g.Y>=SeriesGridExp.FixedRows)) and (SeriesGridExp.Cells[g.X,g.Y]<>'')//показать профиль игрока
 then
 ShellExecute(Application.Handle,PChar('open'),
              Pchar(Label_PathPlayerSearch.Caption + SeriesGridExp.Cells[0,g.Y]),
              Nil,Nil,SW_SHOW);

  if ((g.X>1) AND (g.Y<3) AND (g.X<SeriesGridExp.ColCount-2) AND (SeriesGridExp.Cells[g.X,2]<>Label_common_leaved.Caption)) then// показать выбранный реплей в "подробно"
  begin
  ReplayPath.Text:=Label_replaysList.Items[g.X-2];
  SingleReplayAnalyseClick(Self);
  AnalyseType.Pages[0].Show;
  end;

end;

procedure TReplaysStatForm.SeriesGridExpDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);

var
  Line1: string;
  Line2: string;
  ptr: integer;
  hGrid: TStringGrid;

Alive:bool;
MinMax:Integer;
TempString:String;

begin

hGrid:= (Sender as TStringGrid);
if hGrid.Cells[ACol,ARow]='' then Exit;

//закраска побед/поражений
if MultiToBegin.Checked=true then MinMax:=hGrid.ColCount else MinMax:=hGrid.ColCount-2;
    if ((ARow=2) AND (ACol>1) AND (ACol<MinMax)) then
    begin
        if Pos(Label_common_win.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(0,255,0);
        if Pos(Label_common_draw.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(255,255,0);
        if Pos(Label_common_defeat.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(255,0,0);
        if Pos(Label_common_leaved.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(219,219,219);
        if Pos(Label_common_error.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(219,219,219);
        if Pos(Label_common_old_ver.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(219,219,219);
        if ((Pos(Label_common_battle_count.Caption ,hGrid.Cells[ACol,ARow])>0) OR (Pos('%' ,hGrid.Cells[ACol,ARow]) > 0)) then hGrid.Canvas.Brush.Color:=clBtnFace;
        hGrid.Canvas.FillRect(Rect);
        hGrid.Canvas.TextOut(Rect.Left+0, Rect.Top+0, hGrid.Cells[ACol, ARow]);
    end;
//закраска побед/поражений end
//закраска косяков. бубен. Оп-па джигурда!
if MultiToBegin.Checked=true then MinMax:=2 else MinMax:=0;
if ((ARow>2) AND (ACol>1+MinMax) AND (ACol<hGrid.ColCount-2+MinMax) AND (Pos(';',hGrid.Cells[ACol,ARow])=0)) then
    hGrid.Cells[ACol,ARow]:='';

//закраска мин/макс

if ((Pos(';',hGrid.Cells[ACol,ARow])<>0) AND (ARow>2) AND (ACol>1)) then
  begin
    TempString:=hGrid.Cells[ACol,ARow];
    Delete(TempString,1,Pos(';',TempString));
    MinMax:=StrToInt(Copy(TempString,0,Pos(';',TempString)-1));
    Delete(TempString,1,Pos(';',TempString));
    Alive:=StrToBool(TempString);
    ColorGrid(hGrid,ACol,ARow,MinMax,Alive);
  end;
//закраска мин/макс конец

    if ARow=0 then
    begin
      hGrid.Canvas.Brush.Color:= clBtnFace;
      hGrid.Canvas.FillRect(Rect);
      hGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, hGrid.Cells[ACol, ARow]);
    end;

    if Pos(';',hGrid.Cells[ACol,ARow])<>0 then//если многострочна
      BEGIN//multistring
    ptr := Pos(';', hGrid.Cells[ACol, ARow]);
    if ptr > 0 then
    begin
        Line1 := Copy(hGrid.Cells[ACol, ARow], 1, ptr - 1);
        Line2 := Copy(hGrid.Cells[ACol, ARow], ptr + 1,
                      Length(hGrid.Cells[ACol,ARow]) - ptr);
    end
    else Line1 := hGrid.Cells[ACol, ARow];
    hGrid.Canvas.FillRect(Rect);
    hGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, Line1);
      if ptr > 0 then
        hGrid.Canvas.TextOut(Rect.Left+3, Rect.Top+3 -
                             hGrid.Canvas.Font.Height + 7, Line2);

      END;//multistring end
{
//чресстрочная раскраска
        if ((ARow>2) AND ((ACol=1) OR (ACol=hGrid.ColCount-2) OR (ACol=hGrid.ColCount-1) OR (hGrid.Cells[ACol,ARow]=''))) then
         begin
                   case ARow mod 2 of
                   0: hGrid.Canvas.Brush.Color:= RGB(238, 238, 221);
                   1: hGrid.Canvas.Brush.Color:= RGB(221, 221, 200);
                   end;
              hGrid.Canvas.FillRect(Rect);
              hGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, hGrid.Cells[ACol, ARow]);
         end;
}

end;

procedure TReplaysStatForm.SeriesGridFixedCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  hGrid:TStringGrid;
begin
  hGrid:= (Sender as TStringGrid);

  if ((ACol>1) AND ((hGrid.Cells[ACol,0]=Label_common_total.Caption) OR (hGrid.Cells[ACol,0]=Label_common_avg.Caption) OR (MultiGroupPlayers.Checked=true))) then
  begin
  if hGrid.Name='SeriesGridSupport' then
       SortSupp(hGrid,ACol)
  else SortCol(hGrid,ACol);
  end;

end;

procedure TReplaysStatForm.SeriesGridShotsDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Line1: string;
  Line2: string;
  ptr: integer;
  hGrid: TStringGrid;

Alive:bool;
MinMax:Integer;
TempString:String;
begin

hGrid:= (Sender as TStringGrid);
if hGrid.Cells[ACol,ARow]='' then Exit;

//закраска побед/поражений
if MultiToBegin.Checked=true then MinMax:=hGrid.ColCount else MinMax:=hGrid.ColCount-2;
    if ((ARow=2) AND (ACol>1) AND (ACol<MinMax)) then
    begin
        if Pos(Label_common_win.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(0,255,0);
        if Pos(Label_common_draw.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(255,255,0);
        if Pos(Label_common_defeat.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(255,0,0);
        if Pos(Label_common_leaved.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(219,219,219);
        if Pos(Label_common_error.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(219,219,219);
        if Pos(Label_common_old_ver.Caption ,hGrid.Cells[ACol,ARow]) > 0 then hGrid.Canvas.Brush.Color:= RGB(219,219,219);
        if ((Pos(Label_common_battle_count.Caption ,hGrid.Cells[ACol,ARow])>0) OR (Pos('%' ,hGrid.Cells[ACol,ARow]) > 0)) then hGrid.Canvas.Brush.Color:=clBtnFace;
        hGrid.Canvas.FillRect(Rect);
        hGrid.Canvas.TextOut(Rect.Left+0, Rect.Top+0, hGrid.Cells[ACol, ARow]);
    end;
//закраска побед/поражений end
//закраска косяков. бубен. Оп-па джигурда!
if MultiToBegin.Checked=true then MinMax:=2 else MinMax:=0;
if ((ARow>2) AND (ACol>1+MinMax) AND (ACol<hGrid.ColCount-2+MinMax) AND (Pos(';',hGrid.Cells[ACol,ARow])=0)) then
    hGrid.Cells[ACol,ARow]:='';

//закраска мин/макс

if ((Pos(';',hGrid.Cells[ACol,ARow])<>0) AND (ARow>2) AND (ACol>1)) then
  begin
    TempString:=hGrid.Cells[ACol,ARow];
    Delete(TempString,1,Pos(';',TempString));
    Delete(TempString,1,Pos(';',TempString));
    Alive:=StrToBool(TempString);
    ColorGrid(hGrid,ACol,ARow,0,Alive);
  end;
//закраска мин/макс конец


   if ARow=0 then
    begin
      hGrid.Canvas.Brush.Color:= clBtnFace;
      hGrid.Canvas.FillRect(Rect);
      hGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, hGrid.Cells[ACol, ARow]);
    end;

    if Pos(';',hGrid.Cells[ACol,ARow])<>0 then//если многострочна
      BEGIN//multistring
    ptr := Pos(';', hGrid.Cells[ACol, ARow]);
    if ptr > 0 then
    begin
        Line1 := Copy(hGrid.Cells[ACol, ARow], 1, ptr - 1);
        Line2 := Copy(hGrid.Cells[ACol, ARow], ptr + 1,
                      Length(hGrid.Cells[ACol,ARow]) - ptr);
    end
    else Line1 := hGrid.Cells[ACol, ARow];
    hGrid.Canvas.FillRect(Rect);
    hGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, Line1);
      if ptr > 0 then
        hGrid.Canvas.TextOut(Rect.Left+3, Rect.Top+3 -
                             hGrid.Canvas.Font.Height + 7, Line2);

      END;//multistring end

end;

procedure TReplaysStatForm.SeriesGridsMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  hGrid: TStringGrid;
begin
hGrid:= (Sender as TStringGrid);
  if Shift=[ssShift] then
    hGrid.LeftCol := hGrid.LeftCol + 1
  else
      if hGrid.TopRow<hGrid.RowCount-hGrid.VisibleRowCount then
      hGrid.TopRow := hGrid.TopRow + 3
      else Exit();

end;

procedure TReplaysStatForm.SeriesGridsMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
var
  hGrid: TStringGrid;
begin
hGrid:= (Sender as TStringGrid);
  if hGrid.TopRow<hGrid.FixedRows+1 then Exit;
  if hGrid.LeftCol<hGrid.FixedCols+1 then Exit;

  if Shift=[ssShift] then
    hGrid.LeftCol := hGrid.LeftCol - 1
  else hGrid.TopRow := hGrid.TopRow - hGrid.FixedRows;

end;

procedure TReplaysStatForm.SeriesGridSummaryFixedCellClick(Sender: TObject;
  ACol, ARow: Integer);
begin
if ARow=0 then
    begin
      if ((ACol=4) OR (ACol=8)) then SortSupp(SeriesGridSummary,ACol)
      else SortCol(SeriesGridSummary,ACol);
    end;
end;

procedure TReplaysStatForm.ReplaysListDblClick(Sender: TObject);
var
g:TGridCoord;
pnt:TPoint;
hGrid: TStringGrid;
begin
 hGrid:= (Sender as TStringGrid);
 pnt:=hGrid.ScreenToClient(Mouse.CursorPos);
 g:=hGrid.MouseCoord(pnt.X,pnt.Y);

 if g.Y=0 then Exit;

  ReplayPath.Text := hGrid.Cells[RM_PATH-1,g.Y];// костыль. схера ли рассинхрон на 1, разбираться лень.
  SingleReplayAnalyseClick(Self);
  AnalyseType.Pages[0].Show;

end;

procedure TReplaysStatForm.ReplaysListFixedCellClick(Sender: TObject; ACol,
  ARow: Integer);
var
  hGrid: TStringGrid;
begin

hGrid:= (Sender as TStringGrid);

if prevCol=Acol then
      begin
          if sortByInc then sortByInc:=false else sortByInc:=true;
      end
else
      begin
       prevCol:=Acol;
       sortByInc:=true;
      end;

if sortByInc then SortColAsIntInc(hGrid,ACol)
  else SortColAsIntDec(hGrid,ACol);

end;

procedure TReplaysStatForm.ReplaysListOnDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  hGrid: TStringGrid;
begin

InflateRect(Rect,1,0);//увеличение отступа по горизонтали - исчезают вертик разделители ячеек
//if state = [gdSelected] then//закраска прямоугольника выделения
if gdSelected in State then
   with TStringGrid(Sender), Canvas do
   begin
     Brush.Color := clGradientActiveCaption;
     FillRect(Rect);
     TextRect(Rect, Rect.Left + 2, Rect.Top + 2, Cells[aCol, aRow]);
   end

ELSE
BEGIN
hGrid:= (Sender as TStringGrid);
if hGrid.Cells[ACol,ARow]='' then Exit;
hGrid.Canvas.Brush.Color:=clWhite;

    if ARow=0 then
    begin
      hGrid.Canvas.Brush.Color:= clBtnFace;
      hGrid.Canvas.FillRect(Rect);
      hGrid.Canvas.TextOut(Rect.Left+2, Rect.Top+2, hGrid.Cells[ACol, ARow]);
    end;

if ((ACOl=RM_WINNER) AND (ARow>0)) then
    begin
       if hGrid.Cells[ACol,ARow]=Label_common_win.Caption then hGrid.Canvas.Brush.Color:= RGB(216,255,216);
       if hGrid.Cells[ACol,ARow]=Label_common_draw.Caption then hGrid.Canvas.Brush.Color:= RGB(255,255,216);
       if hGrid.Cells[ACol,ARow]=Label_common_defeat.Caption then hGrid.Canvas.Brush.Color:= RGB(255,216,216);
    end;

if ((hGrid.Cells[ACol,ARow]=Label_common_error.Caption) OR (hGrid.Cells[ACol,ARow]=Label_common_old_ver.Caption)) then
hGrid.Canvas.Brush.Color:= RGB(219,219,219);

        hGrid.Canvas.FillRect(Rect);
        hGrid.Canvas.TextOut(Rect.Left+0, Rect.Top+0, hGrid.Cells[ACol, ARow]);

END;

end;

procedure GetMinMax(AlliesArray:TString2Array; ArrayIndex:Integer);
var
i,tmp,
min,minIndex,
max,maxIndex:Integer;
TempInt:Integer;
begin
min:=10000;
max:=0;

minIndex:=0;
maxIndex:=0;

for i := 0 to Length(AlliesArray)-1 do// поиск минимального/макс опыта за бой
    begin
    if not TryStrToInt(AlliesArray[i,ArrayIndex],tmp) then
        begin
        if Pos(';',AlliesArray[i,ArrayIndex])<>0 then
            AlliesArray[i,ArrayIndex]:=Copy(AlliesArray[i,ArrayIndex],0,Pos(';',AlliesArray[i,ArrayIndex])-1);
            if not TryStrToInt(AlliesArray[i,ArrayIndex],tmp) then
              begin
                AlliesArray[i,ArrayIndex]:='error;0';
                Continue;
              end;
        end;

    TempInt:=StrToInt(AlliesArray[i,ArrayIndex]);
    if TempInt<min then begin min:=StrToInt(AlliesArray[i,ArrayIndex]); minIndex:=i; end;
    if TempInt>max then begin max:=StrToInt(AlliesArray[i,ArrayIndex]); maxIndex:=i; end;
    AlliesArray[i,ArrayIndex]:=AlliesArray[i,ArrayIndex]+';0';
    end;
//мин опыт - индекс "-1"
AlliesArray[minIndex,ArrayIndex]:=Copy(AlliesArray[minIndex,ArrayIndex],0,Pos(';',AlliesArray[minIndex,ArrayIndex])-1)+';-1';
//макс опыт - индекс "+1"
AlliesArray[maxIndex,ArrayIndex]:=Copy(AlliesArray[maxIndex,ArrayIndex],0,Pos(';',AlliesArray[maxIndex,ArrayIndex])-1)+';+1';
end;

procedure GetMinMaxSupp(AlliesArray:TString2Array);
var
i,
min,minIndex,
max,maxIndex:Integer;
TempInt,TempRad,TempTrk:Integer;
begin
min:=1000000;
max:=0;

minIndex:=0;
maxIndex:=0;

for i := 0 to Length(AlliesArray)-1 do
    begin
    if AlliesArray[i,ARR_CODE]='' then Continue;
    if AlliesArray[i,ARR_RADIO]='' then AlliesArray[i,ARR_RADIO]:='0';
    if AlliesArray[i,ARR_TRACKS]='' then AlliesArray[i,ARR_TRACKS]:='0';

    if not TryStrToInt(AlliesArray[i,ARR_RADIO],TempRad) then
        begin
            if Pos(';',AlliesArray[i,ARR_RADIO])<>0 then
                AlliesArray[i,ARR_RADIO]:=Copy(AlliesArray[i,ARR_RADIO],0,Pos(';',AlliesArray[i,ARR_RADIO])-1)
                else AlliesArray[i,ARR_RADIO]:='';
            TempRad:=StrToInt(AlliesArray[i,ARR_RADIO]);
        end;

    if not TryStrToInt(AlliesArray[i,ARR_TRACKS],TempTrk) then
        begin
            if Pos(';',AlliesArray[i,ARR_TRACKS])<>0 then
                AlliesArray[i,ARR_TRACKS]:=Copy(AlliesArray[i,ARR_TRACKS],0,Pos(';',AlliesArray[i,ARR_TRACKS])-1)
                else AlliesArray[i,ARR_TRACKS]:='';
            TempTrk:=StrToInt(AlliesArray[i,ARR_TRACKS]);
        end;

    TempInt:=TempRad+TempTrk;

    if TempInt<min then begin min:=TempInt; minIndex:=i; end;
    if TempInt>max then begin max:=TempInt; maxIndex:=i; end;
    AlliesArray[i,ARR_TRACKS]:=AlliesArray[i,ARR_TRACKS]+';0';
    end;
//мин опыт - индекс "-1"
AlliesArray[minIndex,ARR_TRACKS]:=Copy(AlliesArray[minIndex,ARR_TRACKS],0,Pos(';',AlliesArray[minIndex,ARR_TRACKS])-1)+';-1';
//макс опыт - индекс "+1"
AlliesArray[maxIndex,ARR_TRACKS]:=Copy(AlliesArray[maxIndex,ARR_TRACKS],0,Pos(';',AlliesArray[maxIndex,ARR_TRACKS])-1)+';+1';

end;

procedure AlliesInfoToGrids(AlliesArray:TString2Array;Count,StartRow:Integer);
var i,k,l:Integer;
StrList:TStringList;
begin
With ReplaysStatForm do
begin
   if Count=0 then // для 1-го реплея из серии
      begin
        for i := 0 to Length(AlliesArray)-1 do
            Begin
              if AlliesArray[i,ARR_CODE]='' then Continue;
              SeriesGridExp.Cells[0,StartRow+i]:=AlliesArray[i,ARR_NICK];//игрок
              SeriesGridExp.Cells[1,StartRow+i]:=AlliesArray[i,ARR_TANK];//танк
              SeriesGridExp.Cells[2,StartRow+i]:=AlliesArray[i,ARR_EXP]+';'+AlliesArray[i,ARR_ALIVE];//опыт

              SeriesGridFrags.Cells[0,StartRow+i]:=AlliesArray[i,ARR_NICK];//игрок
              SeriesGridFrags.Cells[1,StartRow+i]:=AlliesArray[i,ARR_TANK];//танк
              SeriesGridFrags.Cells[2,StartRow+i]:=AlliesArray[i,ARR_FRAGS]+';'+AlliesArray[i,ARR_ALIVE];//фраги

              SeriesGridDamage.Cells[0,StartRow+i]:=AlliesArray[i,ARR_NICK];//игрок
              SeriesGridDamage.Cells[1,StartRow+i]:=AlliesArray[i,ARR_TANK];//танк
              SeriesGridDamage.Cells[2,StartRow+i]:=AlliesArray[i,ARR_DAMAGE]+';'+AlliesArray[i,ARR_ALIVE];//дамаг за бой

              SeriesGridSupport.Cells[0,StartRow+i]:=AlliesArray[i,ARR_NICK];//игрок
              SeriesGridSupport.Cells[1,StartRow+i]:=AlliesArray[i,ARR_TANK];//танк
              SeriesGridSupport.Cells[2,StartRow+i]:=AlliesArray[i,ARR_RADIO]+' / '+AlliesArray[i,ARR_TRACKS]+';'+AlliesArray[i,ARR_ALIVE];//засвет / гусли

              SeriesGridShots.Cells[0,StartRow+i]:=AlliesArray[i,ARR_NICK];//игрок
              SeriesGridShots.Cells[1,StartRow+i]:=AlliesArray[i,ARR_TANK];//танк
              SeriesGridShots.Cells[2,StartRow+i]:=AlliesArray[i,ARR_SHOTS]+' - '+AlliesArray[i,ARR_PENETR]+'/'+AlliesArray[i,ARR_HITS]+' ('+AlliesArray[i,ARR_EXPHITS]+');0;'+AlliesArray[i,ARR_ALIVE];//выстрелов = пробитий / попаданий (фугасных)

            End;
        end
    else          //для 2..N-го репеля серии
      begin
          for i := 0 to Length(AlliesArray)-1 do
            Begin
            if AlliesArray[i,ARR_CODE]='' then Continue;
            StrList:=TStringList.Create;
            StrList.Assign(SeriesGridExp.Cols[0]);
            k:=StrList.IndexOf(AlliesArray[i,ARR_NICK]);
              if k<>-1 then //если Игрок уже был в пред. реплеях
                  BEGIN
                    SeriesGridExp.Cells[Count+2,k]:=AlliesArray[i,ARR_EXP]+';'+AlliesArray[i,ARR_ALIVE];//опыт
                    if Pos(AlliesArray[i,ARR_TANK],SeriesGridExp.Cells[1,k])=0 then SeriesGridExp.Cells[1,k]:=SeriesGridExp.Cells[1,k]+', '+AlliesArray[i,ARR_TANK];

                    SeriesGridFrags.Cells[Count+2,k]:=AlliesArray[i,ARR_FRAGS]+';'+AlliesArray[i,ARR_ALIVE];
                    SeriesGridFrags.Cells[1,k]:=SeriesGridExp.Cells[1,k];

                    SeriesGridDamage.Cells[Count+2,k]:=AlliesArray[i,ARR_DAMAGE]+';'+AlliesArray[i,ARR_ALIVE];
                    SeriesGridDamage.Cells[1,k]:=SeriesGridExp.Cells[1,k];

                    SeriesGridSupport.Cells[Count+2,k]:=AlliesArray[i,ARR_RADIO]+' / '+AlliesArray[i,ARR_TRACKS]+';'+AlliesArray[i,ARR_ALIVE];
                    SeriesGridSupport.Cells[1,k]:=SeriesGridExp.Cells[1,k];

                    SeriesGridShots.Cells[Count+2,k]:=AlliesArray[i,ARR_SHOTS]+' - '+AlliesArray[i,ARR_PENETR]+'/'+AlliesArray[i,ARR_HITS]+' ('+AlliesArray[i,ARR_EXPHITS]+');0;'+AlliesArray[i,ARR_ALIVE];
                    SeriesGridShots.Cells[1,k]:=SeriesGridExp.Cells[1,k];

                   END
              else         // если не был в пред. реплех
                  BEGIN
                    l:=StrList.IndexOf('');
                      if l=-1 then // если не был в пред. реплех и НЕТ пустых строк
                          begin
                          SeriesGridExp.RowCount:=SeriesGridExp.RowCount+1;
                          SeriesGridExp.Cells[0,SeriesGridExp.RowCount-1]:=AlliesArray[i,ARR_NICK];
                          SeriesGridExp.Cells[1,SeriesGridExp.RowCount-1]:=AlliesArray[i,ARR_TANK];
                          SeriesGridExp.Cells[Count+2,SeriesGridExp.RowCount-1]:=AlliesArray[i,ARR_EXP]+';'+AlliesArray[i,ARR_ALIVE];//опыт

                          SeriesGridFrags.RowCount:=SeriesGridFrags.RowCount+1;
                          SeriesGridFrags.Cells[0,SeriesGridFrags.RowCount-1]:=AlliesArray[i,ARR_NICK];//игрок
                          SeriesGridFrags.Cells[0,SeriesGridFrags.RowCount-1]:=AlliesArray[i,ARR_NICK];
                          SeriesGridFrags.Cells[1,SeriesGridFrags.RowCount-1]:=AlliesArray[i,ARR_TANK];
                          SeriesGridFrags.Cells[Count+2,SeriesGridFrags.RowCount-1]:=AlliesArray[i,ARR_FRAGS]+';'+AlliesArray[i,ARR_ALIVE];

                          SeriesGridDamage.RowCount:=SeriesGridDamage.RowCount+1;
                          SeriesGridDamage.Cells[0,SeriesGridDamage.RowCount-1]:=AlliesArray[i,ARR_NICK];
                          SeriesGridDamage.Cells[1,SeriesGridDamage.RowCount-1]:=AlliesArray[i,ARR_TANK];
                          SeriesGridDamage.Cells[Count+2,SeriesGridDamage.RowCount-1]:=AlliesArray[i,ARR_DAMAGE]+';'+AlliesArray[i,ARR_ALIVE];

                          SeriesGridSupport.RowCount:=SeriesGridSupport.RowCount+1;
                          SeriesGridSupport.Cells[0,SeriesGridSupport.RowCount-1]:=AlliesArray[i,ARR_NICK];
                          SeriesGridSupport.Cells[1,SeriesGridSupport.RowCount-1]:=AlliesArray[i,ARR_TANK];
                          SeriesGridSupport.Cells[Count+2,SeriesGridSupport.RowCount-1]:=AlliesArray[i,ARR_RADIO]+' / '+AlliesArray[i,ARR_TRACKS]+';'+AlliesArray[i,ARR_ALIVE];

                          SeriesGridShots.RowCount:=SeriesGridShots.RowCount+1;
                          SeriesGridShots.Cells[0,SeriesGridShots.RowCount-1]:=AlliesArray[i,ARR_NICK];
                          SeriesGridShots.Cells[1,SeriesGridShots.RowCount-1]:=AlliesArray[i,ARR_TANK];
                          SeriesGridShots.Cells[Count+2,SeriesGridShots.RowCount-1]:=AlliesArray[i,ARR_SHOTS]+' - '+AlliesArray[i,ARR_PENETR]+'/'+AlliesArray[i,ARR_HITS]+' ('+AlliesArray[i,ARR_EXPHITS]+');0;'+AlliesArray[i,ARR_ALIVE];

                          end
                        else         // если не был в пред. реплех и ЕСТЬ пустые строки
                        begin
                          SeriesGridExp.Cells[0,l]:=AlliesArray[i,ARR_NICK];//игрок
                          if Pos(AlliesArray[i,1],SeriesGridExp.Cells[1,l])=0 then SeriesGridExp.Cells[1,l]:=AlliesArray[i,ARR_TANK];
                          SeriesGridExp.Cells[Count+2,l]:=AlliesArray[i,ARR_EXP]+';'+AlliesArray[i,ARR_ALIVE];//опыт

                          SeriesGridFrags.Cells[0,l]:=AlliesArray[i,ARR_NICK];//игрок
                          if Pos(AlliesArray[i,1],SeriesGridFrags.Cells[1,l])=0 then SeriesGridFrags.Cells[1,l]:=AlliesArray[i,ARR_TANK];
                          SeriesGridFrags.Cells[Count+2,l]:=AlliesArray[i,ARR_FRAGS]+';'+AlliesArray[i,ARR_ALIVE];

                          SeriesGridDamage.Cells[0,l]:=AlliesArray[i,ARR_NICK];//игрок
                          if Pos(AlliesArray[i,1],SeriesGridDamage.Cells[1,l])=0 then SeriesGridDamage.Cells[1,l]:=AlliesArray[i,ARR_TANK];
                          SeriesGridDamage.Cells[Count+2,l]:=AlliesArray[i,ARR_DAMAGE]+';'+AlliesArray[i,ARR_ALIVE];

                          SeriesGridSupport.Cells[0,l]:=AlliesArray[i,ARR_NICK];//игрок
                          if Pos(AlliesArray[i,1],SeriesGridSupport.Cells[1,l])=0 then SeriesGridSupport.Cells[1,l]:=AlliesArray[i,ARR_TANK];
                          SeriesGridSupport.Cells[Count+2,l]:=AlliesArray[i,ARR_RADIO]+' / '+AlliesArray[i,ARR_TRACKS]+';'+AlliesArray[i,ARR_ALIVE];

                          SeriesGridShots.Cells[0,l]:=AlliesArray[i,ARR_NICK];//игрок
                          if Pos(AlliesArray[i,1],SeriesGridShots.Cells[1,l])=0 then SeriesGridShots.Cells[1,l]:=AlliesArray[i,ARR_TANK];
                          SeriesGridShots.Cells[Count+2,l]:=AlliesArray[i,ARR_SHOTS]+' - '+AlliesArray[i,ARR_PENETR]+'/'+AlliesArray[i,ARR_HITS]+' ('+AlliesArray[i,ARR_EXPHITS]+');0;'+AlliesArray[i,ARR_ALIVE];

                        end;
                  END;// КОНЕЦ если не был в пред. реплех и НЕТ пустых строк
                  StrList.Free;
            end;//конец вывода 2+ релея
      end;//закончить вывод этого реплея

end;
end;

procedure AlliesInfoToGridsGroupped(AlliesArray:TString2Array;Count,StartRow:Integer);
var
i,k:integer;
TmpList:TStringList;
begin
With ReplaysStatForm do
begin
  for i := 0 to Length(AlliesArray)-1 do
    Begin
      if AlliesArray[i,ARR_CODE]='' then Continue;
      TmpList:=TStringList.Create;
      TmpList.Assign(SeriesGridExp.Cols[0]);
      k:=TmpList.IndexOf('');
      if k=-1 then
          begin
            SeriesGridExp.RowCount:=SeriesGridExp.RowCount+1;
            SeriesGridFrags.RowCount:=SeriesGridFrags.RowCount+1;
            SeriesGridDamage.RowCount:=SeriesGridDamage.RowCount+1;
            SeriesGridSupport.RowCount:=SeriesGridSupport.RowCount+1;
            SeriesGridShots.RowCount:=SeriesGridShots.RowCount+1;
            k:=SeriesGridExp.RowCount-1;
          end;
      SeriesGridExp.Cells[0,k]:=AlliesArray[i,ARR_NICK];
      SeriesGridExp.Cells[1,k]:=AlliesArray[i,ARR_TANK];
      SeriesGridExp.Cells[Count+2,k]:=AlliesArray[i,ARR_EXP]+';'+AlliesArray[i,ARR_ALIVE];//опыт

      SeriesGridFrags.Cells[0,k]:=AlliesArray[i,ARR_NICK];
      SeriesGridFrags.Cells[1,k]:=AlliesArray[i,ARR_TANK];
      SeriesGridFrags.Cells[Count+2,k]:=AlliesArray[i,ARR_FRAGS]+';'+AlliesArray[i,ARR_ALIVE];//опыт

      SeriesGridDamage.Cells[0,k]:=AlliesArray[i,ARR_NICK];
      SeriesGridDamage.Cells[1,K]:=AlliesArray[i,ARR_TANK];
      SeriesGridDamage.Cells[Count+2,k]:=AlliesArray[i,ARR_DAMAGE]+';'+AlliesArray[i,ARR_ALIVE];//опыт

      SeriesGridSupport.Cells[0,k]:=AlliesArray[i,ARR_NICK];
      SeriesGridSupport.Cells[1,k]:=AlliesArray[i,ARR_TANK];
      SeriesGridSupport.Cells[Count+2,k]:=AlliesArray[i,ARR_RADIO]+' / '+AlliesArray[i,ARR_TRACKS]+';'+AlliesArray[i,ARR_ALIVE];

      SeriesGridShots.Cells[0,k]:=AlliesArray[i,ARR_NICK];
      SeriesGridShots.Cells[1,k]:=AlliesArray[i,ARR_TANK];
      SeriesGridShots.Cells[Count+2,k]:=AlliesArray[i,ARR_SHOTS]+' - '+AlliesArray[i,ARR_PENETR]+'/'+AlliesArray[i,ARR_HITS]+' ('+AlliesArray[i,ARR_EXPHITS]+');0;'+AlliesArray[i,ARR_ALIVE];

      TmpList.Free;
    End;

end;
end;

procedure TReplaysStatForm.SeriesAnalysis(ReplayPath:String;Count,StartRow:Integer);
var
Replay
:TextFile;

TempString,winnerTeam,playerName,mapDisplayName,gameplayID,dateTime,previousDate,win
:String;

i,j,k:Integer;

PlayersArray,AlliesArray:TString2Array;
currentJSONData,detailedResults:TStringArray;
battleJSON,vehiclesJSON,authorJSON,playersJSON:TJSONObject;

t1,t2,t3,t4:TJSONObject;
isWinner:TStringArray;
begin

AnalyseType.ActivePageIndex:=1;

try
  AssignFile(Replay,ReplayPath);
  FileMode := fmOpenRead;
  Reset(Replay);
except
  SeriesGridExp.Cells[Count+2,2]:= Label_common_error.Caption;
  SeriesGridFrags.Cells[Count+2,2]:=Label_common_error.Caption;
  SeriesGridDamage.Cells[Count+2,2]:=Label_common_error.Caption;
  SeriesGridSupport.Cells[Count+2,2]:=Label_common_error.Caption;
  SeriesGridShots.Cells[Count+2,2]:=Label_common_error.Caption;
  MoveFileToDir(ReplayPath,'_' + Label_common_error.Caption);
  Exit;
end;
  Closefile(Replay);

  SetLength(PlayersArray,0,0);//clear player array
  SetLength(AlliesArray,0,0);//clear player array

  currentJSONData:=GetJSONStrings(ReplayPath);

  battleJSON:= TJSONObject.ParseJSONValue(currentJSONData[DETAILED_RESULTS_PERSONAL]) as TJSONObject;

  battleJSON.TryGetValue('playerName',playerName);//берем имя
  battleJSON.TryGetValue('clientVersionFromExe',TempString);
  TempString:=StringReplace(TempString,' ','',[rfReplaceAll]);
  TempString:=StringReplace(TempString,',','',[rfReplaceAll]);
  TempString:=StringReplace(TempString,'.','',[rfReplaceAll]);
  TempString:=StringReplace(TempString,'08100','0810',[rfReplaceAll]);
  TempString:=StringReplace(TempString,'08110','0811',[rfReplaceAll]);
  replayVersion:=StrToInt(TempString);
  battleJSON.TryGetValue('vehicles',vehiclesJSON);//берем vehicles - участники боя - кто загружался
  battleJSON.RemovePair('vehicles');              //удаляем их их общей инфы боя


if ((replayVersion<811) OR (replayVersion=890) OR (replayVersion=860) OR (replayVersion=870) OR (replayVersion=880)) then
    begin
    SeriesGridExp.Cells[Count+2,2]:=Label_common_old_ver.Caption;
    SeriesGridFrags.Cells[Count+2,2]:=Label_common_old_ver.Caption;
    SeriesGridDamage.Cells[Count+2,2]:=Label_common_old_ver.Caption;
    SeriesGridSupport.Cells[Count+2,2]:=Label_common_old_ver.Caption;
    SeriesGridShots.Cells[Count+2,2]:=Label_common_old_ver.Caption;
    MoveFileToDir(ReplayPath,'_' + Label_common_old_ver.Caption);
    Exit;
    end;


try// костыль, лень разбираться. Исправляет крит, когда одна из джсон строк нечитаема
    begin
      t1:=TJSONObject.ParseJSONValue(currentJSONData[0]) as TJSONObject;
      t2:=TJSONObject.ParseJSONValue(currentJSONData[1]) as TJSONObject;
      t3:=TJSONObject.ParseJSONValue(currentJSONData[2]) as TJSONObject;
      t4:=TJSONObject.ParseJSONValue(currentJSONData[3]) as TJSONObject;
      if (
        (not Assigned(t1)) OR
        (not Assigned(t2)) OR
        (not Assigned(t3)) OR
        (not Assigned(t4))
        ) then
      begin
        SeriesGridExp.Cells[Count+2,2]:= Label_common_error.Caption;
        SeriesGridFrags.Cells[Count+2,2]:=Label_common_error.Caption;
        SeriesGridDamage.Cells[Count+2,2]:=Label_common_error.Caption;
        SeriesGridSupport.Cells[Count+2,2]:=Label_common_error.Caption;
        SeriesGridShots.Cells[Count+2,2]:=Label_common_error.Caption;
        MoveFileToDir(ReplayPath,'_' + Label_common_error.Caption);
        Exit;
      end;
    end
  except
        SeriesGridExp.Cells[Count+2,2]:= Label_common_error.Caption;
        SeriesGridFrags.Cells[Count+2,2]:=Label_common_error.Caption;
        SeriesGridDamage.Cells[Count+2,2]:=Label_common_error.Caption;
        SeriesGridSupport.Cells[Count+2,2]:=Label_common_error.Caption;
        SeriesGridShots.Cells[Count+2,2]:=Label_common_error.Caption;
        MoveFileToDir(ReplayPath,'_' + Label_common_error.Caption);
        Exit;
  end;
  t1.Destroy;t2.Destroy;t3.Destroy;t4.Destroy;

  currentJSONData[1] := StringReplace(currentJSONData[1], 'Infinity', '0', [ rfReplaceAll ]);

  GetDataFromJSON(currentJSONData[1],battleJSON,detailedResults);



  battleJSON.TryGetValue('winnerTeam',winnerTeam);

  authorJSON:=GetAuthorData(detailedResults[DETAILED_RESULTS_PERSONAL],replayVersion);
  playersJSON:=GetPlayersData(detailedResults[DETAILED_RESULTS_PLAYERS]);

  vehiclesJSON:=GetVehiclesData(vehiclesJSON,playersJSON,detailedResults[DETAILED_RESULTS_VEHICLES],currentJSONData[3]);

  vehiclesJSON:=FinalizeVehicles(vehiclesJSON);
  FillArrays(vehiclesJSON,PlayersArray);
  SetLength(isWinner,2);
  isWinner:=CheckWin(vehiclesJSON,playerName,winnerTeam);// 0 - authorTeam
                                                         // 1 - isWinner


  if MultiAdditional.Checked = true then
  begin
  if isWinner[1]='true' then Label_m_wins.Caption:=IntToStr(StrToInt(Label_m_wins.Caption)+1);
  Label_m_battles.Caption:=IntToStr(StrToInt(Label_m_battles.Caption)+1);
  Label_m_dmg.Caption:=IntToStr(StrToInt(Label_m_dmg.Caption)+StrToInt(authorJSON.GetValue('damageDealt').ToString));
  Label_m_spotted.Caption:=IntToStr(StrToInt(Label_m_spotted.Caption)+StrToInt(authorJSON.GetValue('spotted').ToString));
  Label_m_hits.Caption:=IntToStr(StrToInt(Label_m_hits.Caption)+StrToInt(authorJSON.GetValue('directHits').ToString));
  Label_m_capture.Caption:=IntToStr(StrToInt(Label_m_capture.Caption)+StrToInt(authorJSON.GetValue('capturePoints').ToString));
  Label_m_dmgrecieved.Caption:=IntToStr(StrToInt(Label_m_dmgrecieved.Caption)+StrToInt(authorJSON.GetValue('damageReceived').ToString));
  Label_m_damaged.Caption:=IntToStr(StrToInt(Label_m_damaged.Caption)+StrToInt(authorJSON.GetValue('damaged').ToString));
  Label_m_silver.Caption:=IntToStr(StrToInt(Label_m_silver.Caption)+StrToInt(authorJSON.GetValue('credits').ToString));
  Label_m_shotsReceived.Caption:=IntToStr(StrToInt(Label_m_shotsReceived.Caption)+StrToInt(authorJSON.GetValue('directHitsReceived').ToString));
  Label_m_defend.Caption:=IntToStr(StrToInt(Label_m_defend.Caption)+StrToInt(authorJSON.GetValue('droppedCapturePoints').ToString));
  Label_m_exp.Caption:=IntToStr(StrToInt(Label_m_exp.Caption)+StrToInt(authorJSON.GetValue('xp').ToString));
  Label_m_shots.Caption:=IntToStr(StrToInt(Label_m_shots.Caption)+StrToInt(authorJSON.GetValue('shots').ToString));
  Label_m_killed.Caption:=IntToStr(StrToInt(Label_m_killed.Caption)+StrToInt(authorJSON.GetValue('kills').ToString));
  Label_m_hehits.Caption:=IntToStr(StrToInt(Label_m_hehits.Caption)+StrToInt(authorJSON.GetValue('explosionHits').ToString));
  Label_m_pierced.Caption:=IntToStr(StrToInt(Label_m_pierced.Caption)+StrToInt(authorJSON.GetValue('piercings').ToString));
  Label_m_support.Caption:=IntToStr(StrToInt(Label_m_support.Caption)+StrToInt(authorJSON.GetValue('damageAssistedRadio').ToString));
  Label_m_tracks.Caption:=IntToStr(StrToInt(Label_m_tracks.Caption)+StrToInt(authorJSON.GetValue('damageAssistedTrack').ToString));
  Label_m_mileage.Caption:=IntToStr(StrToInt(Label_m_mileage.Caption)+StrToInt(authorJSON.GetValue('mileage').ToString));
  Label_m_lifetime.Caption:=IntToStr(StrToInt(Label_m_lifetime.Caption)+StrToInt(authorJSON.GetValue('lifeTime').ToString));
  Label_m_potentialgot.Caption:=IntToStr(StrToInt(Label_m_potentialgot.Caption)+StrToInt(authorJSON.GetValue('potentialDamageReceived').ToString));


  TryStrToInt(battleJSON.GetValue('duration').ToString,i);
  Label_m_duration.Caption:=IntToStr(StrToInt(Label_m_duration.Caption)+i);
  Label_m_repair.Caption:=IntToStr(StrToInt(Label_m_repair.Caption)+StrToInt(authorJSON.GetValue('autoRepairCost').ToString));

  TempString:=StringReplace(authorJSON.GetValue('autoLoadCost').ToString,'[','',[]);
  TempString:=Copy(TempString,0,Pos(',',TempString)-1);
  Label_m_ammo.Caption:=IntToStr(StrToInt(Label_m_ammo.Caption)+StrToInt(TempString));

  TempString:=StringReplace(authorJSON.GetValue('autoEquipCost').ToString,'[','',[]);
  TempString:=Copy(TempString,0,Pos(',',TempString)-1);
  Label_m_equip.Caption:=IntToStr(StrToInt(Label_m_equip.Caption)+StrToInt(TempString));
  end;


  k:=0;
  SetLength(AlliesArray,Round(Length(PlayersArray)/2+1),ARR_WIDTH);// ТУТ КОСТЫЛЬ!!!

  for i := 0 to Length(PlayersArray)-1 do
  begin
    if PlayersArray[i,ARR_TEAM]=isWinner[0] then
      Begin
      if PlayersArray[i,ARR_NICK] = 'Наблюдатель' then Continue;// И ЭТО ТОЖЕ КОСТЫЛЬ!!!
        for j := 0 to ARR_ISOBSERVER do
          begin
          AlliesArray[k,j]:=PlayersArray[i,j];//союзник.
          PlayersArray[i,ARR_TEAM]:='1';
          end;
      k:=k+1;
      End
      Else PlayersArray[i,ARR_TEAM]:='0';//противник.
  end;


  mapDisplayName:=TrimQuotes(battleJSON.GetValue('mapDisplayName').ToString);
  gameplayID:=TrimQuotes(battleJSON.GetValue('gameplayID').ToString);

  if gameplayID='nations' then gameplayID:=', ' + ReplaysStatForm.Label_common_nations_short.Caption;
  if gameplayID='domination' then gameplayID:=', ' + ReplaysStatForm.Label_common_domination_short.Caption;
  if gameplayID='assault' then gameplayID:=', ' + ReplaysStatForm.Label_common_assault_short.Caption;
  if gameplayID='ctf' then gameplayID:= ReplaysStatForm.Label_common_ctf_short.Caption;
  if gameplayID='assault2' then gameplayID:=', ' + ReplaysStatForm.Label_common_nations_short.Caption;
  if gameplayID='ctf30x30' then gameplayID:=', ' + ReplaysStatForm.Label_common_ctf30x30_short.Caption;
  if gameplayID='epic' then gameplayID:=', ' + ReplaysStatForm.Label_common_epic_short.Caption;


    if isWinner[1]='false' then win:= ReplaysStatForm.Label_common_defeat.Caption;
    if winnerTeam = '0' then win:=ReplaysStatForm.Label_common_draw.Caption;
    if isWinner[1]='true' then win:=ReplaysStatForm.Label_common_win.Caption;

   dateTime:=TrimQuotes(battleJSON.GetValue('dateTime').ToString);
   if previousDate=GetDate(dateTime) then
    begin
    SeriesGridExp.Cells[Count+2,0]:=';'+GetTime(dateTime);
    SeriesGridFrags.Cells[Count+2,0]:=';'+GetTime(dateTime);
    SeriesGridDamage.Cells[Count+2,0]:=';'+GetTime(dateTime);
    SeriesGridSupport.Cells[Count+2,0]:=';'+GetTime(dateTime);
    SeriesGridShots.Cells[Count+2,0]:=';'+GetTime(dateTime);
    end
   else
    begin
    SeriesGridExp.Cells[Count+2,0]:=GetDate(dateTime)+';'+GetTime(dateTime);
    SeriesGridFrags.Cells[Count+2,0]:=GetDate(dateTime)+';'+GetTime(dateTime);
    SeriesGridDamage.Cells[Count+2,0]:=GetDate(dateTime)+';'+GetTime(dateTime);
    SeriesGridSupport.Cells[Count+2,0]:=GetDate(dateTime)+';'+GetTime(dateTime);
    SeriesGridShots.Cells[Count+2,0]:=GetDate(dateTime)+';'+GetTime(dateTime);
    end;
   previousDate:=GetDate(dateTime);

   SeriesGridExp.Cells[Count+2,1]:=mapDisplayName+gameplayID;
   SeriesGridFrags.Cells[Count+2,1]:=mapDisplayName+gameplayID;
   SeriesGridDamage.Cells[Count+2,1]:=mapDisplayName+gameplayID;
   SeriesGridSupport.Cells[Count+2,1]:=mapDisplayName+gameplayID;
   SeriesGridShots.Cells[Count+2,1]:=mapDisplayName+gameplayID;

   SeriesGridExp.Cells[Count+2,2]:=win;
   SeriesGridFrags.Cells[Count+2,2]:=win;
   SeriesGridDamage.Cells[Count+2,2]:=win;
   SeriesGridSupport.Cells[Count+2,2]:=win;
   SeriesGridShots.Cells[Count+2,2]:=win;

  GetMinMax(AlliesArray,ARR_EXP);
  GetMinMax(AlliesArray,ARR_FRAGS);
  GetMinMax(AlliesArray,ARR_DAMAGE);
  GetMinMaxSupp(AlliesArray);


if MultiGroupPlayers.Checked=false then//не группировать по боям:
  AlliesInfoToGrids(AlliesArray,Count,StartRow)
else//группировать по боям:
  AlliesInfoToGridsGroupped(AlliesArray,Count,StartRow);


end;

procedure TReplaysStatForm.FillSummaryGrid();
var
i,TotalCol:integer;
begin

SeriesGridSummary.RowCount:=SeriesGridExp.RowCount;
SeriesGridSummary.ColCount:=9;

SeriesGridSummary.Cells[0,0]:=Label_common_name.Caption;
SeriesGridSummary.Cells[1,0]:=Label_common_total_exp.Caption;
SeriesGridSummary.Cells[2,0]:=Label_common_total_frags.Caption;
SeriesGridSummary.Cells[3,0]:=Label_common_total_dmg.Caption;
SeriesGridSummary.Cells[4,0]:=Label_common_total_supp.Caption;
SeriesGridSummary.Cells[5,0]:=Label_common_avg_exp.Caption;
SeriesGridSummary.Cells[6,0]:=Label_common_avg_frags.Caption;
SeriesGridSummary.Cells[7,0]:=Label_common_avg_dmg.Caption;
SeriesGridSummary.Cells[8,0]:=Label_common_avg_supp.Caption;

if MultiToBegin.Checked=true then TotalCol:=2 else TotalCol:=SeriesGridExp.ColCount-2;

for i := SeriesGridExp.FixedRows to SeriesGridExp.RowCount-1 do
    begin
      SeriesGridSummary.Cells[0,i-2]:=SeriesGridExp.Cells[0,i];
      SeriesGridSummary.Cells[1,i-2]:=SeriesGridExp.Cells[TotalCol,i];
      SeriesGridSummary.Cells[2,i-2]:=SeriesGridFrags.Cells[TotalCol,i];
      SeriesGridSummary.Cells[3,i-2]:=SeriesGridDamage.Cells[TotalCol,i];
      SeriesGridSummary.Cells[4,i-2]:=SeriesGridSupport.Cells[TotalCol,i];
      SeriesGridSummary.Cells[5,i-2]:=SeriesGridExp.Cells[TotalCol+1,i];
      SeriesGridSummary.Cells[6,i-2]:=SeriesGridFrags.Cells[TotalCol+1,i];
      SeriesGridSummary.Cells[7,i-2]:=SeriesGridDamage.Cells[TotalCol+1,i];
      SeriesGridSummary.Cells[8,i-2]:=SeriesGridSupport.Cells[TotalCol+1,i];
    end;
end;

procedure TReplaysStatForm.SeriesAnalysisButtonClick(Sender: TObject);
var Count,i,maxW:Integer;

    iCounterPerSec: int64;
    T1, T2: int64;
begin


if Label_replaysList.Items.Count=0 then
  begin
  ShowMessage(Label_common_dragndrop.Caption);
  Exit;
  end;
Label_replaysList.Visible:=false;
ZeroLables();


SeriesGridExp.ColCount:=Label_replaysList.Items.Count+2;
SeriesGridFrags.ColCount:=Label_replaysList.Items.Count+2;
SeriesGridDamage.ColCount:=Label_replaysList.Items.Count+2;
SeriesGridSupport.ColCount:=Label_replaysList.Items.Count+2;
SeriesGridShots.ColCount:=Label_replaysList.Items.Count+2;

SeriesGridExp.RowCount:=18;
SeriesGridFrags.RowCount:=18;
SeriesGridDamage.RowCount:=18;
SeriesGridSupport.RowCount:=18;
SeriesGridShots.RowCount:=18;

ClearStringGrid(SeriesGridExp);
ClearStringGrid(SeriesGridFrags);
ClearStringGrid(SeriesGridDamage);
ClearStringGrid(SeriesGridSupport);
ClearStringGrid(SeriesGridSummary);
ClearStringGrid(SeriesGridShots);

SeriesProgress.Max:=Label_replaysList.Items.Count-1;
SeriesProgress.Visible:=true;

QueryPerformanceFrequency(iCounterPerSec);
QueryPerformanceCounter(T1);


TanksINIFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
for Count := 0 to Label_replaysList.Items.Count-1 do
  begin
//   if Count >= Round(13 / 4) then Continue;
   StatusBar.SimpleText:=Label_current_replay.Caption +' ' + Label_replaysList.Items[Count];

   SeriesAnalysis(Label_replaysList.Items[Count],Count,SeriesGridExp.FixedRows);

   SeriesProgress.Position:=Count;
   if Count mod 3 = 0 then Application.ProcessMessages;
  end;
TanksINIFile.Destroy;

  QueryPerformanceCounter(T2);
  StatusBar.SimpleText:='Время выполнения: '+FormatFloat('0.0000', (T2 - T1) / iCounterPerSec) + ' сек.';

if MultiAdditional.Checked = true then AdditionalFinalize();

AvgExpCount(SeriesGridExp);
AvgExpCount(SeriesGridFrags);
AvgExpCount(SeriesGridDamage);
AvgCountSupp(SeriesGridSupport);
AvgCountShots(SeriesGridShots);

SeriesGridSupport.Cells[SeriesGridExp.ColCount-1,2]:=SeriesGridExp.Cells[SeriesGridExp.ColCount-1,2];
SeriesGridSupport.Cells[SeriesGridSupport.ColCount-2,2]:=SeriesGridExp.Cells[SeriesGridExp.ColCount-2,2];

if MultiToBegin.Checked=true then
begin
SwitchCols(SeriesGridexp,2,SeriesGridexp.ColCount-2);
SwitchCols(SeriesGridexp,3,SeriesGridexp.ColCount-1);

SwitchCols(SeriesGridFrags,2,SeriesGridFrags.ColCount-2);
SwitchCols(SeriesGridFrags,3,SeriesGridFrags.ColCount-1);

SwitchCols(SeriesGridDamage,2,SeriesGridDamage.ColCount-2);
SwitchCols(SeriesGridDamage,3,SeriesGridDamage.ColCount-1);

SwitchCols(SeriesGridSupport,2,SeriesGridSupport.ColCount-2);
SwitchCols(SeriesGridSupport,3,SeriesGridSupport.ColCount-1);

SwitchCols(SeriesGridShots,2,SeriesGridSupport.ColCount-2);
SwitchCols(SeriesGridShots,3,SeriesGridSupport.ColCount-1);

end;

    for i := SeriesGridExp.RowCount-1 downto 0 do
      begin
          if SeriesGridExp.Cells[0,i]='' then
              begin
                SeriesGridExp.RowCount:=SeriesGridExp.RowCount-1;
                SeriesGridFrags.RowCount:=SeriesGridFrags.RowCount-1;
                SeriesGridDamage.RowCount:=SeriesGridDamage.RowCount-1;
                SeriesGridSupport.RowCount:=SeriesGridSupport.RowCount-1;
                SeriesGridShots.RowCount:=SeriesGridShots.RowCount-1;
              end;
      end;

FillSummaryGrid();

for i := 0 to SeriesGridExp.ColCount-1 do
begin
MaxW:=0;
MaxW:=Max(GetColMaxWidth(SeriesGridExp,i),MaxW);
MaxW:=Max(GetColMaxWidth(SeriesGridFrags,i),MaxW);
MaxW:=Max(GetColMaxWidth(SeriesGridDamage,i),MaxW);
MaxW:=Max(GetColMaxWidth(SeriesGridSupport,i),MaxW);
MaxW:=Max(GetColMaxWidth(SeriesGridShots,i),MaxW);

SeriesGridExp.ColWidths[i]:=MaxW;
SeriesGridFrags.ColWidths[i]:=MaxW;
SeriesGridDamage.ColWidths[i]:=MaxW;
SeriesGridSupport.ColWidths[i]:=MaxW;
SeriesGridShots.ColWidths[i]:=MaxW;
end;

for i := 0 to SeriesGridSummary.ColCount-1 do
begin
MaxW:=0;
MaxW:=Max(GetColMaxWidth(SeriesGridSummary,i),MaxW);
SeriesGridSummary.ColWidths[i]:=MaxW;
end;

SeriesProgress.Visible:=false;


end;

end.
