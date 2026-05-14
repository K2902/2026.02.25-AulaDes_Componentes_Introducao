unit UEx_26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmEx_26 = class(TForm)
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEx_26: TfrmEx_26;

implementation

{$R *.dfm}

procedure TfrmEx_26.FormShow(Sender: TObject);
var
  contador : Integer;
begin
  contador := 200;

  for contador := 200 to 1000 do
  begin
    if (contador mod 38 = 0) then
    begin
      Application.MessageBox(Pchar('O primeiro número divisivel por 38 entre ' +
      '200 e 1000 é: ' + IntToStr(contador)),'Número encontrado!', 64);
      Break;
    end;
  end;

  Close;

end;

end.
