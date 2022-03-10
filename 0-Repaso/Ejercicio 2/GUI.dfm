object fLayout: TfLayout
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Cadenas'
  ClientHeight = 297
  ClientWidth = 560
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
    Left = 175
    Top = 0
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
    Left = 1
    Top = 32
    Width = 168
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
    Left = 1
    Top = 1
    Width = 168
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
    Left = 1
    Top = 63
    Width = 168
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
  object bNoSpace: TButton
    Left = 1
    Top = 94
    Width = 168
    Height = 25
    Caption = 'Sin espacios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = bNoSpaceClick
  end
  object bNoSpaceInverter: TButton
    Left = 1
    Top = 128
    Width = 168
    Height = 25
    Caption = 'Sin espacios invertida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = bNoSpaceInverterClick
  end
  object bCaracteres: TButton
    Left = 1
    Top = 159
    Width = 168
    Height = 25
    Caption = 'Cantidad de caracteres'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = bCaracteresClick
  end
  object bConsonantes: TButton
    Left = 0
    Top = 190
    Width = 168
    Height = 25
    Caption = 'Consonantes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = bConsonantesClick
  end
end
