object Programa: TPrograma
  Left = 0
  Top = 0
  Caption = 'Programa'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Generar: TButton
    Left = 48
    Top = 56
    Width = 185
    Height = 25
    Caption = 'Generar una cadena parsimoniosa'
    TabOrder = 0
    OnClick = GenerarClick
  end
  object ingresar_mostrar: TEdit
    Left = 256
    Top = 58
    Width = 169
    Height = 21
    TabOrder = 1
  end
end
