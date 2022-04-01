object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 357
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object n1: TLabel
    Left = 328
    Top = 37
    Width = 83
    Height = 13
    Caption = 'Inserte numero 1'
  end
  object n2: TLabel
    Left = 328
    Top = 80
    Width = 83
    Height = 13
    Caption = 'Inserte numero 2'
  end
  object Sumar: TButton
    Left = 32
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Sumar'
    TabOrder = 0
    OnClick = SumarClick
  end
  object numero1: TEdit
    Left = 176
    Top = 34
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object numero2: TEdit
    Left = 176
    Top = 77
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Restar: TButton
    Left = 32
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Restar '
    TabOrder = 3
  end
  object conv_bd: TButton
    Left = 32
    Top = 144
    Width = 257
    Height = 25
    Caption = 'Convertir un n'#250'mero binario a un n'#250'mero decimal'
    TabOrder = 4
  end
  object conv_db: TButton
    Left = 32
    Top = 192
    Width = 257
    Height = 25
    Caption = 'Convertir un n'#250'mero decimal a un n'#250'mero binario'
    TabOrder = 5
  end
  object andorxor: TButton
    Left = 32
    Top = 240
    Width = 257
    Height = 25
    Caption = 'Resolver la Operaci'#243'n Binaria AND, OR y XOR'
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 336
    Top = 208
    Width = 281
    Height = 141
    TabOrder = 7
  end
end
