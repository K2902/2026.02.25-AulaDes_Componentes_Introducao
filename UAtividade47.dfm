object frmAtividade47: TfrmAtividade47
  Left = 0
  Top = 0
  Caption = 'Atividade 47'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
<<<<<<< Updated upstream
  TextHeight = 15
=======
  TextHeight = 45
  object lbl_instrucao: TLabel
    Left = 8
    Top = 8
    Width = 440
    Height = 90
    Caption = 'Digite 6 n'#250'meros inteiros para separar em pares e '#237'mpares'
    WordWrap = True
  end
  object edt_num: TEdit
    Left = 8
    Top = 133
    Width = 225
    Height = 49
    NumbersOnly = True
    TabOrder = 0
  end
  object btn_separar: TButton
    Left = 359
    Top = 135
    Width = 114
    Height = 49
    Caption = 'Separar'
    TabOrder = 1
  end
  object ltb_par: TListBox
    Left = 8
    Top = 200
    Width = 225
    Height = 217
    ItemHeight = 45
    TabOrder = 2
  end
  object ltb_impar: TListBox
    Left = 248
    Top = 200
    Width = 225
    Height = 217
    ItemHeight = 45
    TabOrder = 3
  end
  object btn_add: TButton
    Left = 248
    Top = 135
    Width = 105
    Height = 47
    Caption = 'Add'
    TabOrder = 4
    OnClick = btn_addClick
  end
>>>>>>> Stashed changes
end
