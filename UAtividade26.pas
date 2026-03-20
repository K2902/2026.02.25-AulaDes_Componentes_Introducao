unit UAtividade26;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade26 = class(TForm)
    edt_nome: TEdit;
    edt_idade: TEdit;
    lbl_nome: TLabel;
    lbl_idade: TLabel;
    lbl_exibicao: TLabel;
    btn_exibir: TButton;
    procedure btn_exibirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade26: TfrmAtividade26;

implementation

{$R *.dfm}

procedure TfrmAtividade26.btn_exibirClick(Sender: TObject);
     var nome : string;
     var idade, somaIdade: integer;

begin
nome := edt_nome.Text;
somaIdade := strtoint(edt_idade.text)+ 9083;
lbl_exibicao.Caption := nome + ' daqui a 9083 anos terá '+inttostr(somaIdade)+' anos! :)';


end;

end.
