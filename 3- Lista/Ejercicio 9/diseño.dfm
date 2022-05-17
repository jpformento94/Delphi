object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 358
  ClientWidth = 463
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
    Left = 192
    Top = 32
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label2: TLabel
    Left = 252
    Top = 32
    Width = 37
    Height = 13
    Caption = 'Minutos'
  end
  object Label5: TLabel
    Left = 193
    Top = 77
    Width = 88
    Height = 13
    Caption = '(HH)              (MM)'
  end
  object GroupBox1: TGroupBox
    Left = 177
    Top = 2
    Width = 265
    Height = 114
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 3
    Visible = False
    object Label4: TLabel
      Left = 3
      Top = 14
      Width = 132
      Height = 13
      Caption = 'Indicar horario de comienzo'
    end
    object Label3: TLabel
      Left = 151
      Top = 71
      Width = 98
      Height = 13
      Caption = 'Nombre de actividad'
    end
    object Agregar: TButton
      Left = 157
      Top = 24
      Width = 105
      Height = 25
      Caption = 'Agregar actividad'
      TabOrder = 0
      OnClick = AgregarClick
    end
    object NomActividad: TEdit
      Left = 152
      Top = 90
      Width = 97
      Height = 21
      TabOrder = 1
      Text = 'almuerzo de negocios'
    end
  end
  object Ehora: TEdit
    Left = 184
    Top = 51
    Width = 41
    Height = 21
    TabOrder = 0
    Text = '18'
  end
  object Mostrar: TMemo
    Left = 184
    Top = 205
    Width = 258
    Height = 145
    TabOrder = 1
  end
  object Eminutos: TEdit
    Left = 248
    Top = 51
    Width = 41
    Height = 21
    TabOrder = 2
    Text = '00'
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 96
    Width = 207
    Height = 103
    TabOrder = 4
    object Actividad: TButton
      Left = 3
      Top = 3
      Width = 199
      Height = 25
      Caption = 'Actividad del ejecutivo(indicar horario)'
      TabOrder = 0
      OnClick = ActividadClick
    end
    object Insertar: TButton
      Left = 3
      Top = 34
      Width = 135
      Height = 25
      Caption = 'Insertar nueva actividad'
      TabOrder = 1
      OnClick = InsertarClick
    end
    object Porcentaje: TButton
      Left = 3
      Top = 65
      Width = 201
      Height = 25
      Caption = 'Calcular porcentaje de ocupaci'#243'n del d'#237'a'
      TabOrder = 2
    end
  end
end
