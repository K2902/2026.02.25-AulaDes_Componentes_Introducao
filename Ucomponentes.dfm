object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastrar'
  ClientHeight = 395
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  TextHeight = 13
  object lblNome: TLabel
    Left = 32
    Top = 24
    Width = 49
    Height = 23
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblEndereço: TLabel
    Left = 32
    Top = 67
    Width = 79
    Height = 23
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 120
    Top = 16
    Width = 169
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtEndereco: TEdit
    Left = 120
    Top = 64
    Width = 169
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object gpbSexo: TGroupBox
    Left = 32
    Top = 112
    Width = 257
    Height = 81
    Caption = 'Sexo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbtMasc: TRadioButton
      Left = 96
      Top = 28
      Width = 113
      Height = 17
      Caption = 'Masculino'
      TabOrder = 0
    end
    object rbtFem: TRadioButton
      Left = 96
      Top = 53
      Width = 113
      Height = 17
      Caption = 'Feminino'
      TabOrder = 1
    end
  end
  object cbbCidade: TComboBox
    Left = 32
    Top = 208
    Width = 257
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Text = 'Selecione a cidade'
    Items.Strings = (
      'TUP'#195
      'BASTOS'
      'IACRI'
      'PARAPU'#195)
  end
  object gpbFrutas: TGroupBox
    Left = 32
    Top = 256
    Width = 257
    Height = 121
    Caption = 'Fruta(s) Favorita(s)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    object ccbMaca: TCheckBox
      Left = 9
      Top = 32
      Width = 97
      Height = 25
      Caption = 'Ma'#231#227
      TabOrder = 0
    end
    object ccbBanana: TCheckBox
      Left = 9
      Top = 63
      Width = 97
      Height = 24
      Caption = 'Banana'
      TabOrder = 1
    end
    object ccbUva: TCheckBox
      Left = 9
      Top = 93
      Width = 97
      Height = 25
      Caption = 'Uva'
      TabOrder = 2
    end
    object ccbMorango: TCheckBox
      Left = 128
      Top = 32
      Width = 97
      Height = 25
      Caption = 'Morango'
      TabOrder = 3
    end
    object ccbJaca: TCheckBox
      Left = 128
      Top = 63
      Width = 97
      Height = 24
      Caption = 'Jaca'
      TabOrder = 4
    end
    object ccbManga: TCheckBox
      Left = 128
      Top = 93
      Width = 97
      Height = 25
      Caption = 'Manga'
      TabOrder = 5
    end
  end
  object mmoRegistros: TMemo
    Left = 320
    Top = 16
    Width = 361
    Height = 320
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'CADASTROS')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object btnCadastrar: TButton
    Left = 320
    Top = 342
    Width = 97
    Height = 35
    Caption = 'Cadastrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btnCadastrarClick
  end
  object btnLimpar: TButton
    Left = 447
    Top = 342
    Width = 154
    Height = 35
    Caption = 'Limpar Registros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = btnLimparClick
  end
end
