unit UAtividade52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade52 = class(TForm)
    tmrContador: TTimer;
    procedure FormShow(Sender: TObject);
    procedure tmrContadorTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade52: TfrmAtividade52;

implementation

{$R *.dfm}

procedure TfrmAtividade52.FormShow(Sender: TObject);
begin
  tmrContador.Interval := 10; // 10 milisegundos
  tmrContador.Enabled := True;
end;

procedure TfrmAtividade52.tmrContadorTimer(Sender: TObject);
 var nInicio, nFim, resultado: integer;
var contador1, contador2 : Integer;
begin
  tmrContador.Enabled := False;

//
//  nInicio := StrToInt(edtInicio.Text);
//  nFim := StrToInt(edtFim.Text);
//  contador1 := 0;
//  contador2 := 0;
//
//  for contador1 := nInicio to nFim do
//  begin
//    mmoValores.Lines.Add('Tabuada do ' + IntToStr(contador1));
//    for contador2 := 1 to 10 do
//      begin
//        resultado := contador1 * contador2;
//        mmoValores.Lines.Add(IntToStr(contador1) + ' X ' + IntToStr(contador2) + ' = ' + IntToStr(resultado));
//      end;
//  end;
end;

end.
