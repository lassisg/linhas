object Form1: TForm1
  Left = 215
  Top = 116
  BorderStyle = bsSingle
  Caption = 'Linhas - Tela Principal'
  ClientHeight = 447
  ClientWidth = 371
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 105
    Top = 80
    Width = 147
    Height = 20
    Caption = 'Dados de Entrada'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 124
    Width = 146
    Height = 13
    Caption = 'Altura do condutor "c" ao solo:'
  end
  object Label3: TLabel
    Left = 40
    Top = 148
    Width = 177
    Height = 13
    Caption = 'Altura entre os condutores "a" e "c" :'
  end
  object Label4: TLabel
    Left = 40
    Top = 172
    Width = 186
    Height = 13
    Caption = 'Altura entre p'#225'ra-raio e o condutor "a" :'
  end
  object Label5: TLabel
    Left = 40
    Top = 196
    Width = 62
    Height = 13
    Caption = 'Freq'#252#234'ncia : '
  end
  object Label6: TLabel
    Left = 40
    Top = 220
    Width = 180
    Height = 13
    Caption = 'Comprimento do condutor "b" ao "c" :'
  end
  object Label7: TLabel
    Left = 40
    Top = 244
    Width = 145
    Height = 13
    Caption = 'Flecha m'#233'dia dos condutores :'
  end
  object Label8: TLabel
    Left = 40
    Top = 268
    Width = 128
    Height = 13
    Caption = 'Flecha m'#233'dia do p'#225'ra-raio :'
  end
  object Label9: TLabel
    Left = 40
    Top = 292
    Width = 174
    Height = 13
    Caption = 'Raio m'#233'dio geom'#233'trico do condutor :'
  end
  object Label10: TLabel
    Left = 40
    Top = 316
    Width = 173
    Height = 13
    Caption = 'Raio m'#233'dio geom'#233'trico do p'#225'ra-raio :'
  end
  object Label11: TLabel
    Left = 303
    Top = 124
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label12: TLabel
    Left = 303
    Top = 148
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label13: TLabel
    Left = 303
    Top = 172
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label14: TLabel
    Left = 303
    Top = 196
    Width = 13
    Height = 13
    Caption = 'Hz'
  end
  object Label15: TLabel
    Left = 303
    Top = 220
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label16: TLabel
    Left = 303
    Top = 244
    Width = 27
    Height = 13
    Caption = 'm/km'
  end
  object Label17: TLabel
    Left = 303
    Top = 268
    Width = 27
    Height = 13
    Caption = 'm/km'
  end
  object Label18: TLabel
    Left = 303
    Top = 292
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label19: TLabel
    Left = 303
    Top = 316
    Width = 8
    Height = 13
    Caption = 'm'
  end
  object Label20: TLabel
    Left = 116
    Top = 360
    Width = 138
    Height = 20
    Caption = 'Calculo desejado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Memo1: TMemo
    Left = 9
    Top = 8
    Width = 353
    Height = 65
    Lines.Strings = (
      
        '     Este programa foi desenvolvido pela turma da cadeira de Lin' +
        'has de'
      
        'Transmiss'#227'o, lecionada pelo professor Arnaldo C'#233'bolo, no 7'#186' Per'#237 +
        'odo do'
      
        'curso de Engenharia El'#233'trica/'#234'nfase em Eletrot'#233'cnica, no Centro ' +
        'Federal'
      'de Educa'#231#227'o Tecnol'#243'gica Celso Suckow da Fonseca - CEFET-RJ.')
    ReadOnly = True
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 236
    Top = 120
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '8,5'
  end
  object Edit2: TEdit
    Left = 236
    Top = 144
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '1,8'
  end
  object Edit3: TEdit
    Left = 236
    Top = 168
    Width = 65
    Height = 21
    TabOrder = 3
    Text = '2,7'
  end
  object Edit4: TEdit
    Left = 236
    Top = 192
    Width = 65
    Height = 21
    TabOrder = 4
    Text = '60'
  end
  object Edit5: TEdit
    Left = 236
    Top = 216
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '2,8'
  end
  object Edit6: TEdit
    Left = 236
    Top = 240
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '1,5'
  end
  object Edit7: TEdit
    Left = 236
    Top = 264
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '1,2'
  end
  object Edit8: TEdit
    Left = 236
    Top = 288
    Width = 65
    Height = 21
    TabOrder = 8
    Text = '0,004812'
  end
  object Edit9: TEdit
    Left = 236
    Top = 312
    Width = 65
    Height = 21
    TabOrder = 9
    Text = '0,000897'
  end
  object Button1: TButton
    Left = 80
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 416
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 11
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 21
    Top = 384
    Width = 329
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 12
    Text = 'Reat'#226'ncia Capacitiva'
    Items.Strings = (
      'Reat'#226'ncia Capacitiva'
      'Reat'#226'ncia Indutiva (sem considerar o solo)'
      'Reat'#226'ncia Indutiva (considerando um solo ideal)'
      'Reat'#226'ncia Indutiva (considerando um solo real)'
      'Resist'#234'ncia')
  end
end
