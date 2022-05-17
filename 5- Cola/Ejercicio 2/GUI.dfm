object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Colas'
  ClientHeight = 314
  ClientWidth = 249
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
  object lCola1: TLabel
    Left = 40
    Top = 8
    Width = 51
    Height = 19
    Caption = 'Cola 1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lCola2: TLabel
    Left = 160
    Top = 8
    Width = 51
    Height = 19
    Caption = 'Cola 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mCola1: TMemo
    Left = 8
    Top = 33
    Width = 113
    Height = 241
    TabOrder = 0
  end
  object mCola2: TMemo
    Left = 127
    Top = 33
    Width = 113
    Height = 241
    TabOrder = 1
  end
  object bVerificar: TButton
    Left = 8
    Top = 280
    Width = 233
    Height = 25
    Caption = 'Verificar si son iguales'
    TabOrder = 2
    OnClick = bVerificarClick
  end
end
