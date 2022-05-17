object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 378
  ClientWidth = 730
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
  object Label1: TLabel
    Left = 86
    Top = 123
    Width = 4
    Height = 13
    Caption = '/'
  end
  object Label2: TLabel
    Left = 135
    Top = 123
    Width = 4
    Height = 13
    Caption = '/'
  end
  object Fecha: TLabel
    Left = 65
    Top = 101
    Width = 87
    Height = 13
    Caption = '[ Fecha de multa ]'
  end
  object Ing_patente: TLabel
    Left = 319
    Top = 43
    Width = 82
    Height = 13
    Caption = 'Ingresar patente'
  end
  object Ing_multa: TLabel
    Left = 319
    Top = 83
    Width = 103
    Height = 13
    Caption = 'Ingresar monto multa'
  end
  object Label3: TLabel
    Left = 319
    Top = 110
    Width = 119
    Height = 13
    Caption = 'Ingresar numero de acta'
  end
  object CargMulta: TButton
    Left = 65
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Cargar Multa'
    TabOrder = 0
    OnClick = CargMultaClick
  end
  object Patente: TEdit
    Left = 192
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'ABC123'
  end
  object diahoy: TEdit
    Left = 47
    Top = 120
    Width = 33
    Height = 21
    TabOrder = 2
    Text = '15'
  end
  object meshoy: TEdit
    Left = 96
    Top = 120
    Width = 33
    Height = 21
    TabOrder = 3
    Text = '12'
  end
  object añohoy: TEdit
    Left = 143
    Top = 120
    Width = 33
    Height = 21
    TabOrder = 4
    Text = '2021'
  end
  object Importe: TEdit
    Left = 192
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '1000'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 182
    Width = 571
    Height = 188
    TabOrder = 6
    Visible = False
    object Ing_patente2: TLabel
      Left = 361
      Top = 3
      Width = 82
      Height = 13
      Caption = 'Ingresar patente'
    end
    object ConsMultas: TButton
      Left = 479
      Top = 3
      Width = 89
      Height = 25
      Caption = 'Consultar Multas'
      TabOrder = 0
      OnClick = ConsMultasClick
    end
    object Mostrar: TMemo
      Left = 257
      Top = 49
      Width = 242
      Height = 120
      TabOrder = 1
    end
    object MayorCantidad: TButton
      Left = 3
      Top = 134
      Width = 234
      Height = 25
      Caption = 'Veh'#237'culo con mayor cantidad de infracciones'
      TabOrder = 2
      OnClick = MayorCantidadClick
    end
    object MayorDeuda: TButton
      Left = 3
      Top = 103
      Width = 234
      Height = 25
      Caption = 'Veh'#237'culo que m'#225's deuda de infracciones tiene'
      TabOrder = 3
      OnClick = MayorDeudaClick
    end
    object SinDeuda: TButton
      Left = 3
      Top = 72
      Width = 234
      Height = 25
      Caption = 'Veh'#237'culo/s que no tenga deuda de infracciones'
      TabOrder = 4
      OnClick = SinDeudaClick
    end
    object Patente2: TEdit
      Left = 332
      Top = 22
      Width = 121
      Height = 21
      TabOrder = 5
    end
  end
  object NumActa: TEdit
    Left = 192
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '5000'
  end
  object GroupBox2: TGroupBox
    Left = 460
    Top = 16
    Width = 253
    Height = 143
    TabOrder = 8
    Visible = False
    object Label4: TLabel
      Left = 130
      Top = 22
      Width = 119
      Height = 13
      Caption = 'Ingresar numero de acta'
    end
    object Label5: TLabel
      Left = 130
      Top = 49
      Width = 82
      Height = 13
      Caption = 'Ingresar patente'
    end
    object NumActa2: TEdit
      Left = 3
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
      Text = '5000'
    end
    object Patente3: TEdit
      Left = 3
      Top = 46
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'aaaa'
    end
    object Anular: TButton
      Left = 152
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Anular multa'
      TabOrder = 2
      OnClick = AnularClick
    end
    object Paga: TButton
      Left = 16
      Top = 89
      Width = 75
      Height = 25
      Caption = 'Multa paga'
      TabOrder = 3
      OnClick = PagaClick
    end
  end
  object CambiarEstado: TButton
    Left = 256
    Top = 134
    Width = 145
    Height = 25
    Caption = 'Cambiar estado de multa'
    TabOrder = 9
    OnClick = CambiarEstadoClick
  end
end
