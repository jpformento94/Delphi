object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 272
  ClientWidth = 500
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mPila: TMemo
    Left = 8
    Top = 8
    Width = 153
    Height = 225
    TabOrder = 0
  end
  object mLista: TMemo
    Left = 175
    Top = 8
    Width = 153
    Height = 225
    TabOrder = 1
  end
  object mCola: TMemo
    Left = 342
    Top = 8
    Width = 153
    Height = 225
    TabOrder = 2
  end
  object bPila: TButton
    Left = 8
    Top = 239
    Width = 153
    Height = 25
    Caption = 'Crear pila'
    TabOrder = 3
    OnClick = bPilaClick
  end
  object bLista: TButton
    Left = 175
    Top = 239
    Width = 153
    Height = 25
    Caption = 'Elementos en comun'
    TabOrder = 4
    OnClick = bListaClick
  end
  object bCola: TButton
    Left = 342
    Top = 239
    Width = 153
    Height = 25
    Caption = 'Crear cola'
    TabOrder = 5
    OnClick = bColaClick
  end
end
