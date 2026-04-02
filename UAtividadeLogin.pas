unit UAtividadeLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividadelogin = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividadelogin: TfrmAtividadelogin;

implementation

{$R *.dfm}

procedure TfrmAtividadelogin.btn_acessarClick(Sender: TObject);
var     senha, usuario: string;
    //usuario := 'jedi374';
    //senha := '123456';
begin
    usuario := 'jedi374';
    senha := '123456';
     if ((edt_usuario.Text = usuario) and (edt_senha.Text = senha)) then
     begin
       ShowMessage('Acesso Liberado');
     end
     else
     begin
       ShowMessage('Acesso Negado');
     end;

    edt_usuario.Text := '';
    edt_senha.Text :='';

end;

procedure TfrmAtividadelogin.edt_senhaChange(Sender: TObject);
begin
   edt_senha.PasswordChar := '2';
end;


procedure TfrmAtividadelogin.edt_usuarioKeyPress(Sender: TObject;
  var Key: Char);
begin
 edt_senha.SetFocus;
end;


procedure TfrmAtividadelogin.edt_senhaKeyPress(Sender: TObject; var Key: Char);
var     senha, usuario: string;
    //usuario := 'jedi374';
    //senha := '123456';
begin
    usuario := 'jedi374';
    senha := '123456';
     if ((edt_usuario.Text = usuario) and (edt_senha.Text = senha)) then
     begin
       ShowMessage('Acesso Liberado');
     end
     else
     begin
       ShowMessage('Acesso Negado');
     end;

    edt_usuario.Text := '';
    edt_senha.Text :='';
end;

end.
