unit UExemplo03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade02 = class(TForm)
    edt_vlr_1: TEdit;
    edt_vlr_2: TEdit;
    lbl_sinal: TLabel;
    lbl_resultado: TLabel;
    btn_mais: TButton;
    btn_menos: TButton;
    btn_div: TButton;
    btn_mult: TButton;
    btn_igual: TButton;
    procedure btn_maisClick(Sender: TObject);
    procedure btn_menosClick(Sender: TObject);
    procedure btn_multClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade02: TfrmAtividade02;

implementation

{$R *.dfm}

procedure TfrmAtividade02.btn_divClick(Sender: TObject);
begin
  lbl_sinal.Caption := btn_div.Caption
end;



procedure TfrmAtividade02.btn_maisClick(Sender: TObject);
begin
  lbl_sinal.Caption := btn_mais.Caption;
end;

procedure TfrmAtividade02.btn_menosClick(Sender: TObject);
begin
  lbl_sinal.Caption := btn_menos.Caption
end;

procedure TfrmAtividade02.btn_multClick(Sender: TObject);
begin
  lbl_sinal.Caption := btn_mult.Caption
end;

procedure TfrmAtividade02.btn_igualClick(Sender: TObject);
var n1, n2, total : Double;
//n1_div, n2_div, total_div : Float;
begin

if lbl_sinal.Caption = btn_mais.Caption
then begin
n1 :=  StrToFloat(edt_vlr_1.Text);
n2 :=  StrToFloat(edt_vlr_2.Text);
total := n1 + n2;
lbl_resultado.Caption := FloatToStr(total)
end
//lbl_resultado.Caption := IntToStr(StrToInt(edt_vlr_1.Text) + StrToInt(edt_vlr_2.Text));


else if lbl_sinal.Caption = btn_menos.Caption
then begin
n1 :=  StrToFloat(edt_vlr_1.Text);
n2 :=  StrToFloat(edt_vlr_2.Text);
total := n1 - n2;
lbl_resultado.Caption := FloatToStr(total)
end


else if lbl_sinal.Caption = btn_mult.Caption
then begin
n1 :=  StrToFloat(edt_vlr_1.Text);
n2 :=  StrToInt(edt_vlr_2.Text);
total := n1 * n2;
lbl_resultado.Caption := FloatToStr(total)
end

else if lbl_sinal.Caption = btn_div.Caption
then begin
n1 :=  StrToFloat(edt_vlr_1.Text);
n2 :=  StrToFloat(edt_vlr_2.Text);
//n1_div := n1;
//n2_div := n2;
total := n1/ n2;
lbl_resultado.Caption := FloatToStr(total);
end;

end;
{
else lbl_sinal.Caption := '?'
then begin
lbl_resultado.Caption := lbl_sinal.Caption;
end.
}


end.
