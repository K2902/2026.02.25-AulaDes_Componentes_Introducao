unit UAtividade46Errado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade46Errado = class(TForm)
    lbl_mensagem: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade46Errado: TfrmAtividade46Errado;

implementation

{$R *.dfm}

procedure TfrmAtividade46Errado.FormShow(Sender: TObject);

var
  contarErro : Integer;
  vDigitado, senha : String;
begin
  senha := '1475369';
  contarErro := -1;

  repeat
    inc(contarErro);

    vDigitado := InputBox('Acesso ao sistema',
    'Digite a senha correta' + #13 + 'para acessar o sistema','');
    if contarErro = 2 then
    break;

  until (senha = vDigitado) ;

  lbl_mensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro) + ' vez(es)';

end;

end.
