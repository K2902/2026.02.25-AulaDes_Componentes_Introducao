unit UAtividade51;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade51 = class(TForm)
    tmrContador: TTimer;
    procedure FormShow(Sender: TObject);
    procedure tmrContadorTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade51: TfrmAtividade51;

implementation

{$R *.dfm}

procedure TfrmAtividade51.FormShow(Sender: TObject);
begin
  tmrContador.Interval := 10; // 10 milisegundos
  tmrContador.Enabled := True;
end;

procedure TfrmAtividade51.tmrContadorTimer(Sender: TObject);
  var numDigitado, contador, numDiv: integer;
begin
  tmrContador.Enabled := False;

  numDigitado := strtoint(inputbox('Atividade 51', 'Digite o valor para verificação:', ''));

  for contador := numDigitado downto 1 do
    begin
      if (numDigitado mod contador = 0) then
      begin
        inc(numDiv)
      end;
      
    end;

    if (numDiv = 2) then
    begin
      application.messagebox(Pchar('O número ' + inttostr(numDigitado) + ' é primo'), 'Atividade 51', 64);
    end
    else
    begin
      application.messagebox(Pchar('O número ' + inttostr(numDigitado) + ' não é primo'), 'Atividade 51', 64);
    end;
    close;

end;

end.
