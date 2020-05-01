program ReplaysStatWoT;

uses
  Vcl.Forms,
  replaysstat_src in 'replaysstat_src.pas' {ReplaysStatForm},
  about_src in 'about_src.pas' {AboutBox},
  utilites in 'utilites.pas',
  techscollect_src in 'techscollect_src.pas' {fm_techscollect};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TReplaysStatForm, ReplaysStatForm);
  Application.Run;
end.
