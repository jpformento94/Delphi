object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 323
  ClientWidth = 446
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bCargar: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Cargar arbol'
    TabOrder = 0
    OnClick = bCargarClick
  end
  object mGUI: TMemo
    Left = 127
    Top = 8
    Width = 311
    Height = 307
    TabOrder = 1
  end
  object bHojas: TButton
    Left = 8
    Top = 40
    Width = 113
    Height = 25
    Caption = 'Hojas'
    TabOrder = 2
    OnClick = bHojasClick
  end
  object bNodosInternos: TButton
    Left = 8
    Top = 72
    Width = 113
    Height = 25
    Caption = 'Nodos Internos'
    TabOrder = 3
    OnClick = bNodosInternosClick
  end
  object bNivel: TButton
    Left = 8
    Top = 104
    Width = 113
    Height = 25
    Caption = 'Nivel de hojas'
    TabOrder = 4
    OnClick = bNivelClick
  end
end
