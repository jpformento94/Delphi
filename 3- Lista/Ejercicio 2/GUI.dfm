object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 365
  ClientWidth = 248
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lL1: TLabel
    Left = 8
    Top = 40
    Width = 54
    Height = 19
    Caption = 'Lista 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lL2: TLabel
    Left = 127
    Top = 40
    Width = 54
    Height = 19
    Caption = 'Lista 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mLista1: TMemo
    Left = 8
    Top = 65
    Width = 113
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object mLista2: TMemo
    Left = 127
    Top = 65
    Width = 113
    Height = 193
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bCrear: TButton
    Left = 8
    Top = 8
    Width = 233
    Height = 25
    Caption = 'Crear listas'
    TabOrder = 2
    OnClick = bCrearClick
  end
  object bMultiplo: TButton
    Left = 8
    Top = 264
    Width = 233
    Height = 25
    Caption = 'Multiplo'
    TabOrder = 3
    OnClick = bMultiploClick
  end
  object mResultado: TMemo
    Left = 8
    Top = 296
    Width = 233
    Height = 65
    TabOrder = 4
  end
end
