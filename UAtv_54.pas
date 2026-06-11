unit UAtv_54;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.RegularExpressions;

type
  TfrmAtv_54 = class(TForm)
    lblNome: TLabel;
    edtNome: TEdit;
    lblIdade: TLabel;
    edtIdade: TEdit;
    rgpSexo: TRadioGroup;
    mmoRegistros: TMemo;
    gpbDados: TGroupBox;
    lblNmRegistro: TLabel;
    lblTtHomens: TLabel;
    lblTtMulheres: TLabel;
    lblMaiorIdade: TLabel;
    lblMenorIdade: TLabel;
    lblMediaIdade: TLabel;
    lblNmRegistroV: TLabel;
    lblTtHomensV: TLabel;
    lblTtMulheresV: TLabel;
    lblMaiorIdadeV: TLabel;
    lblMenorIdadeV: TLabel;
    lblMediaIdadeV: TLabel;
    btnInserirDados: TButton;
    btnLimparDados: TButton;
    procedure btnLimparDadosClick(Sender: TObject);
    procedure btnInserirDadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    registros,  qtdHomens, qtdMulheres, idadeMais, idadeMenos, somaIdade : Integer;
    contador1, contador2: integer;
    media : Real;
  end;

var
  frmAtv_54: TfrmAtv_54;

implementation

{$R *.dfm}

procedure TfrmAtv_54.btnInserirDadosClick(Sender: TObject);
var nome, mensagem, cadastro, padrao: string;
idade, sexo: integer;
valida, sohLetras : boolean;
contador1, contador2, contador3, contador4, idadeMais, idadeMenos: integer;

begin

valida :=true;
mensagem := '';
padrao := '\b[A-Z]\b';

nome := edtNome.Text;
idade := strtoint(edtIdade.Text);
somaIdade := somaIdade + (idade);
sexo := rgpSexo.ItemIndex;

sohLetras := TRegEx.IsMatch(nome, Padrao, [roIgnoreCase]);
if not sohLetras then
begin
valida := false;
mensagem := mensagem + '- O nome deve ser composto apenas por letras' + slinebreak;

end;

if (nome = '') or (nome.Length < 3) then
begin
  valida := false;
  mensagem := mensagem + '- O nome deve ser preenchido' + slinebreak;
end;
if idade > 150 then
begin
  valida := false;
  mensagem := mensagem + '- Digite idade menor que 150' + slinebreak;
end;
if sexo = -1 then
begin
 valida := false;
  mensagem := mensagem + '- Selecione o sexo' + slinebreak;
end;

if valida = false then
begin
  application.MessageBox(pchar(mensagem), 'Erro', MB_Ok + MB_ICONERROR)
end
else begin
  if sexo = 0 then

  cadastro := 'Registro nº: ' + slinebreak;
  cadastro := cadastro + 'Nome: '+ nome+ slinebreak;
  cadastro := cadastro + 'Idade: '+ inttostr(idade)+ slinebreak;

  if sexo = 0 then
  begin
    cadastro := cadastro + 'Sexo: Feminino';
  end
  else begin
     cadastro := cadastro + 'Sexo: Masculino';
  end;




  cadastro := cadastro + 'Sexo: '+ nome+ slinebreak;
  cadastro := cadastro + 'Nome: '+ nome+ slinebreak;
end;


//somaIdade := somaIdade + (idade);
//if idade >= 18 then
//inc(idadeMais);
//else if
//begin
//inc(idadeMenos);
//end;
//if rbtFem.checked = true then
//sexo := 'Feminino';
//if rbtMasc.checked = true then
//begin
//sexo := 'Masculino';
//end;
//else
//sexo := 'não selecionado';

//mmoRegistros.lines.add(inttostr(contador1)+'º Registro' +slinebreak
//+'Nome: '+nome+slinebreak
//+'Idade: '+idade+slinebreak)
//+'Sexo: '+sexo+slinebreak)
//
//lblNmRegistroV  := inttostr(contador1);
//lblMaiorIdadeV  := inttostr(idadeMais);
//lblMenorIdadeV := inttostr(idadeMenos);
//media := somaIdade/contador1;
//lblMediaIdadeV  := floattostr(media);
//
//lblTtHomensV
//lblTtMulheresV
end;

procedure TfrmAtv_54.btnLimparDadosClick(Sender: TObject);
begin
  mmoRegistros.Clear;
  contador1 := 0;
  contador2 := 0;
end;

end.
