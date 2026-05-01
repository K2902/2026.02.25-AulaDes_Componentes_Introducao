unit UAtividade48;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade48 = class(TForm)
    tmrContador: TTimer;
    procedure FormShow(Sender: TObject);
    procedure tmrContadorTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade48: TfrmAtividade48;

implementation

{$R *.dfm}

procedure TfrmAtividade48.FormShow(Sender: TObject);
begin
  tmrContador.Interval := 10; // 10 milisegundos
  tmrContador.Enabled := True;
end;

procedure TfrmAtividade48.tmrContadorTimer(Sender: TObject);

  var soma, contador: integer;
  media : real;
  numDigitado: string;

begin
  soma :=0;
  contador := 0;
  media := 0;

  tmrContador.Enabled := False;

  numDigitado :=  inputbox('Soma + média + quantos números foram digitados',
  'Digite números e quando quiser encerrar, digite 0', '');

  while (strtoint(numDigitado) <> 0) do
  begin
  inc(contador);
  soma := soma + strtoint(numdigitado);
  media := soma/contador;

  end;

end;

end.
