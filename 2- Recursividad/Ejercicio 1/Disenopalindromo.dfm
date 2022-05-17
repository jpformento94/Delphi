object Programa: TPrograma
  Left = 0
  Top = 0
  Caption = 'Programa'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object chain_texto: TEdit
    Left = 248
    Top = 42
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object palindromo: TButton
    Left = 80
    Top = 40
    Width = 146
    Height = 25
    Caption = 'Verificar si es palindromo'
    TabOrder = 1
    OnClick = palindromoClick
  end
end
