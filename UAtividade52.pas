unit UAtividade52;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TfrmAtividade52 = class(TForm)
    tmrContador: TTimer;
    procedure FormShow(Sender: TObject);
    procedure tmrContadorTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade52: TfrmAtividade52;

implementation

{$R *.dfm}

procedure TfrmAtividade52.FormShow(Sender: TObject);
begin
  tmrContador.Interval := 10; // 10 milisegundos
  tmrContador.Enabled := True;
end;

procedure TfrmAtividade52.tmrContadorTimer(Sender: TObject);
begin
  tmrContador.Enabled := False;
end;

end.
