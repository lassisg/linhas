object Form2: TForm2
  Left = 217
  Top = 169
  BorderStyle = bsSingle
  Caption = 'Linhas - Reat'#226'ncia Capacitiva'
  ClientHeight = 381
  ClientWidth = 402
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 62
    Top = 28
    Width = 85
    Height = 13
    Caption = 'Raio do condutor:'
  end
  object Label3: TLabel
    Left = 62
    Top = 52
    Width = 84
    Height = 13
    Caption = 'Raio do p'#225'ra-raio:'
  end
  object Label11: TLabel
    Left = 220
    Top = 28
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label12: TLabel
    Left = 220
    Top = 52
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Edit1: TEdit
    Left = 153
    Top = 24
    Width = 65
    Height = 21
    TabOrder = 0
    Text = '0,006629'
  end
  object Edit2: TEdit
    Left = 153
    Top = 48
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '0,003175'
  end
  object Button1: TButton
    Left = 288
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 96
    Width = 185
    Height = 169
    Caption = 'Capacit'#226'ncias Parciais'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label4: TLabel
      Left = 31
      Top = 25
      Width = 27
      Height = 13
      Caption = 'Ca0:'
    end
    object Label5: TLabel
      Left = 31
      Top = 50
      Width = 27
      Height = 13
      Caption = 'Cb0:'
    end
    object Label6: TLabel
      Left = 31
      Top = 74
      Width = 27
      Height = 13
      Caption = 'Cc0:'
    end
    object Label7: TLabel
      Left = 31
      Top = 98
      Width = 27
      Height = 13
      Caption = 'Cab:'
    end
    object Label8: TLabel
      Left = 31
      Top = 122
      Width = 27
      Height = 13
      Caption = 'Cac:'
    end
    object Label9: TLabel
      Left = 31
      Top = 146
      Width = 27
      Height = 13
      Caption = 'Cbc:'
    end
    object Label10: TLabel
      Left = 128
      Top = 26
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label13: TLabel
      Left = 128
      Top = 74
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label14: TLabel
      Left = 128
      Top = 98
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label15: TLabel
      Left = 128
      Top = 122
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label17: TLabel
      Left = 128
      Top = 146
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Label16: TLabel
      Left = 128
      Top = 50
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Edit3: TEdit
      Left = 61
      Top = 22
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object Edit4: TEdit
      Left = 61
      Top = 46
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object Edit5: TEdit
      Left = 61
      Top = 70
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object Edit6: TEdit
      Left = 61
      Top = 94
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object Edit7: TEdit
      Left = 61
      Top = 118
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object Edit8: TEdit
      Left = 61
      Top = 142
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 280
    Width = 185
    Height = 97
    Caption = 'Capacit'#226'ncias Aparentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label1: TLabel
      Left = 33
      Top = 25
      Width = 20
      Height = 13
      Caption = 'Ca:'
    end
    object Label18: TLabel
      Left = 33
      Top = 50
      Width = 20
      Height = 13
      Caption = 'Cb:'
    end
    object Label19: TLabel
      Left = 33
      Top = 74
      Width = 20
      Height = 13
      Caption = 'Cc:'
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
  object Button2: TButton
    Left = 288
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 5
    OnClick = Button2Click
  end
  object GroupBox3: TGroupBox
    Left = 208
    Top = 96
    Width = 185
    Height = 49
    Caption = 'Capacit'#226'ncia de seq'#252#234'ncia 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    object Label20: TLabel
      Left = 29
      Top = 24
      Width = 27
      Height = 13
      Caption = 'C11:'
    end
    object Label25: TLabel
      Left = 130
      Top = 25
      Width = 30
      Height = 13
      Caption = 'F/km'
    end
    object Edit12: TEdit
      Left = 63
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 208
    Top = 256
    Width = 185
    Height = 49
    Caption = 'Reat'#226'ncia de seq'#252#234'ncia 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object Label21: TLabel
      Left = 29
      Top = 24
      Width = 27
      Height = 13
      Caption = 'C11:'
    end
    object Label22: TLabel
      Left = 130
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit13: TEdit
      Left = 63
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object GroupBox5: TGroupBox
    Left = 208
    Top = 168
    Width = 185
    Height = 49
    Caption = 'Capacit'#226'ncia de seq'#252#234'ncia +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    object Label26: TLabel
      Left = 29
      Top = 24
      Width = 27
      Height = 13
      Caption = 'C11:'
    end
    object Label27: TLabel
      Left = 130
      Top = 25
      Width = 30
      Height = 13
      Caption = 'F/km'
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
  object GroupBox6: TGroupBox
    Left = 208
    Top = 328
    Width = 185
    Height = 49
    Caption = 'Reat'#226'ncia de seq'#252#234'ncia +'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    object Label29: TLabel
      Left = 29
      Top = 24
      Width = 27
      Height = 13
      Caption = 'C11:'
    end
    object Label30: TLabel
      Left = 130
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit15: TEdit
      Left = 63
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
end
