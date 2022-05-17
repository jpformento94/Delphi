object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Ejercicio1'
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
    Left = 240
    Top = 8
    Width = 199
    Height = 13
    Caption = 'Ingrese un numero racional (formato 0,0)'
  end
  object Label2: TLabel
    Left = 240
    Top = 44
    Width = 207
    Height = 13
    Caption = 'Ingrese otro numero racional (formato 0,0)'
  end
  object restar: TButton
    Left = 32
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Restar'
    TabOrder = 0
    OnClick = restarClick
  end
  object comparar: TButton
    Left = 32
    Top = 163
    Width = 75
    Height = 25
    Caption = 'Comparar '
    TabOrder = 1
    OnClick = compararClick
  end
  object potencia: TButton
    Left = 32
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Potencia '
    TabOrder = 2
    OnClick = potenciaClick
  end
  object dividir: TButton
    Left = 32
    Top = 101
    Width = 75
    Height = 25
    Caption = 'Dividir'
    TabOrder = 3
    OnClick = dividirClick
  end
  object multiplicar: TButton
    Left = 32
    Top = 70
    Width = 75
    Height = 25
    Caption = 'Multiplicar'
    TabOrder = 4
    OnClick = multiplicarClick
  end
  object sumar: TButton
    Left = 32
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Sumar'
    TabOrder = 5
    OnClick = sumarClick
  end
  object Numero1: TEdit
    Left = 113
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 6
  end
  object Numero2: TEdit
    Left = 113
    Top = 41
    Width = 121
    Height = 21
    TabOrder = 7
  end
  object Mostrar: TMemo
    Left = 136
    Top = 80
    Width = 265
    Height = 113
    TabOrder = 8
  end
end
