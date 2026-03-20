object frmAtividade26: TfrmAtividade26
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 26'
  ClientHeight = 384
  ClientWidth = 676
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -36
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 48
  object lbl_nome: TLabel
    Left = 0
    Top = 0
    Width = 106
    Height = 48
    Caption = 'Nome:'
  end
  object lbl_idade: TLabel
    Left = 6
    Top = 80
    Width = 97
    Height = 48
    Caption = 'Idade:'
  end
  object lbl_exibicao: TLabel
    Left = 8
    Top = 208
    Width = 526
    Height = 113
    AutoSize = False
    WordWrap = True
  end
  object edt_nome: TEdit
    Left = 109
    Top = 0
    Width = 417
    Height = 56
    TabOrder = 0
  end
  object edt_idade: TEdit
    Left = 109
    Top = 77
    Width = 233
    Height = 56
    NumbersOnly = True
    TabOrder = 1
  end
  object btn_exibir: TButton
    Left = 348
    Top = 62
    Width = 309
    Height = 131
    Caption = 'Exibir sua idade daqui 9083 anos'
    TabOrder = 2
    WordWrap = True
    OnClick = btn_exibirClick
  end
end
