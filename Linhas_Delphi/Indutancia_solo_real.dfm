object Form5: TForm5
  Left = 335
  Top = 175
  Width = 402
  Height = 371
  Caption = 'Linhas - Reat'#226'ncia Indutiva (solo real)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TLabel
    Left = 10
    Top = 13
    Width = 103
    Height = 13
    Caption = 'Resistividade do solo:'
  end
  object Label11: TLabel
    Left = 187
    Top = 13
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label12: TLabel
    Left = 117
    Top = 49
    Width = 157
    Height = 20
    Caption = 'Carson Aproximado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 141
    Top = 209
    Width = 109
    Height = 20
    Caption = 'Carson Exato'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 295
    Top = 9
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 5
    Top = 77
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
      Width = 18
      Height = 13
      Caption = 'xa:'
    end
    object Label18: TLabel
      Left = 23
      Top = 50
      Width = 18
      Height = 13
      Caption = 'xb:'
    end
    object Label19: TLabel
      Left = 23
      Top = 74
      Width = 18
      Height = 13
      Caption = 'xc:'
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
    Left = 205
    Top = 77
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
      Width = 25
      Height = 13
      Caption = 'x11:'
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
    Left = 268
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = Button2Click
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 237
    Width = 185
    Height = 97
    Caption = 'Reat'#226'ncias Aparentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label2: TLabel
      Left = 23
      Top = 25
      Width = 18
      Height = 13
      Caption = 'xa:'
    end
    object Label3: TLabel
      Left = 23
      Top = 50
      Width = 18
      Height = 13
      Caption = 'xb:'
    end
    object Label4: TLabel
      Left = 23
      Top = 74
      Width = 18
      Height = 13
      Caption = 'xc:'
    end
    object Label5: TLabel
      Left = 120
      Top = 26
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Label6: TLabel
      Left = 120
      Top = 74
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Label7: TLabel
      Left = 120
      Top = 50
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit1: TEdit
      Left = 53
      Top = 22
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 53
      Top = 46
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 53
      Top = 70
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox3: TGroupBox
    Left = 205
    Top = 237
    Width = 185
    Height = 49
    Caption = 'Reat'#226'ncia de seq'#252#234'ncia +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object Label8: TLabel
      Left = 24
      Top = 24
      Width = 25
      Height = 13
      Caption = 'x11:'
    end
    object Label9: TLabel
      Left = 120
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit4: TEdit
      Left = 53
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Button3: TButton
    Left = 276
    Top = 304
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = Button3Click
  end
  object Edit5: TEdit
    Left = 120
    Top = 9
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '100'
  end
end
