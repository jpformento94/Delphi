object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Conjuntos'
  ClientHeight = 201
  ClientWidth = 447
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
  object bCargar: TButton
    Left = 8
    Top = 8
    Width = 137
    Height = 25
    Caption = 'Cargar conjunto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bCargarClick
  end
  object bBuscar: TButton
    Left = 8
    Top = 40
    Width = 137
    Height = 25
    Caption = 'Buscar subconjunto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bBuscarClick
  end
  object Memo: TMemo
    Left = 151
    Top = 8
    Width = 257
    Height = 185
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
end
