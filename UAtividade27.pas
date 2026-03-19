unit UAtividade27;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade27 = class(TForm)
    btn_calcular: TButton;
    lbl_nota2: TLabel;
    lbl_nota1: TLabel;
    lbl_nome: TLabel;
    lbl_nota3: TLabel;
    lbl_exibicao: TLabel;
    lbl_media: TLabel;
    lbl_nota4: TLabel;
    edt_nota1: TEdit;
    edt_nota2: TEdit;
    edt_nota3: TEdit;
    edt_nota4: TEdit;
    edt_nome: TEdit;
    lbl_media_resultado: TLabel;
    procedure btn_calcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade27: TfrmAtividade27;

implementation

{$R *.dfm}

procedure TfrmAtividade27.btn_calcularClick(Sender: TObject);
     var n1, n2, n3, n4, media : Double;
begin
n1 :=  StrToFloat(edt_nota1.Text);
n2 :=  StrToFloat(edt_nota2.Text);
n3 :=  StrToFloat(edt_nota3.Text);
n4 :=  StrToFloat(edt_nota4.Text);
media := (n1+n2+n3+n4)/4;
lbl_media_resultado.Caption := FloatToStr(media);
lbl_exibicao.Caption := 'Aluno(a): ' + edt_nome.Text + sLineBreak+ 'Média: ' + FloatToStr(media);
//lbl_media_resultado.Caption := (StrToInt(edt_nota1.Text)+ StrToInt(edt_nota2.Text)+StrToInt(edt_nota3.Text)+StrToInt(edt_nota4.Text))/4 ;

end;

end.
