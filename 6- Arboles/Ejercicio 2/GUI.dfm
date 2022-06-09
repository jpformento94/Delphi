object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 401
  ClientWidth = 477
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
  object bIngresar: TButton
    Left = 8
    Top = 40
    Width = 121
    Height = 25
    Caption = 'Ingrear nodo'
    TabOrder = 0
    OnClick = bIngresarClick
  end
  object mGUI: TMemo
    Left = 135
    Top = 8
    Width = 334
    Height = 385
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object bCargar: TButton
    Left = 8
    Top = 8
    Width = 121
    Height = 25
    Caption = 'Cargar arbol'
    TabOrder = 2
    OnClick = bCargarClick
  end
  object nPadre: TButton
    Left = 8
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Padre'
    TabOrder = 3
    OnClick = nPadreClick
  end
  object bHijos: TButton
    Left = 8
    Top = 104
    Width = 121
    Height = 25
    Caption = 'Hijos'
    TabOrder = 4
    OnClick = bHijosClick
  end
  object bHermano: TButton
    Left = 8
    Top = 135
    Width = 121
    Height = 25
    Caption = 'Hermano'
    TabOrder = 5
    OnClick = bHermanoClick
  end
  object bEjecutarTodo: TButton
    Left = 8
    Top = 368
    Width = 121
    Height = 25
    Caption = 'Ejecutar todo'
    TabOrder = 6
    OnClick = bEjecutarTodoClick
  end
  object bNivel: TButton
    Left = 8
    Top = 168
    Width = 121
    Height = 25
    Caption = 'Nivel'
    TabOrder = 7
    OnClick = bNivelClick
  end
  object bAltura: TButton
    Left = 8
    Top = 200
    Width = 121
    Height = 25
    Caption = 'Altura'
    TabOrder = 8
    OnClick = bAlturaClick
  end
end
