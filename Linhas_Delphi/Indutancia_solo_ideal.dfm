object Form4: TForm4
  Left = 196
  Top = 107
  Width = 406
  Height = 131
  Caption = 'Linhas - Reat'#226'ncia Indutiva (solo ideal)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 312
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 4
    Width = 185
    Height = 97
    Caption = 'Reat'#226'ncias Aparentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 23
      Top = 25
      Width = 20
      Height = 13
      Caption = 'Xa:'
    end
    object Label18: TLabel
      Left = 23
      Top = 50
      Width = 20
      Height = 13
      Caption = 'Xb:'
    end
    object Label19: TLabel
      Left = 23
      Top = 74
      Width = 20
      Height = 13
      Caption = 'Xc:'
    end
    object Label23: TLabel
      Left = 120
      Top = 26
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Label24: TLabel
      Left = 120
      Top = 74
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Label28: TLabel
      Left = 120
      Top = 50
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit9: TEdit
      Left = 53
      Top = 22
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit10: TEdit
      Left = 53
      Top = 46
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit11: TEdit
      Left = 53
      Top = 70
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox
    Left = 206
    Top = 4
    Width = 185
    Height = 49
    Caption = 'Reat'#226'ncia de seq'#252#234'ncia +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label26: TLabel
      Left = 24
      Top = 24
      Width = 27
      Height = 13
      Caption = 'X11:'
    end
    object Label27: TLabel
      Left = 120
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit14: TEdit
      Left = 53
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Button2: TButton
    Left = 213
    Top = 71
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button2Click
  end
end
