object Form6: TForm6
  Left = 424
  Top = 202
  Width = 256
  Height = 313
  Caption = 'Linhas - Resist'#234'ncia'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 9
    Top = 13
    Width = 134
    Height = 13
    Caption = 'Resist'#234'ncia dos condutores:'
  end
  object Label4: TLabel
    Left = 9
    Top = 37
    Width = 134
    Height = 13
    Caption = 'Resist'#234'ncia dos condutores:'
  end
  object Label5: TLabel
    Left = 9
    Top = 61
    Width = 23
    Height = 13
    Caption = 'alfa :'
  end
  object Label6: TLabel
    Left = 9
    Top = 85
    Width = 95
    Height = 13
    Caption = 'Temperatura inicial: '
  end
  object Label7: TLabel
    Left = 9
    Top = 109
    Width = 88
    Height = 13
    Caption = 'Temperatura final :'
  end
  object Label11: TLabel
    Left = 217
    Top = 15
    Width = 22
    Height = 13
    Caption = 'Ohm'
  end
  object Label12: TLabel
    Left = 217
    Top = 39
    Width = 22
    Height = 13
    Caption = 'Ohm'
  end
  object Label13: TLabel
    Left = 217
    Top = 63
    Width = 22
    Height = 13
    Caption = '1/'#176'C'
  end
  object Label14: TLabel
    Left = 217
    Top = 87
    Width = 11
    Height = 13
    Caption = #176'C'
  end
  object Label15: TLabel
    Left = 217
    Top = 111
    Width = 11
    Height = 13
    Caption = #176'C'
  end
  object Button1: TButton
    Left = 142
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = Button1Click
  end
  object GroupBox5: TGroupBox
    Left = 16
    Top = 135
    Width = 217
    Height = 49
    Caption = 'Resist'#234'ncia de seq'#252#234'ncias + e -'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label26: TLabel
      Left = 31
      Top = 24
      Width = 28
      Height = 13
      Caption = 'R11:'
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
  object GroupBox1: TGroupBox
    Left = 16
    Top = 191
    Width = 217
    Height = 49
    Caption = 'Resist'#234'ncia de seq'#252#234'ncia 0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 30
      Top = 24
      Width = 28
      Height = 13
      Caption = 'R00:'
    end
    object Label2: TLabel
      Left = 130
      Top = 25
      Width = 48
      Height = 13
      Caption = 'Ohm/km'
    end
    object Edit1: TEdit
      Left = 63
      Top = 21
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object Edit2: TEdit
    Left = 145
    Top = 7
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '0,2977'
  end
  object Edit3: TEdit
    Left = 145
    Top = 31
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '3,045'
  end
  object Edit4: TEdit
    Left = 145
    Top = 55
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '0,00406'
  end
  object Edit5: TEdit
    Left = 145
    Top = 79
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '50'
  end
  object Edit6: TEdit
    Left = 145
    Top = 103
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '75'
  end
  object Button2: TButton
    Left = 31
    Top = 255
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 8
    OnClick = Button2Click
  end
end
