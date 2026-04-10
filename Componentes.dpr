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
  UAtividade43 in 'UAtividade43.pas' {frmAtividade43};

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
  Application.Run;
end.
