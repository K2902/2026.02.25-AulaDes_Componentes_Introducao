unit untAtv_55;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmAtividade55 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    lblTt: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtividade55: TfrmAtividade55;

implementation

{$R *.dfm}

procedure TfrmAtividade55.Button1Click(Sender: TObject);
var
  listaN : array[1..6] of Integer;
  cont1, cont2, nSort, contTt : Integer;
  mensagem : String;
begin

  contTt := 0;

  for cont1 := 1 to 6 do
  begin
    nSort := Random(9) + 1;
    //for cont2 := 1 to 6 do
    cont2 := 1;
    while cont2 <= 6 do
    begin
      if listaN[cont2] = nSort then
      begin
        nSort := Random(9) + 1;
        cont2 := 0;
        inc(contTt);
      end;
      inc(cont2);
    end;
    listaN[cont1] := nSort;
  end;

  mensagem := 'Números sorteados' + sLineBreak;
  for cont1 := 1 to 6 do
  begin
    mensagem := mensagem + IntToStr(listaN[cont1]) + sLineBreak;
  end;

  Application.MessageBox(pChar(mensagem),'Atividade', 0);
  lblTt.Caption := IntToStr(contTt);
end;

procedure TfrmAtividade55.Button2Click(Sender: TObject);
var
  listaN : array[1..6] of Integer;
  cont1, cont2, nSort, contTt : Integer;
  mensagem : String;
begin

  contTt := 0;

  for cont1 := 1 to 6 do
  begin
    nSort := Random(9) + 1;
    Application.MessageBox(pChar('Nº sort: ' + IntToStr(nSort)),'Atividade',0);
    cont2 := 1;
    while cont2 <= 6 do
    begin
      Application.MessageBox(pChar('Comp. P' + IntToStr(cont2) + 'do array com ' +'Nº sort: ' + IntToStr(nSort)),'Atividade',0);
      if listaN[cont2] = nSort then
      begin
        nSort := Random(9) + 1;
        cont2 := 0;
        inc(contTt);
        Application.MessageBox(pChar('Novo número sorteado: ' + IntToStr(nSort)),'Atividade',0);
      end;
      inc(cont2);
    end;
    listaN[cont1] := nSort;
    ListBox1.Items.Add(IntToStr(listaN[cont1]));
    Application.MessageBox('Verificar lista','Atividade',0);
  end;
  {
  mensagem := 'Números sorteados' + sLineBreak;

  for cont1 := 1 to 6 do
  begin
    mensagem := mensagem + IntToStr(listaN[cont1]) + sLineBreak;
  end;

  Application.MessageBox(pChar(mensagem),'Atividade', 0);
  }
  lblTt.Caption := IntToStr(contTt);

end;

end.
