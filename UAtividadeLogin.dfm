object frmAtividadelogin: TfrmAtividadelogin
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'UAtividadelogin'
  ClientHeight = 348
  ClientWidth = 209
  Color = clAzure
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  TextHeight = 30
  object lbl_login: TLabel
    Left = 33
    Top = 8
    Width = 107
    Height = 50
    Caption = 'LOGIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object lbl_senha: TLabel
    Left = 33
    Top = 164
    Width = 62
    Height = 30
    Caption = 'Senha:'
  end
  object lbl_usuario: TLabel
    Left = 33
    Top = 80
    Width = 75
    Height = 30
    Caption = 'Usu'#225'rio:'
  end
  object btn_acessar: TButton
    Left = 33
    Top = 264
    Width = 121
    Height = 41
    Caption = 'Acessar'
    TabOrder = 0
    OnClick = btn_acessarClick
  end
  object edt_usuario: TEdit
    Left = 33
    Top = 116
    Width = 121
    Height = 38
    TabOrder = 1
    OnKeyPress = edt_usuarioKeyPress
  end
  object edt_senha: TEdit
    Left = 33
    Top = 200
    Width = 121
    Height = 38
    TabOrder = 2
    OnChange = edt_senhaChange
    OnKeyPress = edt_senhaKeyPress
  end
end
