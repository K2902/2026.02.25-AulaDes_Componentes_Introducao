unit UAtividade44;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade44 = class(TForm)
    edt_nome: TEdit;
    lbl_nome: TLabel;
    chk_pergunta1: TCheckBox;
    chk_pergunta2: TCheckBox;
    chk_pergunta3: TCheckBox;
    chk_pergunta4: TCheckBox;
    chk_pergunta5: TCheckBox;
    lbl_investigacao: TLabel;
    btn_adicionar: TButton;
    lbl_suspeito: TLabel;
    sbx_vertical: TScrollBox;
    procedure btn_adicionarClick(Sender: TObject);
  private
    var nome : string;
    contador : Integer;
  public
    { Public declarations }
  end;

var
  frmAtividade44: TfrmAtividade44;

implementation

{$R *.dfm}

procedure TfrmAtividade44.btn_adicionarClick(Sender: TObject);
begin
  nome := edt_nome.Text;
  contador := 0;
  if chk_pergunta1.Checked = true then
  Inc(contador);
  if chk_pergunta2.Checked = true then
  Inc(contador);
  if chk_pergunta3.Checked = true then
  Inc(contador);
  if chk_pergunta4.Checked = true then
  Inc(contador);
  if chk_pergunta5.Checked = true then
  Inc(contador);
  if contador = 2 then





  lbl_suspeito.Caption := lbl_suspeito.Caption + slinebreak + nome;

end;

end.
