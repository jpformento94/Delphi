object fLayout: TfLayout
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Cuadrado latino'
  ClientHeight = 129
  ClientWidth = 265
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
    Left = 0
    Top = 104
    Width = 265
    Height = 25
    Align = alBottom
    Caption = 'Cuadrado latino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bCargarClick
    ExplicitLeft = 8
    ExplicitTop = 114
  end
  object sgMatriz: TStringGrid
    Left = 0
    Top = 0
    Width = 265
    Height = 104
    Align = alClient
    ColCount = 4
    DefaultColAlignment = taCenter
    RowCount = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitWidth = 283
    ExplicitHeight = 116
  end
end
