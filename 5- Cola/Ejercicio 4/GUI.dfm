object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Divisor Total'
  ClientHeight = 317
  ClientWidth = 259
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object eElemento: TEdit
    Left = 103
    Top = 8
    Width = 51
    Height = 25
    NumbersOnly = True
    TabOrder = 0
  end
  object bCargar: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Cargar numero'
    TabOrder = 1
    OnClick = bCargarClick
  end
  object bReiniciar: TButton
    Left = 160
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Reiniciar cola'
    TabOrder = 2
    OnClick = bReiniciarClick
  end
  object mGUI: TMemo
    Left = 8
    Top = 39
    Width = 241
    Height = 241
    TabOrder = 3
  end
  object bDivisor: TButton
    Left = 8
    Top = 284
    Width = 241
    Height = 25
    Caption = 'Divisor total de la cola'
    TabOrder = 4
    OnClick = bDivisorClick
  end
end
