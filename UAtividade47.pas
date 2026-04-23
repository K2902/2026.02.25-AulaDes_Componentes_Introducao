unit UAtividade47;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade47 = class(TForm)
    edt_num: TEdit;
    lbl_instrucao: TLabel;
    btn_separar: TButton;
    ltb_par: TListBox;
    ltb_impar: TListBox;
    btn_add: TButton;
    procedure btn_addClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade47: TfrmAtividade47;

implementation

{$R *.dfm}

procedure TfrmAtividade47.btn_addClick(Sender: TObject);
var numDigitado : array[1..6] of integer;
begin
   for edt_num.Text <> '';
   numDigitado := strtoint(edt_num.Text);

   showmessage ('Número adicionado com sucesso')
end;

end.
