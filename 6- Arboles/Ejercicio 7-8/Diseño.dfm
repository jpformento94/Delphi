object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 403
  ClientWidth = 824
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Memo: TMemo
    Left = 224
    Top = 86
    Width = 401
    Height = 153
    TabOrder = 0
  end
  object Alta: TButton
    Left = 56
    Top = 80
    Width = 91
    Height = 33
    Caption = 'Alta'
    TabOrder = 1
    OnClick = AltaClick
  end
  object Baja: TButton
    Left = 56
    Top = 128
    Width = 91
    Height = 33
    Caption = 'Baja'
    TabOrder = 2
    OnClick = BajaClick
  end
  object Modificar: TButton
    Left = 56
    Top = 176
    Width = 91
    Height = 33
    Caption = 'Modificar'
    TabOrder = 3
    OnClick = ModificarClick
  end
  object CargarArbol: TButton
    Left = 56
    Top = 223
    Width = 91
    Height = 34
    Caption = 'CargarArbol'
    TabOrder = 4
    OnClick = CargarArbolClick
  end
  object Buscar: TButton
    Left = 56
    Top = 271
    Width = 91
    Height = 33
    Caption = 'Buscar'
    TabOrder = 5
    OnClick = BuscarClick
  end
  object Mostrar: TButton
    Left = 56
    Top = 41
    Width = 91
    Height = 33
    Caption = 'Mostrar'
    TabOrder = 6
    OnClick = MostrarClick
  end
end
