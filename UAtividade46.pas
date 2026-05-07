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

  senha := '777';
  contarErro := -1;

  repeat
    inc(contarErro);

    if contarErro = 3 then
    begin
      application.messagebox('Você errou a senha 3 vezes o programa será fechado', 'AVISO', 16);
      Close;
      Break;
    end;

    vDigitado := InputBox('Acesso ao sistema',
    'Digite a senha correta' + #13 + 'para acessar o sistema','');

    if (vDigitado = '') then
    begin
      Close;
    end;

  until (senha = vDigitado) ;

  lblMensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro) + ' vez(es)';
  Close;

end;

end.
