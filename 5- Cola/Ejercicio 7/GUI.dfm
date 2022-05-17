object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 519
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 48
    Top = 8
    Width = 51
    Height = 19
    Caption = 'Cola 1'
  end
  object Label2: TLabel
    Left = 192
    Top = 8
    Width = 51
    Height = 19
    Caption = 'Cola 2'
  end
  object Label3: TLabel
    Left = 344
    Top = 8
    Width = 51
    Height = 19
    Caption = 'Cola 3'
  end
  object Label4: TLabel
    Left = 159
    Top = 135
    Width = 135
    Height = 19
    Caption = 'Tiempo de tarea'
  end
  object mCola1: TMemo
    Left = 8
    Top = 33
    Width = 129
    Height = 88
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object mCola2: TMemo
    Left = 159
    Top = 33
    Width = 129
    Height = 88
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object mCola3: TMemo
    Left = 310
    Top = 33
    Width = 129
    Height = 88
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object eTiempo: TEdit
    Left = 184
    Top = 160
    Width = 81
    Height = 27
    NumbersOnly = True
    TabOrder = 3
    Text = '10'
  end
  object bAtender: TButton
    Left = 8
    Top = 192
    Width = 431
    Height = 33
    Caption = 'Atender clientes'
    TabOrder = 4
    OnClick = bAtenderClick
  end
  object mGUI: TMemo
    Left = 8
    Top = 231
    Width = 433
    Height = 280
    TabOrder = 5
  end
end
