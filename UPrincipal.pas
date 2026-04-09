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
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btn_exemplo2Click(Sender: TObject);
    procedure btn_atividade2Click(Sender: TObject);
    procedure btn_atividade26Click(Sender: TObject);
    procedure btn_atividade27Click(Sender: TObject);
    procedure btn_atividadeloginClick(Sender: TObject);
    procedure btn_mensagemClick(Sender: TObject);
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
  UAtividade27, UAtividadeLogin, UAtividadeMessage;



procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
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

procedure TfrmPrincipal.btn_atividadeloginClick(Sender: TObject);
begin
  frmAtividadeLogin.ShowModal;
end;

end.
