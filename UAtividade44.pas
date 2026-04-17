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
    contador  : Integer;
    contador1: Integer;
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
  if edt_nome.Text =  '' then
  showmessage('Campo do nome não foi preenchido');
  if edt_nome.Text <> '' then
  Inc(contador1);
  if contador = 2 then
  begin
     lbl_suspeito.Caption := lbl_suspeito.Caption
     + slinebreak +slinebreak + inttostr(contador1) + 'º Nome: ' +nome + slinebreak
     + 'Veredito: Supeito';
  end
  else if ((contador = 3) or (contador = 4)) then
  begin
     lbl_suspeito.Caption := lbl_suspeito.Caption
     + slinebreak +slinebreak + inttostr(contador1) + 'º Nome: ' +nome + slinebreak
     + 'Veredito: Cúmplice';
  end
  else if contador = 5 then
  begin
     lbl_suspeito.Caption := lbl_suspeito.Caption
     + slinebreak +slinebreak + inttostr(contador1) + 'º Nome: '+nome + slinebreak
     + 'Veredito: Assassino';
  end
  else
  begin
    lbl_suspeito.Caption := lbl_suspeito.Caption
     + slinebreak +slinebreak + inttostr(contador1) + 'º Nome: ' +nome + slinebreak
     + 'Veredito: Inocente';
  end;





  //lbl_suspeito.Caption := lbl_suspeito.Caption + slinebreak + nome;

end;

end.
