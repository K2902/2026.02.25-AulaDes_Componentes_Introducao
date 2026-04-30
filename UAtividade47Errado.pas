unit UAtividade47Errado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade47Errado = class(TForm)
    edt_num: TEdit;
    lbl_instrucao: TLabel;
    btn_separar: TButton;
    ltb_par: TListBox;
    ltb_impar: TListBox;
    btn_add: TButton;
    procedure btn_addClick(Sender: TObject);
    procedure btn_separarClick(Sender: TObject);
  private
   var mensagem1, mensagem2: string;
  public
//   var mensagem1, mensagem2: string;
  end;

var
  frmAtividade47Errado: TfrmAtividade47Errado;

implementation

{$R *.dfm}

procedure TfrmAtividade47Errado.btn_addClick(Sender: TObject);
  var contador1, numDigitado: integer;
  begin
  contador1 := 0;
  numDigitado := strtoint(edt_num.Text);
  repeat
  inc(contador1);
//  showmessage ('Número adicionado com sucesso');

  if Odd(numDigitado) then
  begin
  mensagem1 := mensagem1 + slinebreak + inttostr(numDigitado) + slinebreak;
  end
  else
  begin
  mensagem2 := mensagem2 + slinebreak + inttostr(numDigitado) + slinebreak;
  end;
  until (contador1 <=6);
   showmessage ('Números ímpares:'+ slinebreak + mensagem1 + slinebreak + 'Números pares:' + slinebreak + mensagem2)
  end;

//  showmessage('Números ímpares:'+ slinebreak + mensagem1 + slinebreak + 'Números pares:' + slinebreak + mensagem2);

//var numDigitado : array[1..6] of integer;
//begin
//   for edt_num.Text <> '';
//   numDigitado := strtoint(edt_num.Text);
//
//   showmessage ('Número adicionado com sucesso')
//end;

procedure TfrmAtividade47Errado.btn_separarClick(Sender: TObject);
begin
ltb_impar.Items.Add('Números ímpares:' + slinebreak+ mensagem1);
ltb_par.Items.Add('Números pares:' + slinebreak+ mensagem2);

end;

end.
