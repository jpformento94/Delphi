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
  object Multiplicador: TLabel
    Left = 375
    Top = 54
    Width = 59
    Height = 13
    Caption = 'Multiplicador'
  end
  object Numero: TLabel
    Left = 375
    Top = 27
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object n1: TEdit
    Left = 248
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Calcular: TButton
    Left = 88
    Top = 56
    Width = 113
    Height = 25
    Caption = 'Calcular pruducto'
    TabOrder = 1
    OnClick = CalcularClick
  end
  object Mostrar: TMemo
    Left = 48
    Top = 104
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object m1: TEdit
    Left = 248
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 3
  end
end
