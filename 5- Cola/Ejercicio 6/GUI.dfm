object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Colas'
  ClientHeight = 386
  ClientWidth = 280
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
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 39
    Height = 16
    Caption = 'Cola 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 143
    Top = 8
    Width = 39
    Height = 16
    Caption = 'Cola 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 340
    Width = 264
    Height = 13
    Caption = 
      '----------------------------------------------------------------' +
      '--'
  end
  object bCola1: TButton
    Left = 8
    Top = 278
    Width = 129
    Height = 25
    Caption = 'Agregar a cola 1'
    TabOrder = 0
    OnClick = bCola1Click
  end
  object bCola2: TButton
    Left = 143
    Top = 278
    Width = 129
    Height = 25
    Caption = 'Agregar a cola 2'
    TabOrder = 1
    OnClick = bCola2Click
  end
  object mCola1: TMemo
    Left = 8
    Top = 22
    Width = 129
    Height = 220
    TabOrder = 2
  end
  object mCola2: TMemo
    Left = 143
    Top = 22
    Width = 129
    Height = 220
    TabOrder = 3
  end
  object bVerificar: TButton
    Left = 8
    Top = 309
    Width = 264
    Height = 25
    Caption = 'Verificar elementos'
    TabOrder = 4
    OnClick = bVerificarClick
  end
  object eCola1: TEdit
    Left = 8
    Top = 248
    Width = 129
    Height = 21
    TabOrder = 5
  end
  object eCola2: TEdit
    Left = 144
    Top = 248
    Width = 129
    Height = 21
    TabOrder = 6
  end
  object bReset: TButton
    Left = 7
    Top = 359
    Width = 265
    Height = 25
    Caption = 'Reiniciar colas'
    TabOrder = 7
    OnClick = bResetClick
  end
end
