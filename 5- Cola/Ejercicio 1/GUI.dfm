object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Colas'
  ClientHeight = 357
  ClientWidth = 524
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 47
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
  object Label2: TLabel
    Left = 167
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
  object Label4: TLabel
    Left = 395
    Top = 186
    Width = 57
    Height = 19
    Caption = 'Numero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 395
    Top = 211
    Width = 58
    Height = 19
    Caption = 'Posicion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 263
    Top = 8
    Width = 114
    Height = 19
    Caption = 'Cola invertida'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object bCrear1: TButton
    Left = 394
    Top = 31
    Width = 122
    Height = 25
    Caption = 'Crear cola 1'
    TabOrder = 0
    OnClick = bCrear1Click
  end
  object bCrear2: TButton
    Left = 394
    Top = 62
    Width = 122
    Height = 25
    Caption = 'Crear cola 2'
    TabOrder = 1
    OnClick = bCrear2Click
  end
  object mCola1: TMemo
    Left = 7
    Top = 33
    Width = 122
    Height = 232
    TabOrder = 2
  end
  object mCola2: TMemo
    Left = 135
    Top = 33
    Width = 122
    Height = 232
    TabOrder = 3
  end
  object bConcatenar: TButton
    Left = 394
    Top = 93
    Width = 122
    Height = 25
    Caption = 'Concatenar colas'
    TabOrder = 4
    OnClick = bConcatenarClick
  end
  object bBuscar: TButton
    Left = 394
    Top = 124
    Width = 122
    Height = 25
    Caption = 'Buscar elemento'
    TabOrder = 5
    OnClick = bBuscarClick
  end
  object bInsertar: TButton
    Left = 394
    Top = 238
    Width = 122
    Height = 25
    Caption = 'Insertar elemento'
    TabOrder = 6
    OnClick = bInsertarClick
  end
  object eNumero: TEdit
    Left = 458
    Top = 186
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 7
  end
  object ePosicion: TEdit
    Left = 458
    Top = 211
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 8
  end
  object bEliminar: TButton
    Left = 395
    Top = 269
    Width = 121
    Height = 25
    Caption = 'Eliminar elemento'
    TabOrder = 9
    OnClick = bEliminarClick
  end
  object bCantidad: TButton
    Left = 394
    Top = 155
    Width = 122
    Height = 25
    Caption = 'Cantidad de elementos'
    TabOrder = 10
    OnClick = bCantidadClick
  end
  object mInvertida: TMemo
    Left = 263
    Top = 33
    Width = 122
    Height = 232
    TabOrder = 11
  end
  object bInvertida: TButton
    Left = 263
    Top = 268
    Width = 122
    Height = 26
    Caption = 'Invertir cola'
    TabOrder = 12
    OnClick = bInvertidaClick
  end
end
