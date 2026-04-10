object frmCaixamensagem: TfrmCaixamensagem
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Caixa de Mensagem'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 30
  object btn_messagebox: TButton
    Left = 8
    Top = 24
    Width = 153
    Height = 73
    Caption = 'Message Box'
    TabOrder = 0
    OnClick = btn_messageboxClick
  end
  object Button2: TButton
    Left = 176
    Top = 120
    Width = 161
    Height = 57
    Caption = 'Button1'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 8
    Top = 120
    Width = 153
    Height = 57
    Caption = 'Button1'
    TabOrder = 2
  end
  object btn_inputbox: TButton
    Left = 176
    Top = 24
    Width = 161
    Height = 73
    Caption = 'Input Box'
    TabOrder = 3
    OnClick = btn_inputboxClick
  end
end
