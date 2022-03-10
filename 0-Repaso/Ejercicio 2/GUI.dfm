object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadenas'
  ClientHeight = 309
  ClientWidth = 544
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object mVisualizacion: TMemo
    Left = 152
    Top = 8
    Width = 385
    Height = 297
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object bSoloMayusculas: TButton
    Left = 9
    Top = 39
    Width = 137
    Height = 25
    Caption = 'Solo mayusculas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bSoloMayusculasClick
  end
  object bCargarTexto: TButton
    Left = 8
    Top = 8
    Width = 137
    Height = 25
    Caption = 'Cargar texto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = bCargarTextoClick
  end
  object bSoloMinusculas: TButton
    Left = 8
    Top = 72
    Width = 137
    Height = 25
    Caption = 'Solo minusculas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = bSoloMinusculasClick
  end
end
