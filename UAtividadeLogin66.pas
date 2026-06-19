unit UAtividadeLogin66;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividadelogin66 = class(TForm)
    lbl_login: TLabel;
    lbl_senha: TLabel;
    lbl_usuario: TLabel;
    btn_acessar: TButton;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    procedure btn_acessarClick(Sender: TObject);
    procedure edt_senhaChange(Sender: TObject);
    procedure edt_usuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    var  user, password : string;
    procedure AcessoNegado;
    function AcessoLiberado : string;
  public
    { Public declarations }
  end;

var
  frmAtividadelogin66: TfrmAtividadelogin66;

implementation

{$R *.dfm}
procedure TfrmAtividadelogin66.AcessoNegado;
begin
 Application.MessageBox(Pchar('Acesso negado às' +timetostr(now)+'.'), 'Procedure sem parâmetro', 0);
end;

function TfrmAtividadelogin66.AcessoLiberado: string;
var mensagem: string;
begin
mensagem := 'Acesso liberado.';
  Result := mensagem
end;


procedure TfrmAtividadelogin66.btn_acessarClick(Sender: TObject);
var     senha, usuario: string;
    //usuario := 'jedi374';    não dar valor para variável ainda
    //senha := '123456';       não dar valor para variável ainda
begin
    usuario := edt_usuario.Text;
    senha := edt_senha.Text ;
     if ((usuario = user) and (senha = password)) then
     begin
       AcessoLiberado;
       Close;
     end
     else
     begin
        AcessoNegado;
     end;

    edt_usuario.Clear;
    edt_senha.Clear;

end;

procedure TfrmAtividadelogin66.edt_senhaChange(Sender: TObject);
begin
   edt_senha.PasswordChar := '*';
end;


procedure TfrmAtividadelogin66.edt_usuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    edt_senha.SetFocus;
    Key := #0; // evita o "beep" do ENTER
  end;
end;


procedure TfrmAtividadelogin66.FormCreate(Sender: TObject);
begin
user := 'jedi374';
password := '123456';
end;

procedure TfrmAtividadelogin66.edt_senhaKeyPress(Sender: TObject; var Key: Char);
var     senha, usuario: string;
begin
  if Key = #13 then
  begin
    usuario := edt_usuario.Text;
    senha := edt_senha.Text ;
     if ((usuario = user) and (senha = password)) then
     begin
       AcessoLiberado;
       Close;
     end
     else
     begin
       AcessoNegado;
     end;

    edt_usuario.Clear;
    edt_senha.Clear;
  end;
end;

end.
