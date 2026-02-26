object frmExemplo03: TfrmExemplo03
  Left = 0
  Top = 0
  Caption = 'Exemplo 3'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 45
  object lbl_sinal: TLabel
    Left = 184
    Top = 32
    Width = 14
    Height = 45
    Caption = '?'
  end
  object lbl_resultado: TLabel
    Left = 472
    Top = 32
    Width = 49
    Height = 53
  end
  object edt_vlr_1: TEdit
    Left = 8
    Top = 32
    Width = 153
    Height = 53
    TabOrder = 0
  end
  object edt_vlr_2: TEdit
    Left = 240
    Top = 32
    Width = 121
    Height = 53
    TabOrder = 1
  end
  object btn_mais: TButton
    Left = 8
    Top = 128
    Width = 65
    Height = 49
    Caption = '+'
    TabOrder = 2
    OnClick = btn_maisClick
  end
  object btn_menos: TButton
    Left = 95
    Top = 128
    Width = 58
    Height = 49
    Caption = '-'
    TabOrder = 3
  end
  object btn_div: TButton
    Left = 255
    Top = 128
    Width = 58
    Height = 49
    Caption = '/'
    TabOrder = 4
  end
  object btn_mult: TButton
    Left = 176
    Top = 128
    Width = 57
    Height = 49
    Caption = 'x'
    TabOrder = 5
  end
  object btn_igual: TButton
    Left = 384
    Top = 32
    Width = 73
    Height = 53
    Caption = '='
    TabOrder = 6
  end
end
