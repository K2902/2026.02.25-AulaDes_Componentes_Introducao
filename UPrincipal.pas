unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExemplo01: TButton;
    btnAtividade01: TButton;
    btn_exemplo2: TButton;
    btn_atividade2: TButton;
    btn_atividade26: TButton;
    btn_atividade27: TButton;
    btn_atividadelogin: TButton;
    btn_mensagem: TButton;
    btn_atividade43: TButton;
    btn_atividade44: TButton;
    btn_atividade46: TButton;
    btn_exemplo24: TButton;
    btn_atividade47: TButton;
    btn_atividade47Errado: TButton;
    btn_atividade46timer: TButton;
    btn_atividade48: TButton;
    btn_atividade49: TButton;
    btn_atividade50: TButton;
    btn_atividade51: TButton;
    btn_atividade52: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btn_exemplo2Click(Sender: TObject);
    procedure btn_atividade2Click(Sender: TObject);
    procedure btn_atividade26Click(Sender: TObject);
    procedure btn_atividade27Click(Sender: TObject);
    procedure btn_atividadeloginClick(Sender: TObject);
    procedure btn_mensagemClick(Sender: TObject);
    procedure btn_atividade43Click(Sender: TObject);
    procedure btn_atividade44Click(Sender: TObject);
    procedure btn_exemplo24Click(Sender: TObject);
    procedure btn_atividade46Click(Sender: TObject);
    procedure btn_atividade47Click(Sender: TObject);
    procedure btn_atividade46timerClick(Sender: TObject);
    procedure btn_atividade47ErradoClick(Sender: TObject);
    procedure btn_atividade48Click(Sender: TObject);
    procedure btn_atividade49Click(Sender: TObject);
    procedure btn_atividade50Click(Sender: TObject);
    procedure btn_atividade51Click(Sender: TObject);
    procedure btn_atividade52Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UExemplo02, UExemplo03, UAtividade26,
  UAtividade27, UAtividadeLogin, UAtividadeMessage, UAtividade43, UAtividade44,
  UEx_24, UAtividade46, UAtividade46Timer, UAtividade47Errado, UAtividade47,
  UAtividade48, UAtividade49, UAtividade50, UAtividade51, UAtividade52;



procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btn_exemplo24Click(Sender: TObject);
begin
 frmEx_24.showmodal;
end;

procedure TfrmPrincipal.btn_exemplo2Click(Sender: TObject);
begin
  frmExemplo02.ShowModal;
end;

procedure TfrmPrincipal.btn_mensagemClick(Sender: TObject);
begin
   frmCaixamensagem.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade26Click(Sender: TObject);
begin
 frmAtividade26.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade27Click(Sender: TObject);
begin
      frmAtividade27.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade2Click(Sender: TObject);
begin
  frmAtividade02.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade43Click(Sender: TObject);
begin
  frmAtividade43.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade44Click(Sender: TObject);
begin
  frmAtividade44.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade46Click(Sender: TObject);
begin
  frmAtividade46.showModal;
end;

procedure TfrmPrincipal.btn_atividade46timerClick(Sender: TObject);
begin
  frmAtividade46Timer.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade47Click(Sender: TObject);
begin
  frmAtividade47.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade47ErradoClick(Sender: TObject);
begin
    frmAtividade47Errado.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade48Click(Sender: TObject);
begin
  frmAtividade48.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade49Click(Sender: TObject);
begin
  frmAtividade49.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade50Click(Sender: TObject);
begin
  frmAtividade50.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade51Click(Sender: TObject);
begin
  frmAtividade51.ShowModal;
end;

procedure TfrmPrincipal.btn_atividade52Click(Sender: TObject);
begin
  frmAtividade52.ShowModal;
end;

procedure TfrmPrincipal.btn_atividadeloginClick(Sender: TObject);
begin
  frmAtividadeLogin.ShowModal;
end;

end.
