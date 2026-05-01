unit UAtividade46Timer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmAtividade46Timer = class(TForm)
    lbl_mensagem: TLabel;
    Timer2: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade46Timer: TfrmAtividade46Timer;

implementation

{$R *.dfm}

procedure TfrmAtividade46Timer.FormShow(Sender: TObject);
begin
  Timer2.Interval := 10; // 10 milisegundos
  Timer2.Enabled := True;
end;

procedure TfrmAtividade46Timer.Timer(Sender: TObject);

var
  contarErro : Integer;
  vDigitado, senha : String;
begin

  Timer2.Enabled := False;

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

  lbl_mensagem.Caption := 'Você errou a senha ' + IntToStr(contarErro) + ' vez(es)';
  Close;

end;

end.
