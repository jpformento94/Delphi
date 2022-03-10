object fLayout: TfLayout
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Archivos de texto'
  ClientHeight = 366
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 19
  object bMostarArchivo: TButton
    Left = 0
    Top = 8
    Width = 154
    Height = 25
    Caption = 'Cargar en archivo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bMostarArchivoClick
  end
  object mMemo1: TMemo
    Left = 160
    Top = 0
    Width = 497
    Height = 366
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bMinuscula: TButton
    Left = 0
    Top = 39
    Width = 154
    Height = 25
    Caption = 'Cargar en minuscula'
    TabOrder = 2
    OnClick = bMinusculaClick
  end
  object bSplit: TButton
    Left = 0
    Top = 70
    Width = 154
    Height = 25
    Caption = 'Split'
    TabOrder = 3
    OnClick = bSplitClick
  end
  object bClearMemo: TButton
    Left = 0
    Top = 341
    Width = 154
    Height = 25
    Caption = 'Limpiar Memo'
    TabOrder = 4
    OnClick = bClearMemoClick
  end
end
