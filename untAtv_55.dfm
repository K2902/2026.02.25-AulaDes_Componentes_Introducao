object frmAtividade55: TfrmAtividade55
  Left = 0
  Top = 0
  Caption = 'Atividade 55'
  ClientHeight = 325
  ClientWidth = 707
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -27
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 33
  object Label1: TLabel
    Left = 8
    Top = 88
    Width = 255
    Height = 33
    Caption = 'N'#250'mero de tentativas'
  end
  object lblTt: TLabel
    Left = 281
    Top = 88
    Width = 30
    Height = 33
    Caption = '00'
  end
  object Button1: TButton
    Left = 24
    Top = 8
    Width = 297
    Height = 41
    Caption = 'ATIVIDADE 55'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 584
    Top = 8
    Width = 115
    Height = 309
    ItemHeight = 33
    TabOrder = 1
  end
  object ListBox2: TListBox
    Left = 552
    Top = 8
    Width = 26
    Height = 309
    ItemHeight = 33
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 24
    Top = 152
    Width = 297
    Height = 49
    Caption = 'Com listBox'
    TabOrder = 3
    OnClick = Button2Click
  end
end
