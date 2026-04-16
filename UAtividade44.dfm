object frmAtividade44: TfrmAtividade44
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Atividade 44'
  ClientHeight = 586
  ClientWidth = 1058
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 32
  object lbl_nome: TLabel
    Left = 40
    Top = 19
    Width = 97
    Height = 38
    Caption = 'Nome:'
  end
  object lbl_investigacao: TLabel
    Left = 40
    Top = 98
    Width = 337
    Height = 32
    Caption = '        Perguntas Investiga'#231#227'o'
  end
  object lbl_suspeito: TLabel
    Left = 383
    Top = 19
    Width = 354
    Height = 341
    Caption = 'Supeitos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object edt_nome: TEdit
    Left = 120
    Top = 19
    Width = 257
    Height = 38
    TabOrder = 0
  end
  object chk_pergunta1: TCheckBox
    Left = 40
    Top = 136
    Width = 337
    Height = 41
    Caption = 'Telefonou para a v'#237'tima?'
    TabOrder = 1
  end
  object chk_pergunta2: TCheckBox
    Left = 40
    Top = 183
    Width = 337
    Height = 41
    Caption = 'Esteve no local do crime?'
    TabOrder = 2
  end
  object chk_pergunta3: TCheckBox
    Left = 40
    Top = 224
    Width = 337
    Height = 47
    Caption = 'Mora perto da v'#237'tima?'
    TabOrder = 3
  end
  object chk_pergunta4: TCheckBox
    Left = 40
    Top = 272
    Width = 337
    Height = 41
    Caption = 'Devia para a v'#237'tima?'
    TabOrder = 4
  end
  object chk_pergunta5: TCheckBox
    Left = 40
    Top = 319
    Width = 337
    Height = 41
    Caption = 'J'#225' trabalhou com a v'#237'tima?'
    TabOrder = 5
  end
  object btn_adicionar: TButton
    Left = 40
    Top = 63
    Width = 337
    Height = 34
    Caption = 'Adicionar a lista de suspeitos >>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -22
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = btn_adicionarClick
  end
  object sbx_vertical: TScrollBox
    Left = 704
    Top = 19
    Width = 33
    Height = 341
    TabOrder = 7
  end
end
