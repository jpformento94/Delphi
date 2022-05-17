object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Matriz'
  ClientHeight = 365
  ClientWidth = 894
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bSafe: TButton
    Left = 8
    Top = 8
    Width = 201
    Height = 25
    Caption = 'Camino m'#225's seguro'
    TabOrder = 0
    OnClick = bSafeClick
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 84
    Width = 417
    Height = 221
    ColCount = 10
    DefaultColWidth = 40
    DefaultRowHeight = 30
    RowCount = 7
    TabOrder = 1
  end
  object Cargar: TButton
    Left = 488
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cargar'
    TabOrder = 2
    OnClick = CargarClick
  end
  object mostrar: TMemo
    Left = 232
    Top = 8
    Width = 369
    Height = 70
    TabOrder = 3
  end
end
