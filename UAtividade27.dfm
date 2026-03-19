object frmAtividade27: TfrmAtividade27
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 27'
  ClientHeight = 512
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -36
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 48
  object lbl_nota2: TLabel
    Left = 184
    Top = 121
    Width = 107
    Height = 48
    Caption = 'Nota 2'
  end
  object lbl_nota1: TLabel
    Left = 32
    Top = 121
    Width = 107
    Height = 48
    Caption = 'Nota 1'
  end
  object lbl_nome: TLabel
    Left = 32
    Top = 32
    Width = 106
    Height = 48
    Caption = 'Nome:'
  end
  object lbl_nota3: TLabel
    Left = 32
    Top = 232
    Width = 107
    Height = 48
    Caption = 'Nota 3'
  end
  object lbl_exibicao: TLabel
    Left = 40
    Top = 364
    Width = 425
    Height = 100
    AutoSize = False
    WordWrap = True
  end
  object lbl_media: TLabel
    Left = 318
    Top = 286
    Width = 107
    Height = 56
    Caption = 'M'#233'dia:'
  end
  object lbl_nota4: TLabel
    Left = 184
    Top = 232
    Width = 107
    Height = 48
    Caption = 'Nota 4'
  end
  object lbl_media_resultado: TLabel
    Left = 460
    Top = 286
    Width = 93
    Height = 56
    AutoSize = False
    WordWrap = True
  end
  object btn_calcular: TButton
    Left = 318
    Top = 137
    Width = 137
    Height = 89
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btn_calcularClick
  end
  object edt_nota1: TEdit
    Left = 32
    Top = 175
    Width = 103
    Height = 56
    TabOrder = 1
  end
  object edt_nota2: TEdit
    Left = 184
    Top = 170
    Width = 103
    Height = 56
    NumbersOnly = True
    TabOrder = 2
  end
  object edt_nota3: TEdit
    Left = 32
    Top = 286
    Width = 103
    Height = 56
    NumbersOnly = True
    TabOrder = 3
  end
  object edt_nota4: TEdit
    Left = 184
    Top = 286
    Width = 103
    Height = 56
    NumbersOnly = True
    TabOrder = 4
  end
  object edt_nome: TEdit
    Left = 160
    Top = 29
    Width = 265
    Height = 56
    TabOrder = 5
  end
end
