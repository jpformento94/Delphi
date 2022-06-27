object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 399
  ClientWidth = 699
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
    Left = 64
    Top = 101
    Width = 133
    Height = 13
    Caption = 'Ingresar cantidad de claves'
  end
  object Claves: TEdit
    Left = 64
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 288
    Top = 34
    Width = 273
    Height = 168
    TabOrder = 1
  end
  object Mostrar: TButton
    Left = 80
    Top = 160
    Width = 81
    Height = 33
    Caption = 'Mostrar'
    TabOrder = 2
    OnClick = MostrarClick
  end
end
