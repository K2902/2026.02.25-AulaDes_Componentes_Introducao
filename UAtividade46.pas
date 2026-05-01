unit UAtividade46;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade46 = class(TForm)
    lblMensagem: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade46: TfrmAtividade46;

implementation

{$R *.dfm}

procedure TfrmAtividade46.FormShow(Sender: TObject);
var
  contarErro : Integer;
  vDigitado, senha : String;
begin
  senha := '123';
<<<<<<< Updated upstream
  contarErro := -1;
=======
  contarErro := 0;
>>>>>>> Stashed changes

  repeat
    inc(contarErro);

    if (contarErro >= 3) then
    begin
      Application.MessageBox('Você errou a três vezes, o programa ' +
      'será fechado', 'AVISO', 16);
      Application.Terminate;
      Break;
    end;

    vDigitado := InputBox('Acesso ao sistema',
<<<<<<< Updated upstream
    'Digite a senha correta ' + #13 + 'para acessar o sistema','');
=======
    'Digite a senha correta' + #13 + 'para acessar o sistema','');
    if contarErro = 3 then
    begin
    lbl_mensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro) + ' vez(es)';
    Exit;
    end;
>>>>>>> Stashed changes

    if (vDigitado = '') then
    begin
      Close;
    end;

<<<<<<< Updated upstream

  until (senha = vDigitado);

  lblMensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro) + ' vez(es)';
=======
  lbl_mensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro-1) + ' vez(es)';
>>>>>>> Stashed changes

end;

end.
