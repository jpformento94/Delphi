object Form1: TForm1
  AlignWithMargins = True
  Left = 0
  Top = 0
  Cursor = crArrow
  Anchors = [akLeft, akTop, akRight, akBottom]
  BorderStyle = bsSingle
  Caption = 'Clase 02 - POO - Ejemplos ...'
  ClientHeight = 365
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    727
    365)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 213
    Top = 87
    Width = 63
    Height = 13
    Anchors = [akLeft]
    Caption = 'Rango desde'
  end
  object Label2: TLabel
    Left = 461
    Top = 53
    Width = 61
    Height = 13
    Anchors = [akLeft]
    Caption = 'Rango hasta'
  end
  object Label3: TLabel
    Left = 177
    Top = 129
    Width = 128
    Height = 13
    Anchors = [akLeft]
    Caption = 'Permite repeticiones(si-no)'
    ExplicitTop = 140
  end
  object Label4: TLabel
    Left = 448
    Top = 94
    Width = 89
    Height = 13
    Anchors = [akLeft]
    Caption = 'Ingrese separador'
    ExplicitTop = 102
  end
  object Label5: TLabel
    Left = 143
    Top = 38
    Width = 213
    Height = 13
    Anchors = [akLeft]
    Caption = 'Cantidad de elementos del vector(max1000)'
    ExplicitTop = 41
  end
  object Label6: TLabel
    Left = 143
    Top = 197
    Width = 194
    Height = 13
    Anchors = [akLeft]
    Caption = 'Numero escalar para multiplicar el vector'
    ExplicitTop = 213
  end
  object Button1: TButton
    Left = 416
    Top = 168
    Width = 247
    Height = 25
    Anchors = [akLeft, akRight]
    Caption = 'Realizar todas las operaciones de un vector'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 212
    Width = 721
    Height = 150
    Align = alBottom
    Anchors = [akLeft, akRight]
    TabOrder = 1
  end
  object desde: TEdit
    Left = 184
    Top = 60
    Width = 121
    Height = 21
    Anchors = [akLeft]
    TabOrder = 2
  end
  object hasta: TEdit
    Left = 432
    Top = 32
    Width = 121
    Height = 21
    Anchors = [akLeft]
    TabOrder = 3
  end
  object repe: TEdit
    Left = 184
    Top = 108
    Width = 121
    Height = 21
    Anchors = [akLeft]
    TabOrder = 4
  end
  object separador: TEdit
    Left = 432
    Top = 72
    Width = 121
    Height = 21
    Anchors = [akLeft]
    TabOrder = 5
  end
  object cant: TEdit
    Left = 184
    Top = 9
    Width = 121
    Height = 21
    Anchors = [akLeft]
    TabOrder = 6
  end
  object escalar: TEdit
    Left = 184
    Top = 170
    Width = 121
    Height = 21
    Anchors = [akLeft]
    TabOrder = 7
  end
  object Suma: TButton
    Left = 32
    Top = 40
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Suma'
    TabOrder = 8
    OnClick = SumaClick
  end
  object Promedio: TButton
    Left = 32
    Top = 71
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Promedio'
    TabOrder = 9
    OnClick = PromedioClick
  end
  object Mayor: TButton
    Left = 32
    Top = 104
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Mayor'
    TabOrder = 10
    OnClick = MayorClick
  end
  object Menor: TButton
    Left = 32
    Top = 135
    Width = 75
    Height = 25
    Anchors = [akLeft]
    Caption = 'Menor'
    TabOrder = 11
    OnClick = MenorClick
  end
  object Mescalar: TButton
    Left = 8
    Top = 168
    Width = 121
    Height = 25
    Anchors = [akLeft]
    Caption = 'Multiplicar por escalar'
    TabOrder = 12
    OnClick = MescalarClick
  end
  object sumarvec: TButton
    Left = 0
    Top = 0
    Width = 162
    Height = 25
    Caption = 'Sumar con otro vector aleatorio'
    TabOrder = 13
    OnClick = sumarvecClick
  end
end
