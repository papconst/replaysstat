unit techscollect_src;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls ,  JSON  , IniFiles,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;

type
  Tfm_techscollect = class(TForm)
    Label_techs_language: TLabel;
    Memo: TMemo;
    IdHTTP: TIdHTTP;
    Label_techs_msg1: TLabel;
    Label_techs_msg2: TLabel;
    Label_techs_msg3: TLabel;
    Label_techs_msg4: TLabel;
    Label_techs_msg6: TLabel;
    Label_techs_msg7: TLabel;
    Label_techs_msg5: TLabel;
    Label_techs_processing: TLabel;
    Button1: TButton;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fm_techscollect: Tfm_techscollect;

implementation

{$R *.dfm}
uses

utilites;


procedure GetTanksFromAPI(const sCurrLang:String);
var
// запрос к серверу, изучать тут
// https://developers.wargaming.net/reference/all/wot/encyclopedia/vehicles/
sQuery
:String;

sResponce,sTankData,sStatus,sTag,sShortName,sNation,sTanksLang,msg
  :String;
jsResponce,jsTankData
  :TJSONObject;
tmp,i,max,newitems
  :integer;
IniFile
  :TIniFile;
bOverwrite
  :boolean;
begin
  IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'/tanks.ini');
  sQuery := 'https://api.worldoftanks.ru/wot/encyclopedia/vehicles/?application_id=aaef5ad3b6c41d37022fdffa5f34fb4f&fields=nation,short_name,tag&language=' + sCurrLang;
  sTanksLang := IniFile.ReadString('options','LangTanks','ru');

  if( sCurrLang <> sTanksLang ) then bOverwrite := true else bOverwrite := false;

with fm_techscollect do
begin

  try
    msg := Label_techs_msg1.Caption;
    Memo.Lines[0] := msg;
    sResponce:= IdHTTP.Get(sQuery);
  except
    begin
      Memo.Lines[0] := msg + sResponce;
      Exit;
    end;
  end;
  Memo.Lines[0] := msg + 'OK';
  Update;

  if IdHTTP.ResponseCode<>200 then begin Memo.Lines[1] := Label_techs_msg2.Caption; Update; Exit; end;

  newitems:=0;

  jsResponce:=TJSONObject.ParseJSONValue(sResponce) as TJSONObject;
  if Assigned(jsResponce) then//получение собственно массива танков
  begin
    sStatus := TrimQuotes(jsResponce.Get('status').JsonValue.ToString);
    if sStatus = 'error' then
    begin
      sStatus := jsResponce.Get('error').JsonValue.ToString;
      jsTankData:=TJSONObject.ParseJSONValue(sStatus) as TJSONObject;
      if  Assigned(jsTankData) then
      begin
        Memo.Lines.Add(Label_techs_msg2.Caption + ' ' + TrimQuotes(jsTankData.Get('message').JsonValue.ToString));
        jsTankData.Destroy;
        Exit;
      end
      else
      begin
        Memo.Lines.Add(Label_techs_msg2.Caption);
        jsTankData.Destroy;
        Exit;
      end;
    end;

  sResponce:=jsResponce.Get('data').JsonValue.ToString;
  jsResponce.Destroy;
  end
  else begin Memo.Lines.Add(Label_techs_msg3.Caption); Update; Exit;end;

  jsResponce:=TJSONObject.ParseJSONValue(sResponce) as TJSONObject;
  if Assigned(jsResponce) then//получение данных о каждом танке!
  begin
    max := jsResponce.Count;
    for i := 0 to jsResponce.Count-1 do
      begin
        sTankData:=jsResponce.Pairs[i].JsonValue.ToString;
        jsTankData:=TJSONObject.ParseJSONValue(sTankData) as TJSONObject;
        if Assigned(jsTankData) then
          begin
              //get info from JSON
              sNation := TrimQuotes(jsTankData.Get('nation').JsonValue.ToString);
              sTag := TrimQuotes(jsTankData.Get('tag').JsonValue.ToString);
              sShortName := TrimQuotes(jsTankData.Get('short_name').JsonValue.ToString);
              if IniFile.ValueExists(sNation,sTag) then
                begin
                  if bOverwrite then
                  begin
                    IniFile.WriteString(sNation,sTag,sShortName);
                    newitems:=newitems+1;
                  end;
                end
              else
                begin
                    IniFile.WriteString(sNation,sTag,sShortName);
                    newitems:=newitems+1;
                end;
              jsTankData.Destroy;
              Memo.Lines[1] := Label_techs_processing.Caption + ': ' + IntToStr(Round(100*i/max)) + '%' ;
              Update;

          end;
      end;
  jsResponce.Destroy;
  end
  else begin Memo.Lines[1] := Label_techs_msg4.Caption; Update; Exit;end;

  if newitems<>0 then Memo.Lines.Add(Label_techs_msg5.Caption +' '+IntToStr(newitems)+' ' + Label_techs_msg6.Caption)
  else Memo.Lines.Add(Label_techs_msg7.Caption);

  IniFile.WriteString('options','LangTanks',sCurrLang);
  IniFile.Free;
end;

end;

procedure Tfm_techscollect.Button1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure Tfm_techscollect.FormActivate(Sender: TObject);
begin
  fm_techscollect.Update;
  GetTanksFromAPI(Label_techs_language.Caption);
  Self.Close;
end;

procedure LanguagesLoad(const lang : String);
var
iniFile :TINIFile;

begin
  iniFile := TINIFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
  with fm_techscollect do
  begin
    Caption := iniFile.ReadString(lang,'techs_caption','Обновление танков...');
    Label_techs_msg1.Caption := iniFile.ReadString(lang,'techs_msg1','Обращение к серверу...');
    Label_techs_msg2.Caption := iniFile.ReadString(lang,'techs_msg2','Не удалось выполнить запрос.');
    Label_techs_msg3.Caption := iniFile.ReadString(lang,'techs_msg3','Ошибка 1');
    Label_techs_msg4.Caption := iniFile.ReadString(lang,'techs_msg4','Ошибка 2');
    Label_techs_msg5.Caption := iniFile.ReadString(lang,'techs_msg5','Из API добавлено');
    Label_techs_msg6.Caption := iniFile.ReadString(lang,'techs_msg6','новых танков.');
    Label_techs_msg7.Caption := iniFile.ReadString(lang,'techs_msg7','API: Новых танков нет');
    Label_techs_processing.Caption := iniFile.ReadString(lang,'techs_processing','Обработка');
  end;
  iniFile.Free;
end;

procedure Tfm_techscollect.FormShow(Sender: TObject);
begin
  Memo.Lines.Clear;
  LanguagesLoad(Label_techs_language.Caption);
end;

end.
