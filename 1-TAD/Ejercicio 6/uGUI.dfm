object fGUI: TfGUI
  Left = 0
  Top = 0
  Caption = 'Estacionamiento'
  ClientHeight = 382
  ClientWidth = 747
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lCantTexto: TLabel
    Left = 542
    Top = 8
    Width = 133
    Height = 19
    Caption = 'Cantidad de autos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lCantidad: TLabel
    Left = 681
    Top = 8
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lPatente: TLabel
    Left = 8
    Top = 8
    Width = 52
    Height = 19
    Caption = 'Patente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lHora: TLabel
    Left = 8
    Top = 38
    Width = 34
    Height = 19
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lMinutos: TLabel
    Left = 8
    Top = 68
    Width = 55
    Height = 19
    Caption = 'Minutos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lEstadia: TLabel
    Left = 542
    Top = 33
    Width = 50
    Height = 19
    Caption = 'Estadia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lMediaEstadia: TLabel
    Left = 542
    Top = 58
    Width = 95
    Height = 19
    Caption = 'Media estadia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lCantEst: TLabel
    Left = 681
    Top = 33
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lCantMediaEst: TLabel
    Left = 681
    Top = 58
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lTarifaPorHora: TLabel
    Left = 542
    Top = 83
    Width = 107
    Height = 19
    Caption = 'Tarifa por hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lTarifaHora: TLabel
    Left = 681
    Top = 83
    Width = 9
    Height = 19
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object bAgregar: TButton
    Left = 8
    Top = 217
    Width = 121
    Height = 25
    Caption = 'Agregar vehiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = bAgregarClick
  end
  object bSacar: TButton
    Left = 8
    Top = 248
    Width = 121
    Height = 25
    Caption = 'Sacar vehiculo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = bSacarClick
  end
  object ePatente: TEdit
    Left = 66
    Top = 8
    Width = 63
    Height = 24
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 7
    ParentFont = False
    TabOrder = 2
  end
  object eHora: TEdit
    Left = 66
    Top = 38
    Width = 63
    Height = 24
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 3
  end
  object eMinutos: TEdit
    Left = 66
    Top = 68
    Width = 63
    Height = 24
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    MaxLength = 2
    NumbersOnly = True
    ParentFont = False
    TabOrder = 4
    OnChange = eMinutosChange
  end
  object memo: TMemo
    Left = 135
    Top = 8
    Width = 401
    Height = 234
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object bSetTarifa: TButton
    Left = 542
    Top = 108
    Width = 121
    Height = 25
    Caption = 'Cambiar Tarifa'
    TabOrder = 6
    OnClick = bSetTarifaClick
  end
  object memoCobro: TMemo
    Left = 135
    Top = 248
    Width = 401
    Height = 121
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object datePicker: TDateTimePicker
    Left = 8
    Top = 98
    Width = 121
    Height = 21
    Date = 44645.000000000000000000
    Time = 0.472752673609647900
    TabOrder = 8
  end
end
