object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Lista'
  ClientHeight = 381
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bCrear: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 25
    Caption = 'Crear lista random'
    TabOrder = 0
    OnClick = bCrearClick
  end
  object mLista: TMemo
    Left = 8
    Top = 39
    Width = 113
    Height = 178
    TabOrder = 1
  end
  object bInvertida: TButton
    Left = 127
    Top = 9
    Width = 114
    Height = 25
    Caption = 'Mostrar lista invertida'
    Enabled = False
    TabOrder = 2
    OnClick = bInvertidaClick
  end
  object bMenor: TButton
    Left = 7
    Top = 253
    Width = 114
    Height = 25
    Caption = 'Menor elemento'
    Enabled = False
    TabOrder = 3
    OnClick = bMenorClick
  end
  object bMayor: TButton
    Left = 7
    Top = 222
    Width = 114
    Height = 25
    Caption = 'Mayor elemento'
    Enabled = False
    TabOrder = 4
    OnClick = bMayorClick
  end
  object mInvertida: TMemo
    Left = 127
    Top = 39
    Width = 114
    Height = 178
    TabOrder = 5
  end
  object mFunciones: TMemo
    Left = 127
    Top = 223
    Width = 474
    Height = 89
    TabOrder = 6
  end
  object bPromedio: TButton
    Left = 8
    Top = 284
    Width = 113
    Height = 25
    Caption = 'Promedio'
    Enabled = False
    TabOrder = 7
    OnClick = bPromedioClick
  end
  object bMultiplos: TButton
    Left = 247
    Top = 8
    Width = 114
    Height = 25
    Caption = 'Lista de multiplos'
    Enabled = False
    TabOrder = 8
    OnClick = bMultiplosClick
  end
  object mMultiplos: TMemo
    Left = 247
    Top = 40
    Width = 114
    Height = 177
    TabOrder = 9
  end
  object bSinRepetir: TButton
    Left = 367
    Top = 8
    Width = 114
    Height = 25
    Caption = 'Lista sin repetir'
    TabOrder = 10
    OnClick = bSinRepetirClick
  end
  object mSinRepetir: TMemo
    Left = 368
    Top = 40
    Width = 113
    Height = 177
    TabOrder = 11
  end
  object bSuperBoton: TButton
    Left = 8
    Top = 318
    Width = 594
    Height = 59
    Caption = 'Super boton que ejecuta todo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = bSuperBotonClick
  end
  object bReflejar: TButton
    Left = 487
    Top = 8
    Width = 114
    Height = 25
    Caption = 'Reflejar lista'
    Enabled = False
    TabOrder = 13
    OnClick = bReflejarClick
  end
  object mReflejo: TMemo
    Left = 487
    Top = 39
    Width = 114
    Height = 178
    TabOrder = 14
  end
  object rReflejar: TRadioButton
    Left = 607
    Top = 39
    Width = 66
    Height = 23
    Caption = 'Reflejar'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    TabStop = True
  end
  object rEspejar: TRadioButton
    Left = 607
    Top = 68
    Width = 66
    Height = 17
    Caption = 'Espejar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
end
