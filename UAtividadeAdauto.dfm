object frm_atividade00: Tfrm_atividade00
  Left = 0
  Top = 0
  Caption = 'Atividade Adauto'
  ClientHeight = 481
  ClientWidth = 931
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 30
  object lbl_introducao: TLabel
    Left = 24
    Top = 64
    Width = 265
    Height = 30
    Caption = 'Adicionar nomes '#224' lista'
  end
  object edt_nome: TEdit
    Left = 24
    Top = 100
    Width = 265
    Height = 45
    TabOrder = 0
    OnKeyPress = edt_nomeKeyPress
  end
  object btn_adicionar: TButton
    Left = 24
    Top = 160
    Width = 161
    Height = 41
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = btn_adicionarClick
  end
  object btn_limpar: TButton
    Left = 24
    Top = 207
    Width = 161
    Height = 42
    Caption = 'Limpar lista'
    TabOrder = 2
    OnClick = btn_limparClick
  end
  object mmoNomes: TMemo
    Left = 295
    Top = 61
    Width = 241
    Height = 308
    TabOrder = 3
  end
  object lbx_nomes: TListBox
    Left = 584
    Top = 61
    Width = 233
    Height = 308
    ItemHeight = 30
    TabOrder = 4
  end
end
