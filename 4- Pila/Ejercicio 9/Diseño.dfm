object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
    Left = 24
    Top = 72
    Width = 67
    Height = 13
    Caption = 'Ingresar base'
  end
  object Label2: TLabel
    Left = 24
    Top = 26
    Width = 118
    Height = 13
    Caption = 'Ingresar n'#250'mero decimal'
  end
  object Numero: TEdit
    Left = 24
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '7'
  end
  object Base: TEdit
    Left = 24
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '8'
  end
  object Convertir: TButton
    Left = 160
    Top = 60
    Width = 75
    Height = 25
    Caption = 'Convertir'
    TabOrder = 2
    OnClick = ConvertirClick
  end
  object Mostrar: TMemo
    Left = 256
    Top = 72
    Width = 153
    Height = 129
    TabOrder = 3
  end
end
