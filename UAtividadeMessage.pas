unit UAtividadeMessage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCaixamensagem = class(TForm)
    btn_messagebox: TButton;
    Button2: TButton;
    Button3: TButton;
    btn_inputbox: TButton;
    procedure btn_messageboxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCaixamensagem: TfrmCaixamensagem;

implementation

{$R *.dfm}

procedure TfrmCaixamensagem.btn_messageboxClick(Sender: TObject);
var resultado,resultado2 : integer;
begin
      resultado := messagebox(application.Handle, 'Você deseja entregar seu primeiro filho para nossa instituição??', 'Termos de contrato', mb_iconquestion + mb_yesnocancel + mb_defbutton1);
      //resultado := messagebox(application.Handle, 'Você deseja doar seu primeiro filho para nossa instituição??', 'Termos de contrato', 35);
      if resultado = idYes then
      //if resultado = 6 then
      showmessage('Contrato assinado.')
      else
      if resultado = idNo then
      //if resultado = 7 then
      begin
        resultado2 := messagebox(application.handle, 'Você tem certeza?' , '????', mb_yesno + mb_iconexclamation + mb_defbutton2);
        //messagebox(application.handle, 'Você tem certeza?' , '????', 308);
        if resultado2 = idYes then
        //if resultado = 6 then
        showmessage('Até mais.')
        else
        if resultado2 = idNo then
        //if resultado = 7 then
        showmessage('Contrato assinado.')
      end
      else
      if resultado = idCancel then
      showmessage('Cancelando?')

end;

end.
