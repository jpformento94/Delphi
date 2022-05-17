object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 428
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 216
    Top = 75
    Width = 12
    Height = 13
    Caption = '$1'
  end
  object Label13: TLabel
    Left = 306
    Top = 75
    Width = 18
    Height = 13
    Caption = '$10'
  end
  object Label14: TLabel
    Left = 276
    Top = 75
    Width = 12
    Height = 13
    Caption = '$5'
  end
  object Label15: TLabel
    Left = 246
    Top = 75
    Width = 12
    Height = 13
    Caption = '$2'
  end
  object Label16: TLabel
    Left = 375
    Top = 75
    Width = 18
    Height = 13
    Caption = '$10'
  end
  object Label17: TLabel
    Left = 555
    Top = 75
    Width = 30
    Height = 13
    Caption = '$1000'
  end
  object Label18: TLabel
    Left = 465
    Top = 75
    Width = 24
    Height = 13
    Caption = '$100'
  end
  object Label19: TLabel
    Left = 495
    Top = 75
    Width = 24
    Height = 13
    Caption = '$200'
  end
  object Label20: TLabel
    Left = 525
    Top = 75
    Width = 24
    Height = 13
    Caption = '$500'
  end
  object Label21: TLabel
    Left = 405
    Top = 75
    Width = 18
    Height = 13
    Caption = '$20'
  end
  object Label22: TLabel
    Left = 435
    Top = 75
    Width = 18
    Height = 13
    Caption = '$50'
  end
  object Label23: TLabel
    Left = 235
    Top = 16
    Width = 259
    Height = 13
    Caption = 'Ingrese cantidad de billetes/monedas de cada importe'
  end
  object Label24: TLabel
    Left = 235
    Top = 8
    Width = 405
    Height = 13
    Caption = 
      'Ingrese cantidad de billetes/monedas de cada importe con los que' +
      ' se realiz'#243' el pago '
    Visible = False
  end
  object Label25: TLabel
    Left = 409
    Top = 179
    Width = 153
    Height = 13
    Caption = 'Ingrese valor total de la compra'
    Visible = False
  end
  object Label26: TLabel
    Left = 50
    Top = 133
    Width = 43
    Height = 13
    Caption = 'Monedas'
    Visible = False
  end
  object Label27: TLabel
    Left = 239
    Top = 35
    Width = 43
    Height = 13
    Caption = 'Monedas'
  end
  object Label28: TLabel
    Left = 456
    Top = 35
    Width = 33
    Height = 13
    Caption = 'Billetes'
  end
  object Label29: TLabel
    Left = 256
    Top = 133
    Width = 33
    Height = 13
    Caption = 'Billetes'
    Visible = False
  end
  object Label1: TLabel
    Left = 16
    Top = 179
    Width = 12
    Height = 13
    Caption = '$1'
    Visible = False
  end
  object Label2: TLabel
    Left = 106
    Top = 179
    Width = 18
    Height = 13
    Caption = '$10'
    Visible = False
  end
  object Label3: TLabel
    Left = 76
    Top = 179
    Width = 12
    Height = 13
    Caption = '$5'
    Visible = False
  end
  object Label4: TLabel
    Left = 46
    Top = 179
    Width = 12
    Height = 13
    Caption = '$2'
    Visible = False
  end
  object Label5: TLabel
    Left = 175
    Top = 179
    Width = 18
    Height = 13
    Caption = '$10'
    Visible = False
  end
  object Label6: TLabel
    Left = 355
    Top = 179
    Width = 30
    Height = 13
    Caption = '$1000'
    Visible = False
  end
  object Label7: TLabel
    Left = 265
    Top = 179
    Width = 24
    Height = 13
    Caption = '$100'
    Visible = False
  end
  object Label8: TLabel
    Left = 295
    Top = 179
    Width = 24
    Height = 13
    Caption = '$200'
    Visible = False
  end
  object Label9: TLabel
    Left = 325
    Top = 179
    Width = 24
    Height = 13
    Caption = '$500'
    Visible = False
  end
  object Label10: TLabel
    Left = 205
    Top = 179
    Width = 18
    Height = 13
    Caption = '$20'
    Visible = False
  end
  object Label11: TLabel
    Left = 235
    Top = 179
    Width = 18
    Height = 13
    Caption = '$50'
    Visible = False
  end
  object Saldo: TButton
    Left = 32
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Saldo actual'
    TabOrder = 0
    Visible = False
    OnClick = SaldoClick
  end
  object Cargar: TButton
    Left = 118
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Carga inicial'
    TabOrder = 1
    OnClick = CargarClick
  end
  object pagar: TButton
    Left = 584
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Dar vuelto'
    TabOrder = 2
    Visible = False
    OnClick = pagarClick
  end
  object Cerrarcaja: TButton
    Left = 32
    Top = 245
    Width = 75
    Height = 25
    Caption = 'Cerrar caja'
    TabOrder = 3
    Visible = False
    OnClick = CerrarcajaClick
  end
  object CargarM1: TEdit
    Left = 216
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object CargarM2: TEdit
    Left = 246
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object CargarB20: TEdit
    Left = 405
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object CargarM5: TEdit
    Left = 276
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object CargarM10: TEdit
    Left = 306
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object CargarB10: TEdit
    Left = 375
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object CargarB50: TEdit
    Left = 435
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object CargarB100: TEdit
    Left = 465
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 11
    Text = '0'
  end
  object CargarB200: TEdit
    Left = 495
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 12
    Text = '0'
  end
  object CargarB500: TEdit
    Left = 525
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 13
    Text = '0'
  end
  object CargarB1000: TEdit
    Left = 555
    Top = 48
    Width = 17
    Height = 21
    TabOrder = 14
    Text = '0'
  end
  object Mostrar: TMemo
    Left = 32
    Top = 288
    Width = 521
    Height = 129
    TabOrder = 15
    Visible = False
  end
  object Totalcompra: TEdit
    Left = 424
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 16
    Visible = False
  end
  object pagarm1: TEdit
    Left = 16
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 17
    Text = '0'
    Visible = False
  end
  object pagarm2: TEdit
    Left = 46
    Top = 152
    Width = 19
    Height = 21
    TabOrder = 18
    Text = '0'
    Visible = False
  end
  object pagarb20: TEdit
    Left = 205
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 19
    Text = '0'
    Visible = False
  end
  object pagarm5: TEdit
    Left = 83
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 20
    Text = '0'
    Visible = False
  end
  object pagarm10: TEdit
    Left = 106
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 21
    Text = '0'
    Visible = False
  end
  object pagarb10: TEdit
    Left = 175
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 22
    Text = '0'
    Visible = False
  end
  object pagarb50: TEdit
    Left = 235
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 23
    Text = '0'
    Visible = False
  end
  object pagarb100: TEdit
    Left = 265
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 24
    Text = '0'
    Visible = False
  end
  object pagarb200: TEdit
    Left = 295
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 25
    Text = '0'
    Visible = False
  end
  object pagarb500: TEdit
    Left = 325
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 26
    Text = '0'
    Visible = False
  end
  object pagarb1000: TEdit
    Left = 355
    Top = 152
    Width = 17
    Height = 21
    TabOrder = 27
    Text = '0'
    Visible = False
  end
  object Button1: TButton
    Left = 559
    Top = 286
    Width = 99
    Height = 25
    Caption = 'Reiniciar Programa'
    TabOrder = 28
    Visible = False
    OnClick = Button1Click
  end
end
