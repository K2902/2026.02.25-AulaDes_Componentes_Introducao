unit UAtv47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmAtv47 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtv47: TfrmAtv47;

implementation

{$R *.dfm}

procedure TfrmAtv47.FormShow(Sender: TObject);
var
  cont, n : Integer;
  par, impar : String;
begin
  par := 'Números pares: ' + #13;
  impar := 'Números ímpares: ' + #13;
  for cont := 1 to 6 do
  begin
    n := StrToInt(InputBox('Digite um número: ', 'ATV_47',''));
    if (Odd(n)) then
    begin
      impar := impar + IntToStr(n) + #13;
    end
    else
    begin
      par := par + IntToStr(n) + #13;
    end;
  end;

  Application.MessageBox(pChar(par + #13 + impar),'ATV_47', MB_OK + MB_ICONINFORMATION);
  Application.Terminate;
end;

end.
