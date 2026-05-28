unit UAtv_54;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

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
    media : Real;
  end;

var
  frmAtv_54: TfrmAtv_54;

implementation

{$R *.dfm}

procedure TfrmAtv_54.btnInserirDadosClick(Sender: TObject);
var nome, sexo, contador1, contador2, contador3, contador4, idadeMais, idadeMenos: string;
idade: integer;
begin
inc(contador1);
nome := edtNome.Text;
idade := edtIdade.Text;
somaIdade := somaIdade + strtoint(idade);
if idade >= 18 then
inc(idadeMais);
else if
begin
inc(idadeMenos);
end;
//if rbtFem.checked = true then
//sexo := 'Feminino';
//if rbtMasc.checked = true then
//begin
//sexo := 'Masculino';
//end;
//else
//sexo := 'não selecionado';

mmoRegistros.lines.add(inttostr(contador1)+'º Registro' +slinebreak
+'Nome: '+nome+slinebreak
+'Idade: '+idade+slinebreak)
//+'Sexo: '+sexo+slinebreak)

lblNmRegistroV  := inttostr(contador1);
lblMaiorIdadeV  := inttostr(idadeMais);
lblMenorIdadeV := inttostr(idadeMenos);
media := somaIdade/contador1;
lblMediaIdadeV  := floattostr(media);

lblTtHomensV
lblTtMulheresV
end;

procedure TfrmAtv_54.btnLimparDadosClick(Sender: TObject);
begin
  mmoRegistros.Clear;
  contador1 := 0;
  contador2 := 0;
end;

end.
