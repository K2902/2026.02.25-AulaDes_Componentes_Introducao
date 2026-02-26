unit UExemplo03;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmExemplo03 = class(TForm)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmExemplo03: TfrmExemplo03;

implementation

{$R *.dfm}

procedure TfrmExemplo03.btn_maisClick(Sender: TObject);
begin
  lbl_sinal.Caption := btn_mais.Caption;
end;

end.
