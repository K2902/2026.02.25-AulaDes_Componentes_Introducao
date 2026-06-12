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
    procedure FormShow(Sender: TObject);
  private
    registrosContador,  qtdHomens, qtdMulheres, idadeMais, idadeMenos, somaIdade : Integer;
    contador1: integer;
    media : Real;
  public
    { Public declarations }
  end;

var
  frmAtv_54: TfrmAtv_54;

implementation

{$R *.dfm}

procedure TfrmAtv_54.btnInserirDadosClick(Sender: TObject);
var nome, mensagem, cadastro, padrao: string;
idade, sexo: integer;
valida, sohLetras : boolean;

begin

valida :=true;
mensagem := '';
padrao := '^[a-zA-Zá-üÁ-Ü\s]+$';

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
if idade > idadeMais then
begin
idadeMais := idade;
end;
if  idade < idadeMenos then
begin
idadeMenos := idade;
end;

if valida = false then
begin
  application.MessageBox(pchar(mensagem), 'Erro', MB_Ok + MB_ICONERROR);
end
else begin

  inc(registrosContador);

  cadastro := 'Registro nº: '+inttostr(registrosContador) + slinebreak;
  cadastro := cadastro + 'Nome: '+ nome+ slinebreak;
  cadastro := cadastro + 'Idade: '+ inttostr(idade)+ slinebreak;

  if sexo = 0 then
  begin
  cadastro := cadastro + 'Sexo: Masculino' + slinebreak;
     inc(qtdHomens)
  end
  else begin
      cadastro := cadastro + 'Sexo: Feminino' + slinebreak;
    inc(qtdMulheres)
  end;
   media := somaIdade/registrosContador;
end;

//somaIdade := somaIdade + idade;
//if idade >= 18 then
//begin
//inc(idadeMais);
//end
//else
//begin
//inc(idadeMenos);
//end;

mmoRegistros.lines.add(cadastro);
lblNmRegistroV.Caption  := inttostr(contador1);
lblMaiorIdadeV.Caption  := inttostr(idadeMais);
lblMenorIdadeV.Caption := inttostr(idadeMenos);
lblMediaIdadeV.Caption := FormatFloat('0.00', media);
lblTtHomensV.Caption :=   inttostr(qtdHomens);
lblTtMulheresV.Caption :=   inttostr(qtdMulheres);
lblNmRegistroV.Caption := inttostr(registrosContador);
end;

procedure TfrmAtv_54.btnLimparDadosClick(Sender: TObject);
begin
  mmoRegistros.Clear;
  contador1 := 0;
   idadeMais := 0;
   idadeMenos := 0;
   qtdHomens  := 0;
   qtdMulheres :=  0;
   registrosContador := 0;
   media := 0;
   lblNmRegistroV.Caption  := inttostr(contador1);
lblMaiorIdadeV.Caption  := inttostr(idadeMais);
lblMenorIdadeV.Caption := inttostr(idadeMenos);
lblMediaIdadeV.Caption := FormatFloat('0.00', media);
lblTtHomensV.Caption :=   inttostr(qtdHomens);
lblTtMulheresV.Caption :=   inttostr(qtdMulheres);
lblNmRegistroV.Caption := inttostr(registrosContador);
end;

procedure TfrmAtv_54.FormShow(Sender: TObject);
begin
   contador1 := 0;
   idadeMais := 0;
   idadeMenos := 150;
   qtdHomens  := 0;
   qtdMulheres :=  0;
   registrosContador := 0;
   media := 0

end;

end.
