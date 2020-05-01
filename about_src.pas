unit about_src;

interface

uses
 WinApi.Windows,
 System.Classes,
 Vcl.Forms,
 Vcl.Controls,
 Vcl.StdCtrls,
 Vcl.ExtCtrls,
 SHELLAPI,
 IniFiles,
 SysUtils
;

type
  TAboutBox = class(TForm)
    Panel1: TPanel;
    Label_product_desc: TLabel;
    Label_author: TLabel;
    Label_comment1: TLabel;
    OKButton: TButton;
    Label_comment3: TLabel;
    ClanName: TLabel;
    Label_LinkToClanThread: TLabel;
    Author: TLabel;
    Label_LinkToForumThread: TLabel;
    Label_comment2: TLabel;
    Label_WoWp: TLabel;
    Label_thanks_to: TLabel;
    lb_th1: TLabel;
    lb_th2: TLabel;
    Label_current_language: TLabel;
    Label_forum_thread: TLabel;
    procedure ClanNameClick(Sender: TObject);
    procedure Label_LinkToClanThreadClick(Sender: TObject);
    procedure AuthorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label_LinkToForumThreadClick(Sender: TObject);
    procedure Label_WoWpClick(Sender: TObject);
    procedure lb_th1Click(Sender: TObject);
    procedure lb_th2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}
uses replaysstat_src;

procedure TAboutBox.AuthorClick(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('http://worldoftanks.ru/community/accounts/337813-G4ce/'),nil,nil,SW_SHOWNORMAL);
end;

procedure TAboutBox.Label_LinkToClanThreadClick(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('http://t-t-clan.ru/content/statistika-po-repleyam-ot-g4ce'),nil,nil,SW_SHOWNORMAL);
end;

procedure TAboutBox.Label_LinkToForumThreadClick(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar(Label_forum_thread.Caption),nil,nil,SW_SHOWNORMAL);
end;

procedure TAboutBox.Label_WoWpClick(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('http://forum.worldofwarplanes.ru/index.php?/topic/85849-1960-replaysstat-управление-реплеями-командная-статистик'),nil,nil,SW_SHOWNORMAL);
end;

procedure TAboutBox.ClanNameClick(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('http://ru.wargaming.net/clans/wot/1103/'),nil,nil,SW_SHOWNORMAL);
end;

procedure LoadLanguages();
var
ini :TINIFile;
lang :String;
begin
  ini := TiniFile.Create(ExtractFilePath(Application.ExeName)+'tanks.ini');
  lang := AboutBox.Label_current_language.Caption;
  with AboutBox do
  begin
    Caption := ini.ReadString(lang,'about','О программе');
    Label_product_desc.Caption := ini.ReadString(lang,'product_desc','Статистика по реплеям World of Tanks');
    Label_author.Caption := ini.ReadString(lang,'author','Автор:');
//    Label_comment1.Caption := ini.ReadString(lang,'comment1','Программа написана для облегчения  сбора статы по ротным боям клана');
//    Label_comment2.Caption := ini.ReadString(lang,'comment2','Проверенные версии: 8.11 - 1.9.0');
//    Label_comment3.Caption := ini.ReadString(lang,'comment3','Найти последнюю версию, оставить отзывы или предложения можно тут:');
    Label_LinkToClanThread.Caption := ini.ReadString(lang,'LinkToClanThread','Тема программы на сайте клана');
    Label_LinkToForumThread.Caption := ini.ReadString(lang,'LinkToForumThread_label','Тема программы на официальном форуме');


    Label_WoWp.Caption := ini.ReadString(lang,'WoWp','Версия для реплеев World of Warplanes');
    Label_thanks_to.Caption := ini.ReadString(lang,'thanks_to','И поддержать тут ;)');
    if( lang = 'ru') then
    begin
      Label_forum_thread.Caption := 'http://forum.worldoftanks.ru/index.php?/topic/1006102-0811-0912-replaysstat-командная-статистика-по-серии-реплеев-уп';
    end;
    if( lang = 'en') then
    begin
      Label_forum_thread.Caption := 'http://forum.worldoftanks.eu/index.php?/topic/699926-0811-140-replaysstat-several-replays-team-statistics-replay-manager/';
    end;

  end;



end;

procedure TAboutBox.FormShow(Sender: TObject);
begin

LoadLanguages();
OKButton.SetFocus;

end;

procedure TAboutBox.lb_th1Click(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('https://worldoftanks.ru/ru/community/accounts/753971-KycoK_Ov4arku/'),nil,nil,SW_SHOWNORMAL);
end;

procedure TAboutBox.lb_th2Click(Sender: TObject);
begin
ShellExecute(Handle,'open',PChar('https://worldoftanks.ru/ru/community/accounts/777556-RenamedUser_777556/'),nil,nil,SW_SHOWNORMAL);
end;

end.

