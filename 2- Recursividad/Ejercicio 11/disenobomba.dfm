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
  object Label1: TLabel
    Left = 399
    Top = 43
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label2: TLabel
    Left = 399
    Top = 70
    Width = 32
    Height = 13
    Caption = 'Bomba'
  end
  object Numero: TEdit
    Left = 272
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object bomba: TEdit
    Left = 272
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Calcular: TButton
    Left = 56
    Top = 48
    Width = 105
    Height = 25
    Caption = 'Realizar calculo'
    TabOrder = 2
    OnClick = CalcularClick
  end
  object Mostrar: TMemo
    Left = 96
    Top = 104
    Width = 185
    Height = 89
    TabOrder = 3
    Visible = False
  end
end
