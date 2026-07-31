unit UAtividadeAdauto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_atividade00 = class(TForm)
    edt_nome: TEdit;
    lbl_introducao: TLabel;
    btn_adicionar: TButton;
    btn_limpar: TButton;
    lbx_nomes: TListBox;
    mmoNomes: TMemo;
    procedure btn_adicionarClick(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure edt_nomeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_atividade00: Tfrm_atividade00;

implementation

{$R *.dfm}

procedure Tfrm_atividade00.btn_adicionarClick(Sender: TObject);
begin
     mmoNomes.Lines.add(edt_nome.Text);
     lbx_nomes.Items.add(edt_nome.Text);
     edt_nome.Clear;
end;

procedure Tfrm_atividade00.btn_limparClick(Sender: TObject);
begin
    mmoNomes.Lines.Clear;
    lbx_nomes.Items.Clear;
end;

procedure Tfrm_atividade00.edt_nomeKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  mmoNomes.Lines.add(edt_nome.Text);
  lbx_nomes.Items.add(edt_nome.Text);
  edt_nome.Clear;
  end

end;

end.
