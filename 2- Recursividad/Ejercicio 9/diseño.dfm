object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 406
  ClientWidth = 425
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 406
    Height = 178
    ColCount = 13
    DefaultColWidth = 30
    RowCount = 7
    TabOrder = 0
  end
  object bCargar: TButton
    Left = 8
    Top = 207
    Width = 75
    Height = 25
    Caption = 'Cargar'
    TabOrder = 1
    OnClick = bCargarClick
  end
  object mostrar: TMemo
    Left = 104
    Top = 257
    Width = 249
    Height = 96
    TabOrder = 2
  end
  object bCalcular: TButton
    Left = 184
    Top = 226
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = bCalcularClick
  end
end
