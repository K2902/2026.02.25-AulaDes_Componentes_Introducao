unit Ucomponentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCadastro = class(TForm)
    edtNome: TEdit;
    edtEndereco: TEdit;
    lblNome: TLabel;
    lblEndereço: TLabel;
    gpbSexo: TGroupBox;
    rbtMasc: TRadioButton;
    rbtFem: TRadioButton;
    cbbCidade: TComboBox;
    gpbFrutas: TGroupBox;
    ccbMaca: TCheckBox;
    ccbBanana: TCheckBox;
    ccbUva: TCheckBox;
    ccbMorango: TCheckBox;
    ccbJaca: TCheckBox;
    ccbManga: TCheckBox;
    mmoRegistros: TMemo;
    btnCadastrar: TButton;
    btnLimpar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    { Private declarations }
    nRegistro : Integer;
    contador1: integer;
//    contador1 := 0;
  public
    { Public declarations }
  end;

var
  frmCadastro: TfrmCadastro;

implementation

{$R *.dfm}

procedure TfrmCadastro.btnCadastrarClick(Sender: TObject);
var nome, endereco, sexo: string;
var frutas: string;
begin
inc(contador1);
nome := edtNome.Text;
endereco := edtEndereco.Text;
if rbtFem.checked = true then
sexo := 'Feminino';
if rbtMasc.checked = true then
begin
sexo := 'Masculino';
end;
if ccbBanana.state  = cbchecked then
begin
  frutas := frutas + 'Banana' +slinebreak
end;
if ccbMaca.state  = cbchecked then
begin
  frutas := frutas + 'Maçã' +slinebreak
end;
if ccbMorango.state  = cbchecked then
begin
  frutas := frutas + 'Morango' +slinebreak
end;
if ccbJaca.state  = cbchecked then
begin
  frutas := frutas + 'Jaca' +slinebreak
end;
if ccbUVa.state  = cbchecked then
begin
  frutas := frutas + 'Uva' +slinebreak
end;
if ccbManga.state  = cbchecked then
begin
  frutas := frutas + 'Manga' +slinebreak
end;
//else
//sexo := 'não selecionado';

mmoRegistros.lines.add(inttostr(contador1)+'º Registro' +slinebreak+'Nome: '+nome+slinebreak
+'Endereço: '+endereco+slinebreak+'Cidade: '+(cbbCidade.Items[cbbCidade.ItemIndex])+slinebreak
+'Sexo: '+sexo+slinebreak+'Frutas: '+slinebreak+frutas)
end;


procedure TfrmCadastro.btnLimparClick(Sender: TObject);
begin
   mmoRegistros.Clear;
   contador1 := 0;
end;

end.
