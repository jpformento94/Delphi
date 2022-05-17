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
  object Label2: TLabel
    Left = 40
    Top = 21
    Width = 91
    Height = 13
    Caption = 'Ingrese un numero'
  end
  object Label1: TLabel
    Left = 40
    Top = 107
    Width = 99
    Height = 13
    Caption = 'Ingrese otro numero'
  end
  object N2: TEdit
    Left = 40
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '10'
  end
  object N1: TEdit
    Left = 40
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '8'
  end
  object Mostrar: TMemo
    Left = 232
    Top = 18
    Width = 185
    Height = 153
    TabOrder = 2
  end
  object Buscar: TButton
    Left = 112
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Buscar MCD'
    TabOrder = 3
    OnClick = BuscarClick
  end
end
