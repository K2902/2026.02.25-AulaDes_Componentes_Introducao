unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    btnExemplo01: TButton;
    btnAtividade01: TButton;
    btn_exemplo2: TButton;
    btn_exemplo3: TButton;
    procedure btnExemplo01Click(Sender: TObject);
    procedure btnAtividade01Click(Sender: TObject);
    procedure btn_exemplo2Click(Sender: TObject);
    procedure btn_exemplo3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses UExemplo01, UAtividade01, UExemplo02, UExemplo03;



procedure TfrmPrincipal.btnAtividade01Click(Sender: TObject);
begin
  frmAtividade01.ShowModal;
end;

procedure TfrmPrincipal.btnExemplo01Click(Sender: TObject);
begin
  frmExemplo01.ShowModal;
end;

procedure TfrmPrincipal.btn_exemplo2Click(Sender: TObject);
begin
  frmExemplo02.ShowModal;
end;

procedure TfrmPrincipal.btn_exemplo3Click(Sender: TObject);
begin
  frmExemplo03.ShowModal;
end;

end.
