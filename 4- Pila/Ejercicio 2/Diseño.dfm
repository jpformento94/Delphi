object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 272
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object label1: TLabel
    Left = 175
    Top = 35
    Width = 236
    Height = 13
    Caption = 'Ingrese elementos separados por - (guion medio)'
  end
  object Label2: TLabel
    Left = 175
    Top = 75
    Width = 236
    Height = 13
    Caption = 'Ingrese elementos separados por - (guion medio)'
  end
  object Label3: TLabel
    Left = 120
    Top = 8
    Width = 125
    Height = 13
    Caption = 'Solo un char por elemento'
  end
  object Iguales: TButton
    Left = 200
    Top = 112
    Width = 281
    Height = 25
    Caption = 'Determinar si sus contenidos son exactamente iguales'
    TabOrder = 0
    OnClick = IgualesClick
  end
  object Pila1: TEdit
    Left = 48
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1-2-3-4-5-6'
  end
  object Pila2: TEdit
    Left = 48
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1-2-3-4-5-6'
  end
  object Mostrar: TMemo
    Left = 175
    Top = 143
    Width = 194
    Height = 106
    TabOrder = 3
  end
end
