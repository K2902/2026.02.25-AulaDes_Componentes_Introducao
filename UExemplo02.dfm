object frmExemplo02: TfrmExemplo02
  Left = 0
  Top = 0
  Caption = 'Exemplo 2'
  ClientHeight = 117
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 45
  object lbl_sinal: TLabel
    Left = 135
    Top = 8
    Width = 18
    Height = 45
    Caption = '+'
  end
  object lbl_resultado: TLabel
    Left = 368
    Top = 8
    Width = 25
    Height = 53
  end
  object edt_vlr_1: TEdit
    Left = 8
    Top = 8
    Width = 121
    Height = 53
    TabOrder = 0
  end
  object edt_vlr_2: TEdit
    Left = 168
    Top = 8
    Width = 121
    Height = 53
    TabOrder = 1
  end
  object btn_resultado: TButton
    Left = 295
    Top = 8
    Width = 54
    Height = 53
    Caption = '='
    TabOrder = 2
    OnClick = btn_resultadoClick
  end
end
