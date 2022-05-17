object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Seven Segment Display'
  ClientHeight = 340
  ClientWidth = 506
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  StyleElements = [seFont, seClient]
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 9
    Width = 61
    Height = 16
    Caption = 'Numero 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 36
    Width = 61
    Height = 16
    Caption = 'Numero 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ssd: TValueListEditor
    Left = 8
    Top = 124
    Width = 210
    Height = 212
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Strings.Strings = (
      '0=1111110'
      '1=0110000'
      '2=1101101'
      '3=1111001'
      '4=0110011'
      '5=1011011'
      '6=1011111'
      '7=1110000'
      '8=1111111'
      '9=1111011')
    TabOrder = 0
    TitleCaptions.Strings = (
      'Numero'
      'Seven Segment Display')
    ColWidths = (
      64
      140)
  end
  object bIngresarNumero: TButton
    Left = 223
    Top = 8
    Width = 95
    Height = 25
    Caption = 'Ingresar numeros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bIngresarNumeroClick
  end
  object mGUI: TMemo
    Left = 223
    Top = 35
    Width = 275
    Height = 301
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object bClearMemo: TButton
    Left = 403
    Top = 8
    Width = 95
    Height = 25
    Caption = 'Limpiar memo'
    TabOrder = 3
    OnClick = bClearMemoClick
  end
  object bSumar: TButton
    Left = 8
    Top = 62
    Width = 95
    Height = 25
    Caption = 'Sumar (+)'
    TabOrder = 4
    OnClick = bSumarClick
  end
  object bRestar: TButton
    Left = 122
    Top = 62
    Width = 95
    Height = 25
    Caption = 'Restar (-)'
    TabOrder = 5
    OnClick = bRestarClick
  end
  object bMultiplicar: TButton
    Left = 8
    Top = 93
    Width = 95
    Height = 25
    Caption = 'Multiplicar (*)'
    TabOrder = 6
    OnClick = bMultiplicarClick
  end
  object bDividir: TButton
    Left = 122
    Top = 93
    Width = 95
    Height = 25
    Caption = 'Dividir (/)'
    TabOrder = 7
    OnClick = bDividirClick
  end
  object eN1: TEdit
    Left = 75
    Top = 8
    Width = 142
    Height = 21
    NumbersOnly = True
    TabOrder = 8
    Text = '142'
  end
  object eN2: TEdit
    Left = 75
    Top = 35
    Width = 142
    Height = 21
    NumbersOnly = True
    TabOrder = 9
    Text = '35'
  end
end
