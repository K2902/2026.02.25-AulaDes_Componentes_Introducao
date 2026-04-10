unit UAtividade43;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade43 = class(TForm)
    btn_calcular: TButton;
    lbl_nome: TLabel;
    lbl_valor_hora: TLabel;
    lbl_horas_mes: TLabel;
    edt_nome: TEdit;
    edt_valor_hora: TEdit;
    edt_horas_mes: TEdit;
    procedure btn_calcularClick(Sender: TObject);
  private
    var resultado_ir, resultado_inss, resultado_sindicato, resultado_fgts, resultado_liquido, resultado_bruto : Double;
    var resultado_ir2 : string;
  public
    { Public declarations }
  end;

var
  frmAtividade43: TfrmAtividade43;

implementation

{$R *.dfm}

procedure TfrmAtividade43.btn_calcularClick(Sender: TObject);
begin
  resultado_bruto := StrToFloat(edt_valor_hora.Text) * StrToFloat(edt_horas_mes.Text);

  if resultado_bruto <= 1900 then
  begin
  resultado_ir := 0 ;
  resultado_ir2 := 'Isento'
  end

  else if resultado_bruto <= 3500 then
  begin
  resultado_ir := resultado_bruto - (resultado_bruto *0.95);
  resultado_ir2 := '5%'
  end

  else if resultado_bruto <= 7500 then
  begin
  resultado_ir := resultado_bruto - (resultado_bruto * 0.9);
  resultado_ir2 := '10%'
  end

  else
  begin
  resultado_ir := resultado_bruto - (resultado_bruto *0.8);
  resultado_ir2 := '20%';
  end;

  resultado_inss := resultado_bruto - (resultado_bruto * 0.9);
  resultado_sindicato := resultado_bruto - (resultado_bruto * 0.97);
  resultado_liquido := resultado_bruto - resultado_inss - resultado_sindicato - resultado_ir ;
  resultado_fgts := resultado_bruto - (resultado_bruto * 0.89);

  showmessage('Nome: '+ edt_nome.Text +slinebreak +
  'Salário Bruto: R$ '+ FormatFloat('0.00',resultado_bruto)+ slinebreak+
  '(-) IR('+ resultado_ir2 +'): R$ '+FormatFloat('0.00',resultado_ir)+slinebreak+
  '(-) INSS(10%): R$ '+FormatFloat('0.00',resultado_inss)+slinebreak+
  '(-) Sindicato(3%): R$ '+FormatFloat('0.00',resultado_sindicato)+slinebreak+
  'FGTS(11%): R$ '+FormatFloat('0.00',resultado_fgts)+slinebreak+
  'Total de desconto: R$ '+FormatFloat('0.00',resultado_sindicato+resultado_ir+resultado_inss)+slinebreak+
  'Salário Líquido: R$ '+ FormatFloat('0.00',resultado_liquido))
end;

end.
