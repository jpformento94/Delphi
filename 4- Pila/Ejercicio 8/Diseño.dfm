object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 232
  ClientWidth = 410
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
    Left = 8
    Top = 21
    Width = 97
    Height = 13
    Caption = 'Ingrese una palabra'
  end
  object Texto: TEdit
    Left = 8
    Top = 40
    Width = 161
    Height = 49
    Align = alCustom
    BevelInner = bvNone
    Constraints.MinHeight = 49
    TabOrder = 0
    Text = 'neuquen'
  end
  object Verificar: TButton
    Left = 24
    Top = 118
    Width = 139
    Height = 25
    Caption = 'Verificar si es palindromo'
    TabOrder = 1
    OnClick = VerificarClick
  end
  object Mostrar: TMemo
    Left = 200
    Top = 24
    Width = 169
    Height = 185
    TabOrder = 2
  end
end
