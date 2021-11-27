object Form3: TForm3
  Left = 281
  Top = 293
  Width = 404
  Height = 198
  Caption = 'Linhas - Reat'#226'ncia Indutiva (sem solo)'
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
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox2: TGroupBox
    Left = 6
    Top = 5
    Width = 185
    Height = 97
    Caption = 'Indut'#226'ncias Aparentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 33
      Top = 25
      Width = 19
      Height = 13
      Caption = 'La:'
    end
    object Label18: TLabel
      Left = 33
      Top = 50
      Width = 19
      Height = 13
      Caption = 'Lb:'
    end
    object Label19: TLabel
      Left = 33
      Top = 74
      Width = 19
      Height = 13
      Caption = 'Lc:'
    end
    object Label23: TLabel
      Left = 130
      Top = 26
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label24: TLabel
      Left = 130
      Top = 74
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label28: TLabel
      Left = 130
      Top = 50
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Edit9: TEdit
      Left = 63
      Top = 22
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit10: TEdit
      Left = 63
      Top = 46
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit11: TEdit
      Left = 63
      Top = 70
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox1: TGroupBox
    Left = 206
    Top = 5
    Width = 185
    Height = 97
    Caption = 'Reat'#226'ncias Aparentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 33
      Top = 25
      Width = 18
      Height = 13
      Caption = 'xa:'
    end
    object Label3: TLabel
      Left = 33
      Top = 50
      Width = 18
      Height = 13
      Caption = 'xb:'
    end
    object Label4: TLabel
      Left = 33
      Top = 74
      Width = 18
      Height = 13
      Caption = 'xc:'
    end
    object Label5: TLabel
      Left = 130
      Top = 26
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Label6: TLabel
      Left = 130
      Top = 74
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Label7: TLabel
      Left = 130
      Top = 50
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit1: TEdit
      Left = 63
      Top = 22
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 63
      Top = 46
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 63
      Top = 70
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
  end
  object GroupBox5: TGroupBox
    Left = 6
    Top = 117
    Width = 185
    Height = 49
    Caption = 'Reat'#226'ncia de seq'#252#234'ncia +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label26: TLabel
      Left = 34
      Top = 24
      Width = 19
      Height = 13
      Caption = 'Xs:'
    end
    object Label27: TLabel
      Left = 130
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit14: TEdit
      Left = 63
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Button2: TButton
    Left = 213
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = Button2Click
  end
end
