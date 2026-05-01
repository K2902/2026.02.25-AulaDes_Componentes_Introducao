unit UAtividade47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmAtividade47 = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade47: TfrmAtividade47;

implementation

{$R *.dfm}

<<<<<<< Updated upstream
=======
procedure TfrmAtividade47.btn_addClick(Sender: TObject);
var numDigitado : array[1..6] of integer;
begin
  // while numDigitado[] <> numDigitado[6] do

   //numDigitado := strtoint(edt_num.Text);

   showmessage ('Número adicionado com sucesso')
end;

>>>>>>> Stashed changes
end.
