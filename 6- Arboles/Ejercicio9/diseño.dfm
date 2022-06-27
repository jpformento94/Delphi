object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 397
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 232
    Top = 96
    Width = 273
    Height = 153
    TabOrder = 0
  end
  object Button1: TButton
    Left = 56
    Top = 120
    Width = 122
    Height = 41
    Caption = 'Cargar Arbol Binario'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 24
    Top = 176
    Width = 185
    Height = 49
    Caption = 'Convertir a arbol AVL'
    TabOrder = 2
    OnClick = Button2Click
  end
end
