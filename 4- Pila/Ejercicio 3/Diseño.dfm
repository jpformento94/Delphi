object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 238
  ClientWidth = 477
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
    Left = 40
    Top = 32
    Width = 185
    Height = 13
    Caption = 'Separar elementos con - (guion medio)'
  end
  object Label2: TLabel
    Left = 40
    Top = 77
    Width = 103
    Height = 13
    Caption = 'Un char por elemento'
  end
  object Invertir: TButton
    Left = 144
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Invertir'
    TabOrder = 0
    OnClick = InvertirClick
  end
  object Pila: TEdit
    Left = 54
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1-2-3-4-5'
  end
  object GroupBox1: TGroupBox
    Left = 231
    Top = 22
    Width = 234
    Height = 211
    TabOrder = 2
    Visible = False
    object Mostrar: TMemo
      Left = 30
      Top = 10
      Width = 75
      Height = 193
      TabOrder = 0
    end
    object Mostrar2: TMemo
      Left = 124
      Top = 10
      Width = 93
      Height = 193
      TabOrder = 1
    end
  end
end
