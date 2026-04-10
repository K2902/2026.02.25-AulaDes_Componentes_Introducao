object frmAtividade43: TfrmAtividade43
  Left = 0
  Top = 0
  Caption = 'Atividade 43'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -32
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 45
  object lbl_nome: TLabel
    Left = 88
    Top = 56
    Width = 95
    Height = 45
    Caption = 'Nome:'
  end
  object lbl_valor_hora: TLabel
    Left = 59
    Top = 123
    Width = 124
    Height = 45
    Caption = 'R$/Hora:'
  end
  object lbl_horas_mes: TLabel
    Left = 21
    Top = 190
    Width = 162
    Height = 45
    Caption = 'Horas/M'#234's:'
  end
  object btn_calcular: TButton
    Left = 200
    Top = 272
    Width = 169
    Height = 49
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = btn_calcularClick
  end
  object edt_nome: TEdit
    Left = 200
    Top = 48
    Width = 337
    Height = 53
    TabOrder = 1
  end
  object edt_valor_hora: TEdit
    Left = 200
    Top = 120
    Width = 337
    Height = 53
    TabOrder = 2
  end
  object edt_horas_mes: TEdit
    Left = 200
    Top = 187
    Width = 337
    Height = 53
    TabOrder = 3
  end
end
