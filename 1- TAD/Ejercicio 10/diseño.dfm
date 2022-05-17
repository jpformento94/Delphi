object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 512
  ClientWidth = 891
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
    Left = 79
    Top = 99
    Width = 4
    Height = 13
    Caption = '/'
  end
  object Label2: TLabel
    Left = 128
    Top = 99
    Width = 4
    Height = 13
    Caption = '/'
  end
  object Label3: TLabel
    Left = 41
    Top = 13
    Width = 127
    Height = 13
    Caption = '- - N'#250'mero de la tarjeta - -'
  end
  object Label4: TLabel
    Left = 41
    Top = 80
    Width = 104
    Height = 13
    Caption = 'Fecha de vencimiento'
  end
  object Label5: TLabel
    Left = 40
    Top = 141
    Width = 91
    Height = 13
    Caption = 'Limite para 1 cuota'
  end
  object Label6: TLabel
    Left = 41
    Top = 205
    Width = 137
    Height = 13
    Caption = '- - Limite para m'#225's cuotas - -'
  end
  object Label7: TLabel
    Left = 69
    Top = 315
    Width = 4
    Height = 13
    Caption = '/'
    Visible = False
  end
  object Label8: TLabel
    Left = 118
    Top = 315
    Width = 4
    Height = 13
    Caption = '/'
    Visible = False
  end
  object Label9: TLabel
    Left = 30
    Top = 293
    Width = 79
    Height = 13
    Caption = '[ Fecha de hoy ]'
    Visible = False
  end
  object Label10: TLabel
    Left = 30
    Top = 339
    Width = 48
    Height = 13
    Caption = '[ Cuotas ]'
    Visible = False
  end
  object Label12: TLabel
    Left = 30
    Top = 385
    Width = 78
    Height = 13
    Caption = '[ Total a pagar ]'
    Visible = False
  end
  object Label11: TLabel
    Left = 320
    Top = 293
    Width = 135
    Height = 13
    Caption = '[ Informaci'#243'n de la compra ]'
    Visible = False
  end
  object dia: TEdit
    Left = 40
    Top = 96
    Width = 33
    Height = 21
    TabOrder = 0
  end
  object mes: TEdit
    Left = 89
    Top = 96
    Width = 33
    Height = 21
    TabOrder = 1
  end
  object Anio: TEdit
    Left = 136
    Top = 96
    Width = 33
    Height = 21
    TabOrder = 2
  end
  object limite1cuota: TEdit
    Left = 40
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object limiteMasCuotas: TEdit
    Left = 41
    Top = 224
    Width = 137
    Height = 21
    TabOrder = 4
  end
  object Cargar: TButton
    Left = 208
    Top = 129
    Width = 129
    Height = 25
    Caption = 'Cargar Tarjeta Nueva'
    TabOrder = 5
    OnClick = CargarClick
  end
  object validarNumero: TButton
    Left = 392
    Top = 30
    Width = 169
    Height = 25
    Caption = 'Validar N'#250'mero de la tarjeta'
    TabOrder = 6
    Visible = False
    OnClick = validarNumeroClick
  end
  object entidadEmisora: TButton
    Left = 392
    Top = 61
    Width = 169
    Height = 25
    Caption = 'Entidad Emisora'
    TabOrder = 7
    Visible = False
    OnClick = entidadEmisoraClick
  end
  object GestionarCompra: TButton
    Left = 392
    Top = 92
    Width = 169
    Height = 25
    Caption = 'Gestionar Compra'
    TabOrder = 8
    Visible = False
    OnClick = GestionarCompraClick
  end
  object MostrarLimiteDeCompra: TButton
    Left = 392
    Top = 123
    Width = 169
    Height = 25
    Caption = 'Mostrar limites de compras'
    TabOrder = 9
    Visible = False
    OnClick = MostrarLimiteDeCompraClick
  end
  object diahoy: TEdit
    Left = 30
    Top = 312
    Width = 33
    Height = 21
    TabOrder = 10
    Visible = False
  end
  object meshoy: TEdit
    Left = 79
    Top = 312
    Width = 33
    Height = 21
    TabOrder = 11
    Visible = False
  end
  object añohoy: TEdit
    Left = 126
    Top = 312
    Width = 33
    Height = 21
    TabOrder = 12
    Visible = False
  end
  object NumeroCuotas: TEdit
    Left = 30
    Top = 358
    Width = 121
    Height = 21
    TabOrder = 13
    Visible = False
  end
  object Total: TEdit
    Left = 30
    Top = 404
    Width = 121
    Height = 21
    TabOrder = 14
    Visible = False
  end
  object Comprar: TButton
    Left = 176
    Top = 356
    Width = 75
    Height = 25
    Caption = 'Comprar'
    TabOrder = 15
    Visible = False
    OnClick = ComprarClick
  end
  object MostrarInfoCompra: TMemo
    Left = 257
    Top = 312
    Width = 257
    Height = 135
    TabOrder = 16
    Visible = False
  end
  object MostrarValidacion: TEdit
    Left = 575
    Top = 32
    Width = 201
    Height = 21
    TabOrder = 17
    Visible = False
  end
  object mostrarEntidad: TEdit
    Left = 575
    Top = 61
    Width = 201
    Height = 21
    TabOrder = 18
    Visible = False
  end
  object mostrarLimites: TMemo
    Left = 575
    Top = 88
    Width = 201
    Height = 89
    TabOrder = 19
    Visible = False
  end
  object Numero: TEdit
    Left = 40
    Top = 32
    Width = 144
    Height = 21
    MaxLength = 16
    TabOrder = 20
  end
  object Reinicio: TButton
    Left = 208
    Top = 30
    Width = 161
    Height = 25
    Caption = 'Cargar nueva tarjeta'
    TabOrder = 21
    Visible = False
    OnClick = ReinicioClick
  end
  object MostrarDatos: TMemo
    Left = 40
    Top = 61
    Width = 329
    Height = 138
    TabOrder = 22
    Visible = False
  end
end
