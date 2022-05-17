object Form5: TForm5
  Left = 0
  Top = 0
  Caption = 'Form5'
  ClientHeight = 222
  ClientWidth = 509
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 21
    Width = 87
    Height = 13
    Caption = 'Ingrese expresion'
  end
  object Verificar: TButton
    Left = 48
    Top = 104
    Width = 105
    Height = 65
    Caption = 'Verificar'
    TabOrder = 0
    OnClick = VerificarClick
  end
  object Mostrar: TMemo
    Left = 200
    Top = 40
    Width = 273
    Height = 145
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object Texto: TEdit
    Left = 24
    Top = 40
    Width = 146
    Height = 21
    TabOrder = 2
    Text = '(A+B)'
  end
end
