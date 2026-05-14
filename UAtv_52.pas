unit UAtv_52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtv_52 = class(TForm)
    mmoValores: TMemo;
    lblInicio: TLabel;
    lblFim: TLabel;
    edtInicio: TEdit;
    edtFim: TEdit;
    btnExibir: TButton;
    procedure btnExibirClick(Sender: TObject);
  private
    nInicio, nFim, resultado, contador1, contador2 : Integer;
  public
    { Public declarations }
  end;

var
  frmAtv_52: TfrmAtv_52;

implementation

{$R *.dfm}

procedure TfrmAtv_52.btnExibirClick(Sender: TObject);


begin
nInicio := StrToInt(edtFim.Text);
  nFim := StrToInt(edtInicio.Text);
  contador1 := 0;
  contador2 := 0;

//  for contador1 := nInicio to nFim do
//  begin
//    mmoValores.Lines.Add('Tabuada do ' + IntToStr(contador2));
//    for contador2 := 1 to 10 do
//      begin
//        resultado := contador1 * contador2;
//        mmoValores.Lines.Add(IntToStr(contador1) + ' X ' + IntToStr(contador2) + ' = ' + IntToStr(resultado));
//        if contador1 = 3 then Continue;
//        if contador2 = 5 then Continue;
//      end;
//    mmoValores.Lines.Add('2 X 2 = 4');
//  end;
end;

end.
