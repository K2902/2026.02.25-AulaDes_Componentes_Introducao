unit UAtividade50;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade50 = class(TForm)
    tmrContador: TTimer;
    procedure FormShow(Sender: TObject);
    procedure tmrContadorTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade50: TfrmAtividade50;

implementation

{$R *.dfm}

procedure TfrmAtividade50.FormShow(Sender: TObject);
begin
  tmrContador.Interval := 10; // 10 milisegundos
  tmrContador.Enabled := True;
end;

procedure TfrmAtividade50.tmrContadorTimer(Sender: TObject);
begin
  tmrContador.Enabled := False;
end;

end.
