object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Puntaje Pac-Man'
  ClientHeight = 277
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bRecorrido1: TButton
    Left = 8
    Top = 8
    Width = 129
    Height = 25
    Caption = 'Recorrido 1'
    TabOrder = 0
    OnClick = bRecorrido1Click
  end
  object mRecorrido1: TMemo
    Left = 8
    Top = 39
    Width = 129
    Height = 226
    TabOrder = 1
  end
  object bRecorrido2: TButton
    Left = 143
    Top = 10
    Width = 129
    Height = 25
    Caption = 'Recorrido2'
    TabOrder = 2
    OnClick = bRecorrido2Click
  end
  object mRecorrido2: TMemo
    Left = 143
    Top = 39
    Width = 129
    Height = 226
    TabOrder = 3
  end
end
