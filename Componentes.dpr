program Componentes;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UExemplo01 in 'UExemplo01.pas' {frmExemplo01},
  UAtividade01 in 'UAtividade01.pas' {frmAtividade01},
  UExemplo02 in 'UExemplo02.pas' {frmExemplo02},
  UExemplo03 in 'UExemplo03.pas' {frmAtividade02},
  UAtividade26 in 'UAtividade26.pas' {frmAtividade26},
  UAtividade27 in 'UAtividade27.pas' {frmAtividade27},
  UAtividadeLogin in 'UAtividadeLogin.pas' {frmAtividadelogin},
  UAtividadeMessage in 'UAtividadeMessage.pas' {frmCaixamensagem},
  UAtividade43 in 'UAtividade43.pas' {frmAtividade43},
  UAtividade44 in 'UAtividade44.pas' {frmAtividade44},
  UEx_24 in 'UEx_24.pas' {frmEx_24},
  UAtividade46Timer in 'UAtividade46Timer.pas' {frmAtividade46Timer},
  UAtividade47Errado in 'UAtividade47Errado.pas' {frmAtividade47Errado},
  UAtividade46 in 'UAtividade46.pas' {frmAtividade46},
  UAtividade47 in 'UAtividade47.pas' {frmAtividade47},
  UAtividade48 in 'UAtividade48.pas' {frmAtividade48},
  UAtividade49 in 'UAtividade49.pas' {frmAtividade49},
  UAtividade50 in 'UAtividade50.pas' {frmAtividade50},
  UAtividade51 in 'UAtividade51.pas' {frmAtividade51},
  UAtividade52 in 'UAtividade52.pas' {frmAtividade52};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExemplo01, frmExemplo01);
  Application.CreateForm(TfrmAtividade01, frmAtividade01);
  Application.CreateForm(TfrmExemplo02, frmExemplo02);
  Application.CreateForm(TfrmAtividade02, frmAtividade02);
  Application.CreateForm(TfrmAtividade26, frmAtividade26);
  Application.CreateForm(TfrmAtividade27, frmAtividade27);
  Application.CreateForm(TfrmAtividadelogin, frmAtividadelogin);
  Application.CreateForm(TfrmCaixamensagem, frmCaixamensagem);
  Application.CreateForm(TfrmAtividade43, frmAtividade43);
  Application.CreateForm(TfrmAtividade44, frmAtividade44);
  Application.CreateForm(TfrmEx_24, frmEx_24);
  Application.CreateForm(TfrmAtividade46Timer, frmAtividade46Timer);
  Application.CreateForm(TfrmAtividade47Errado, frmAtividade47Errado);
  Application.CreateForm(TfrmAtividade46, frmAtividade46);
  Application.CreateForm(TfrmAtividade47, frmAtividade47);
  Application.CreateForm(TfrmAtividade48, frmAtividade48);
  Application.CreateForm(TfrmAtividade49, frmAtividade49);
  Application.CreateForm(TfrmAtividade50, frmAtividade50);
  Application.CreateForm(TfrmAtividade51, frmAtividade51);
  Application.CreateForm(TfrmAtividade52, frmAtividade52);
  Application.Run;
end.
