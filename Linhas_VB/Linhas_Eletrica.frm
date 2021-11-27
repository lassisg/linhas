VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form frmLinhas_Ele 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Cáculo de Linhas de Transmissão"
   ClientHeight    =   7815
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6240
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7815
   ScaleWidth      =   6240
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton btnFechar 
      Caption         =   "Fechar"
      Height          =   615
      Left            =   3600
      TabIndex        =   69
      Top             =   6840
      Width           =   2175
   End
   Begin TabDlg.SSTab tabEmpresa 
      Height          =   7815
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6255
      _ExtentX        =   11033
      _ExtentY        =   13785
      _Version        =   393216
      Style           =   1
      Tabs            =   5
      Tab             =   3
      TabsPerRow      =   5
      TabHeight       =   520
      TabCaption(0)   =   "Dados Gerais"
      TabPicture(0)   =   "Linhas_Eletrica.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Label1"
      Tab(0).Control(1)=   "Label2"
      Tab(0).Control(2)=   "Label3"
      Tab(0).Control(3)=   "Label4"
      Tab(0).Control(4)=   "Label5"
      Tab(0).Control(5)=   "Label6"
      Tab(0).Control(6)=   "Label7"
      Tab(0).Control(7)=   "Label8"
      Tab(0).Control(8)=   "Label9"
      Tab(0).Control(9)=   "Label10"
      Tab(0).Control(10)=   "Label11"
      Tab(0).Control(11)=   "Label12"
      Tab(0).Control(12)=   "Label13"
      Tab(0).Control(13)=   "Label14"
      Tab(0).Control(14)=   "Label15"
      Tab(0).Control(15)=   "Label16"
      Tab(0).Control(16)=   "Label17"
      Tab(0).Control(17)=   "Label18"
      Tab(0).Control(18)=   "txtAltura_cs"
      Tab(0).Control(19)=   "txtAltura_ac"
      Tab(0).Control(20)=   "txtAltura_pararaio_a"
      Tab(0).Control(21)=   "txtFrequencia"
      Tab(0).Control(22)=   "txtComprimentoCondutor"
      Tab(0).Control(23)=   "txtFlechaMediaCondutores"
      Tab(0).Control(24)=   "txtFlechaMediaPararaio"
      Tab(0).Control(25)=   "txtRaioCondutor"
      Tab(0).Control(26)=   "txtRaioPararaio"
      Tab(0).ControlCount=   27
      TabCaption(1)   =   "Reatância Capacitiva"
      TabPicture(1)   =   "Linhas_Eletrica.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame1"
      Tab(1).Control(1)=   "Frame2"
      Tab(1).Control(2)=   "Frame3"
      Tab(1).Control(3)=   "Frame4"
      Tab(1).Control(4)=   "Frame5"
      Tab(1).Control(5)=   "Frame6"
      Tab(1).Control(6)=   "Frame7"
      Tab(1).Control(7)=   "btnReatCap"
      Tab(1).Control(8)=   "btnLimpar_Reat_Cap"
      Tab(1).ControlCount=   9
      TabCaption(2)   =   "Reatância Indutiva"
      TabPicture(2)   =   "Linhas_Eletrica.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "SSTab1"
      Tab(2).ControlCount=   1
      TabCaption(3)   =   "Resistência"
      TabPicture(3)   =   "Linhas_Eletrica.frx":0054
      Tab(3).ControlEnabled=   -1  'True
      Tab(3).Control(0)=   "Frame8"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).Control(1)=   "Frame9"
      Tab(3).Control(1).Enabled=   0   'False
      Tab(3).Control(2)=   "Frame10"
      Tab(3).Control(2).Enabled=   0   'False
      Tab(3).Control(3)=   "btnResist"
      Tab(3).Control(3).Enabled=   0   'False
      Tab(3).Control(4)=   "btnLimpar_Resist"
      Tab(3).Control(4).Enabled=   0   'False
      Tab(3).ControlCount=   5
      TabCaption(4)   =   "Sobre"
      TabPicture(4)   =   "Linhas_Eletrica.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label71"
      Tab(4).Control(1)=   "Label70"
      Tab(4).Control(2)=   "Label69"
      Tab(4).Control(3)=   "Label68"
      Tab(4).Control(4)=   "Label67"
      Tab(4).Control(5)=   "Label66"
      Tab(4).Control(6)=   "Label65"
      Tab(4).Control(7)=   "Label64"
      Tab(4).Control(8)=   "Label41"
      Tab(4).ControlCount=   9
      Begin VB.CommandButton btnLimpar_Resist 
         Caption         =   "Limpar"
         Height          =   615
         Left            =   3600
         TabIndex        =   198
         Top             =   6000
         Width           =   975
      End
      Begin VB.CommandButton btnLimpar_Reat_Cap 
         Caption         =   "Limpar"
         Height          =   615
         Left            =   -71400
         TabIndex        =   193
         Top             =   6000
         Width           =   975
      End
      Begin VB.CommandButton btnResist 
         Caption         =   "Calcular"
         Height          =   615
         Left            =   4800
         TabIndex        =   106
         Top             =   6000
         Width           =   975
      End
      Begin VB.Frame Frame10 
         Caption         =   "Resistências de Sequência + e -"
         Height          =   975
         Left            =   120
         TabIndex        =   102
         Top             =   3960
         Width           =   2895
         Begin MSMask.MaskEdBox mskResist_seq_pos 
            Height          =   375
            Left            =   840
            TabIndex        =   103
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label63 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm/km"
            Height          =   195
            Left            =   2025
            TabIndex        =   105
            Top             =   450
            Width           =   645
         End
         Begin VB.Label Label62 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "R11 ="
            Height          =   195
            Left            =   270
            TabIndex        =   104
            Top             =   450
            Width           =   465
         End
      End
      Begin VB.Frame Frame9 
         Caption         =   "Resistências de Sequência 0"
         Height          =   975
         Left            =   3240
         TabIndex        =   98
         Top             =   3960
         Width           =   2895
         Begin MSMask.MaskEdBox mskResist_seq_zero 
            Height          =   375
            Left            =   840
            TabIndex        =   99
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label61 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "R00 ="
            Height          =   195
            Left            =   270
            TabIndex        =   101
            Top             =   450
            Width           =   465
         End
         Begin VB.Label Label60 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm/km"
            Height          =   195
            Left            =   2025
            TabIndex        =   100
            Top             =   450
            Width           =   645
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Dados Específicos"
         Height          =   3375
         Left            =   120
         TabIndex        =   84
         Top             =   480
         Width           =   6015
         Begin VB.TextBox txtResistividade_solo_resist 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   2310
            TabIndex        =   201
            Text            =   "100"
            Top             =   2760
            Width           =   1095
         End
         Begin VB.TextBox txtTemperatura_final 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   2310
            TabIndex        =   95
            Text            =   "75"
            Top             =   2280
            Width           =   1095
         End
         Begin VB.TextBox txtTemperatura_inicial 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   2310
            TabIndex        =   90
            Text            =   "50"
            Top             =   1800
            Width           =   1095
         End
         Begin VB.TextBox txtAlfa 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   2310
            TabIndex        =   89
            Text            =   "0,00406"
            Top             =   1320
            Width           =   1095
         End
         Begin VB.TextBox txtResistencia_pararaio 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   2310
            TabIndex        =   86
            Text            =   "3,045"
            Top             =   840
            Width           =   1095
         End
         Begin VB.TextBox txtResistencia_condutor 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   2310
            TabIndex        =   85
            Text            =   "0,2977"
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label115 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Resistividade do solo (ro):"
            Height          =   195
            Left            =   420
            TabIndex        =   203
            Top             =   2850
            Width           =   1845
         End
         Begin VB.Label Label114 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm*m"
            Height          =   195
            Left            =   3465
            TabIndex        =   202
            Top             =   2850
            Width           =   525
         End
         Begin VB.Label Label45 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Resistência dos condutores:"
            Height          =   195
            Left            =   240
            TabIndex        =   200
            Top             =   450
            Width           =   2025
         End
         Begin VB.Label Label49 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm"
            Height          =   195
            Left            =   3465
            TabIndex        =   199
            Top             =   450
            Width           =   345
         End
         Begin VB.Label Label59 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "°C"
            Height          =   195
            Left            =   3465
            TabIndex        =   97
            Top             =   2370
            Width           =   195
         End
         Begin VB.Label Label58 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Temperatura final:"
            Height          =   195
            Left            =   960
            TabIndex        =   96
            Top             =   2370
            Width           =   1305
         End
         Begin VB.Label Label57 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "°C"
            Height          =   195
            Left            =   3465
            TabIndex        =   94
            Top             =   1890
            Width           =   195
         End
         Begin VB.Label Label56 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "1/°C"
            Height          =   195
            Left            =   3465
            TabIndex        =   93
            Top             =   1410
            Width           =   345
         End
         Begin VB.Label Label55 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Temperatura inicial:"
            Height          =   195
            Left            =   870
            TabIndex        =   92
            Top             =   1890
            Width           =   1395
         End
         Begin VB.Label Label54 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "alfa:"
            Height          =   195
            Left            =   1950
            TabIndex        =   91
            Top             =   1410
            Width           =   315
         End
         Begin VB.Label Label53 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm"
            Height          =   195
            Left            =   3465
            TabIndex        =   88
            Top             =   930
            Width           =   345
         End
         Begin VB.Label Label47 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Resistência do pára-raio:"
            Height          =   195
            Left            =   480
            TabIndex        =   87
            Top             =   930
            Width           =   1785
         End
      End
      Begin VB.CommandButton btnReatCap 
         Caption         =   "Calcular"
         Height          =   615
         Left            =   -70200
         TabIndex        =   68
         Top             =   6000
         Width           =   975
      End
      Begin VB.Frame Frame7 
         Caption         =   "Reatância de Sequência 0"
         Height          =   975
         Left            =   -74880
         TabIndex        =   65
         Top             =   4680
         Width           =   2895
         Begin MSMask.MaskEdBox mskReat_cap_seq_zero 
            Height          =   375
            Left            =   840
            TabIndex        =   78
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label51 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm/km"
            Height          =   195
            Left            =   2025
            TabIndex        =   67
            Top             =   450
            Width           =   645
         End
         Begin VB.Label Label43 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Xc00 ="
            Height          =   195
            Left            =   240
            TabIndex        =   66
            Top             =   450
            Width           =   525
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Capacitância de Sequência 0"
         Height          =   975
         Left            =   -71760
         TabIndex        =   62
         Top             =   4680
         Width           =   2895
         Begin MSMask.MaskEdBox mskCap_seq_zero 
            Height          =   375
            Left            =   960
            TabIndex        =   79
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label52 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   2145
            TabIndex        =   64
            Top             =   450
            Width           =   405
         End
         Begin VB.Label Label50 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "C00 ="
            Height          =   195
            Left            =   480
            TabIndex        =   63
            Top             =   450
            Width           =   435
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Reatância de Sequência +"
         Height          =   975
         Left            =   -74880
         TabIndex        =   51
         Top             =   3600
         Width           =   2895
         Begin MSMask.MaskEdBox mskReat_cap_seq_pos 
            Height          =   375
            Left            =   840
            TabIndex        =   76
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label48 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Xc11 ="
            Height          =   195
            Left            =   240
            TabIndex        =   61
            Top             =   450
            Width           =   525
         End
         Begin VB.Label Label46 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ohm/km"
            Height          =   195
            Left            =   2025
            TabIndex        =   60
            Top             =   450
            Width           =   645
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Capacitância de Sequência +"
         Height          =   975
         Left            =   -71760
         TabIndex        =   50
         Top             =   3600
         Width           =   2895
         Begin MSMask.MaskEdBox mskCap_seq_pos 
            Height          =   375
            Left            =   960
            TabIndex        =   77
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label44 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "C11 ="
            Height          =   195
            Left            =   480
            TabIndex        =   59
            Top             =   450
            Width           =   435
         End
         Begin VB.Label Label42 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   2145
            TabIndex        =   58
            Top             =   450
            Width           =   405
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Capacitâncias Aparentes"
         Height          =   1935
         Left            =   -74880
         TabIndex        =   49
         Top             =   5760
         Width           =   2895
         Begin MSMask.MaskEdBox mskCap_apar_a 
            Height          =   375
            Left            =   840
            TabIndex        =   80
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_apar_b 
            Height          =   375
            Left            =   840
            TabIndex        =   81
            Top             =   840
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_apar_c 
            Height          =   375
            Left            =   840
            TabIndex        =   82
            Top             =   1320
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label40 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Ca ="
            Height          =   195
            Left            =   405
            TabIndex        =   57
            Top             =   480
            Width           =   345
         End
         Begin VB.Label Label39 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cb ="
            Height          =   195
            Left            =   405
            TabIndex        =   56
            Top             =   930
            Width           =   345
         End
         Begin VB.Label Label38 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cc ="
            Height          =   195
            Left            =   405
            TabIndex        =   55
            Top             =   1410
            Width           =   345
         End
         Begin VB.Label Label37 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   1950
            TabIndex        =   54
            Top             =   450
            Width           =   405
         End
         Begin VB.Label Label36 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   1950
            TabIndex        =   53
            Top             =   930
            Width           =   405
         End
         Begin VB.Label Label35 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   1950
            TabIndex        =   52
            Top             =   1410
            Width           =   405
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Capacitâncias Parciais"
         Height          =   1935
         Left            =   -74880
         TabIndex        =   36
         Top             =   1560
         Width           =   6015
         Begin MSMask.MaskEdBox mskCap_parc_a 
            Height          =   375
            Left            =   960
            TabIndex        =   70
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_parc_b 
            Height          =   375
            Left            =   960
            TabIndex        =   71
            Top             =   840
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_parc_c 
            Height          =   375
            Left            =   960
            TabIndex        =   72
            Top             =   1320
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_parc_a_b 
            Height          =   375
            Left            =   4080
            TabIndex        =   73
            Top             =   360
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_parc_a_c 
            Height          =   375
            Left            =   4080
            TabIndex        =   74
            Top             =   840
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox mskCap_parc_b_c 
            Height          =   375
            Left            =   4080
            TabIndex        =   75
            Top             =   1320
            Width           =   1095
            _ExtentX        =   1931
            _ExtentY        =   661
            _Version        =   393216
            Format          =   "0.00000E+00"
            PromptChar      =   "_"
         End
         Begin VB.Label Label34 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cab ="
            Height          =   195
            Left            =   3600
            TabIndex        =   48
            Top             =   450
            Width           =   435
         End
         Begin VB.Label Label33 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cac ="
            Height          =   195
            Left            =   3600
            TabIndex        =   47
            Top             =   930
            Width           =   435
         End
         Begin VB.Label Label32 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cbc ="
            Height          =   195
            Left            =   3600
            TabIndex        =   46
            Top             =   1410
            Width           =   435
         End
         Begin VB.Label Label31 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   5190
            TabIndex        =   45
            Top             =   450
            Width           =   405
         End
         Begin VB.Label Label30 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   5190
            TabIndex        =   44
            Top             =   930
            Width           =   405
         End
         Begin VB.Label Label29 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   5190
            TabIndex        =   43
            Top             =   1410
            Width           =   405
         End
         Begin VB.Label Label28 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cao ="
            Height          =   195
            Left            =   495
            TabIndex        =   42
            Top             =   450
            Width           =   435
         End
         Begin VB.Label Label27 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cbo ="
            Height          =   195
            Left            =   495
            TabIndex        =   41
            Top             =   930
            Width           =   435
         End
         Begin VB.Label Label26 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Cco ="
            Height          =   195
            Left            =   495
            TabIndex        =   40
            Top             =   1410
            Width           =   435
         End
         Begin VB.Label Label25 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   2085
            TabIndex        =   39
            Top             =   450
            Width           =   405
         End
         Begin VB.Label Label24 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   2085
            TabIndex        =   38
            Top             =   930
            Width           =   405
         End
         Begin VB.Label Label23 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "F/km"
            Height          =   195
            Left            =   2085
            TabIndex        =   37
            Top             =   1410
            Width           =   405
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Dados Específicos"
         Height          =   975
         Left            =   -74880
         TabIndex        =   29
         Top             =   480
         Width           =   6015
         Begin VB.TextBox txtRaioCondutor_Reat_Cap 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   1560
            TabIndex        =   31
            Text            =   "0,006629"
            Top             =   360
            Width           =   1095
         End
         Begin VB.TextBox txtRaioPararaio_Reat_Cap 
            Alignment       =   1  'Right Justify
            Height          =   375
            Left            =   4590
            TabIndex        =   30
            Text            =   "0,003175"
            Top             =   360
            Width           =   1095
         End
         Begin VB.Label Label22 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Raio do condutor:"
            Height          =   195
            Left            =   165
            TabIndex        =   35
            Top             =   450
            Width           =   1305
         End
         Begin VB.Label Label21 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "Raio do pára-raio:"
            Height          =   195
            Left            =   3195
            TabIndex        =   34
            Top             =   450
            Width           =   1275
         End
         Begin VB.Label Label20 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "m"
            Height          =   195
            Left            =   2745
            TabIndex        =   33
            Top             =   450
            Width           =   135
         End
         Begin VB.Label Label19 
            Alignment       =   2  'Center
            AutoSize        =   -1  'True
            Caption         =   "m"
            Height          =   195
            Left            =   5745
            TabIndex        =   32
            Top             =   450
            Width           =   135
         End
      End
      Begin VB.TextBox txtRaioPararaio 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   10
         Text            =   "0,000897"
         Top             =   4800
         Width           =   1095
      End
      Begin VB.TextBox txtRaioCondutor 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   9
         Text            =   "0,004812"
         Top             =   4320
         Width           =   1095
      End
      Begin VB.TextBox txtFlechaMediaPararaio 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   8
         Text            =   "1,2"
         Top             =   3840
         Width           =   1095
      End
      Begin VB.TextBox txtFlechaMediaCondutores 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   7
         Text            =   "1,5"
         Top             =   3360
         Width           =   1095
      End
      Begin VB.TextBox txtComprimentoCondutor 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   6
         Text            =   "2,8"
         Top             =   2880
         Width           =   1095
      End
      Begin VB.TextBox txtFrequencia 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   5
         Text            =   "60"
         Top             =   2400
         Width           =   1095
      End
      Begin VB.TextBox txtAltura_pararaio_a 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   4
         Text            =   "2,7"
         Top             =   1920
         Width           =   1095
      End
      Begin VB.TextBox txtAltura_ac 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   3
         Text            =   "1,8"
         Top             =   1440
         Width           =   1095
      End
      Begin VB.TextBox txtAltura_cs 
         Alignment       =   1  'Right Justify
         Height          =   375
         Left            =   -71760
         TabIndex        =   2
         Text            =   "8,5"
         Top             =   960
         Width           =   1095
      End
      Begin TabDlg.SSTab SSTab1 
         Height          =   7455
         Left            =   -75000
         TabIndex        =   1
         Top             =   360
         Width           =   6255
         _ExtentX        =   11033
         _ExtentY        =   13150
         _Version        =   393216
         Style           =   1
         Tabs            =   4
         Tab             =   2
         TabsPerRow      =   4
         TabHeight       =   520
         TabCaption(0)   =   "Sem solo"
         TabPicture(0)   =   "Linhas_Eletrica.frx":008C
         Tab(0).ControlEnabled=   0   'False
         Tab(0).Control(0)=   "Frame11"
         Tab(0).Control(1)=   "Frame12"
         Tab(0).Control(2)=   "Frame13"
         Tab(0).Control(3)=   "btnReatIndss"
         Tab(0).Control(4)=   "btnLimpar_Reat_Ind_s_s"
         Tab(0).ControlCount=   5
         TabCaption(1)   =   "Solo Ideal"
         TabPicture(1)   =   "Linhas_Eletrica.frx":00A8
         Tab(1).ControlEnabled=   0   'False
         Tab(1).Control(0)=   "Frame14"
         Tab(1).Control(1)=   "Frame15"
         Tab(1).Control(2)=   "btnReatIndsi"
         Tab(1).Control(3)=   "btnLimpar_Reat_Ind_s_i"
         Tab(1).ControlCount=   4
         TabCaption(2)   =   "Solo Real (Carson Aprox.)"
         TabPicture(2)   =   "Linhas_Eletrica.frx":00C4
         Tab(2).ControlEnabled=   -1  'True
         Tab(2).Control(0)=   "Frame16"
         Tab(2).Control(0).Enabled=   0   'False
         Tab(2).Control(1)=   "Frame17"
         Tab(2).Control(1).Enabled=   0   'False
         Tab(2).Control(2)=   "Frame18"
         Tab(2).Control(2).Enabled=   0   'False
         Tab(2).Control(3)=   "btnReatIndca"
         Tab(2).Control(3).Enabled=   0   'False
         Tab(2).Control(4)=   "btnLimpar_Reat_Ind_c_a"
         Tab(2).Control(4).Enabled=   0   'False
         Tab(2).ControlCount=   5
         TabCaption(3)   =   "Solo Real (Carson Exato)"
         TabPicture(3)   =   "Linhas_Eletrica.frx":00E0
         Tab(3).ControlEnabled=   0   'False
         Tab(3).Control(0)=   "Frame19"
         Tab(3).Control(1)=   "Frame20"
         Tab(3).Control(2)=   "Frame21"
         Tab(3).Control(3)=   "btnReatIndce"
         Tab(3).Control(4)=   "btnLimpar_Reat_Ind_c_e"
         Tab(3).ControlCount=   5
         Begin VB.CommandButton btnLimpar_Reat_Ind_c_e 
            Caption         =   "Limpar"
            Height          =   615
            Left            =   -71400
            TabIndex        =   197
            Top             =   5640
            Width           =   975
         End
         Begin VB.CommandButton btnLimpar_Reat_Ind_s_i 
            Caption         =   "Limpar"
            Height          =   615
            Left            =   -71400
            TabIndex        =   196
            Top             =   5640
            Width           =   975
         End
         Begin VB.CommandButton btnLimpar_Reat_Ind_s_s 
            Caption         =   "Limpar"
            Height          =   615
            Left            =   -71400
            TabIndex        =   195
            Top             =   5640
            Width           =   975
         End
         Begin VB.CommandButton btnLimpar_Reat_Ind_c_a 
            Caption         =   "Limpar"
            Height          =   615
            Left            =   3600
            TabIndex        =   194
            Top             =   5640
            Width           =   975
         End
         Begin VB.CommandButton btnReatIndce 
            Caption         =   "Calcular"
            Height          =   615
            Left            =   -70200
            TabIndex        =   192
            Top             =   5640
            Width           =   975
         End
         Begin VB.CommandButton btnReatIndca 
            Caption         =   "Calcular"
            Height          =   615
            Left            =   4800
            TabIndex        =   191
            Top             =   5640
            Width           =   975
         End
         Begin VB.CommandButton btnReatIndsi 
            Caption         =   "Calcular"
            Height          =   615
            Left            =   -70200
            TabIndex        =   190
            Top             =   5640
            Width           =   975
         End
         Begin VB.Frame Frame21 
            Caption         =   "Reatância de Sequência +"
            Height          =   975
            Left            =   -71880
            TabIndex        =   186
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_ind_seq_zero_ce 
               Height          =   375
               Left            =   840
               TabIndex        =   187
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label113 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "X11 ="
               Height          =   195
               Left            =   315
               TabIndex        =   189
               Top             =   450
               Width           =   435
            End
            Begin VB.Label Label112 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Ohm/km"
               Height          =   195
               Left            =   2025
               TabIndex        =   188
               Top             =   450
               Width           =   645
            End
         End
         Begin VB.Frame Frame20 
            Caption         =   "Reatâncias Aparentes"
            Height          =   1935
            Left            =   -74880
            TabIndex        =   176
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_apar_a_ce 
               Height          =   375
               Left            =   840
               TabIndex        =   177
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_b_ce 
               Height          =   375
               Left            =   840
               TabIndex        =   178
               Top             =   840
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_c_ce 
               Height          =   375
               Left            =   840
               TabIndex        =   179
               Top             =   1320
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label111 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   185
               Top             =   1410
               Width           =   405
            End
            Begin VB.Label Label110 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   184
               Top             =   930
               Width           =   405
            End
            Begin VB.Label Label109 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   183
               Top             =   450
               Width           =   405
            End
            Begin VB.Label Label108 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xc ="
               Height          =   195
               Left            =   405
               TabIndex        =   182
               Top             =   1410
               Width           =   345
            End
            Begin VB.Label Label107 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xb ="
               Height          =   195
               Left            =   405
               TabIndex        =   181
               Top             =   930
               Width           =   345
            End
            Begin VB.Label Label106 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xa ="
               Height          =   195
               Left            =   405
               TabIndex        =   180
               Top             =   480
               Width           =   345
            End
         End
         Begin VB.Frame Frame19 
            Caption         =   "Dados Específicos"
            Height          =   975
            Left            =   -74880
            TabIndex        =   172
            Top             =   480
            Width           =   6015
            Begin VB.TextBox txtResistividade_solo_ce 
               Alignment       =   1  'Right Justify
               Height          =   375
               Left            =   2430
               TabIndex        =   173
               Text            =   "100"
               Top             =   360
               Width           =   1095
            End
            Begin VB.Label Label96 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Resistividade do solo (ro):"
               Height          =   195
               Left            =   480
               TabIndex        =   175
               Top             =   450
               Width           =   1845
            End
            Begin VB.Label Label95 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Ohm*m"
               Height          =   195
               Left            =   3600
               TabIndex        =   174
               Top             =   450
               Width           =   525
            End
         End
         Begin VB.Frame Frame18 
            Caption         =   "Reatância de Sequência +"
            Height          =   975
            Left            =   3120
            TabIndex        =   168
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_ind_seq_zero_ca 
               Height          =   375
               Left            =   840
               TabIndex        =   169
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label105 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Ohm/km"
               Height          =   195
               Left            =   2025
               TabIndex        =   171
               Top             =   450
               Width           =   645
            End
            Begin VB.Label Label104 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "X11 ="
               Height          =   195
               Left            =   315
               TabIndex        =   170
               Top             =   450
               Width           =   435
            End
         End
         Begin VB.Frame Frame17 
            Caption         =   "Reatâncias Aparentes"
            Height          =   1935
            Left            =   120
            TabIndex        =   158
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_apar_a_ca 
               Height          =   375
               Left            =   840
               TabIndex        =   159
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_b_ca 
               Height          =   375
               Left            =   840
               TabIndex        =   160
               Top             =   840
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_c_ca 
               Height          =   375
               Left            =   840
               TabIndex        =   161
               Top             =   1320
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label103 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xa ="
               Height          =   195
               Left            =   405
               TabIndex        =   167
               Top             =   480
               Width           =   345
            End
            Begin VB.Label Label102 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xb ="
               Height          =   195
               Left            =   405
               TabIndex        =   166
               Top             =   930
               Width           =   345
            End
            Begin VB.Label Label101 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xc ="
               Height          =   195
               Left            =   405
               TabIndex        =   165
               Top             =   1410
               Width           =   345
            End
            Begin VB.Label Label100 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   164
               Top             =   450
               Width           =   405
            End
            Begin VB.Label Label99 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   163
               Top             =   930
               Width           =   405
            End
            Begin VB.Label Label98 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   162
               Top             =   1410
               Width           =   405
            End
         End
         Begin VB.Frame Frame16 
            Caption         =   "Dados Específicos"
            Height          =   975
            Left            =   120
            TabIndex        =   154
            Top             =   480
            Width           =   6015
            Begin VB.TextBox txtResistividade_solo_ca 
               Alignment       =   1  'Right Justify
               Height          =   375
               Left            =   2430
               TabIndex        =   155
               Text            =   "100"
               Top             =   360
               Width           =   1095
            End
            Begin VB.Label Label97 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Ohm*m"
               Height          =   195
               Left            =   3600
               TabIndex        =   157
               Top             =   450
               Width           =   525
            End
            Begin VB.Label Label94 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Resistividade do solo (ro):"
               Height          =   195
               Left            =   480
               TabIndex        =   156
               Top             =   450
               Width           =   1845
            End
         End
         Begin VB.Frame Frame15 
            Caption         =   "Reatância de Sequência +"
            Height          =   975
            Left            =   -71880
            TabIndex        =   150
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_ind_seq_zero_si 
               Height          =   375
               Left            =   840
               TabIndex        =   151
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label93 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "X11 ="
               Height          =   195
               Left            =   315
               TabIndex        =   153
               Top             =   450
               Width           =   435
            End
            Begin VB.Label Label92 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Ohm/km"
               Height          =   195
               Left            =   2025
               TabIndex        =   152
               Top             =   450
               Width           =   645
            End
         End
         Begin VB.Frame Frame14 
            Caption         =   "Reatâncias Aparentes"
            Height          =   1935
            Left            =   -74880
            TabIndex        =   140
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_apar_a_si 
               Height          =   375
               Left            =   840
               TabIndex        =   141
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_b_si 
               Height          =   375
               Left            =   840
               TabIndex        =   142
               Top             =   840
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_c_si 
               Height          =   375
               Left            =   840
               TabIndex        =   143
               Top             =   1320
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label91 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   149
               Top             =   1410
               Width           =   405
            End
            Begin VB.Label Label90 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   148
               Top             =   930
               Width           =   405
            End
            Begin VB.Label Label89 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   147
               Top             =   450
               Width           =   405
            End
            Begin VB.Label Label88 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xc ="
               Height          =   195
               Left            =   405
               TabIndex        =   146
               Top             =   1410
               Width           =   345
            End
            Begin VB.Label Label87 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xb ="
               Height          =   195
               Left            =   405
               TabIndex        =   145
               Top             =   930
               Width           =   345
            End
            Begin VB.Label Label86 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xa ="
               Height          =   195
               Left            =   405
               TabIndex        =   144
               Top             =   480
               Width           =   345
            End
         End
         Begin VB.CommandButton btnReatIndss 
            Caption         =   "Calcular"
            Height          =   615
            Left            =   -70200
            TabIndex        =   139
            Top             =   5640
            Width           =   975
         End
         Begin VB.Frame Frame13 
            Caption         =   "Reatância de Sequência +"
            Height          =   975
            Left            =   -74880
            TabIndex        =   135
            Top             =   3600
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_ind_seq_zero 
               Height          =   375
               Left            =   840
               TabIndex        =   136
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label85 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Ohm/km"
               Height          =   195
               Left            =   2025
               TabIndex        =   138
               Top             =   450
               Width           =   645
            End
            Begin VB.Label Label84 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Xs ="
               Height          =   195
               Left            =   360
               TabIndex        =   137
               Top             =   450
               Width           =   345
            End
         End
         Begin VB.Frame Frame12 
            Caption         =   "Reatâncias Aparentes"
            Height          =   1935
            Left            =   -71760
            TabIndex        =   125
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskReat_apar_a 
               Height          =   375
               Left            =   840
               TabIndex        =   126
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_b 
               Height          =   375
               Left            =   840
               TabIndex        =   127
               Top             =   840
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskReat_apar_c 
               Height          =   375
               Left            =   840
               TabIndex        =   128
               Top             =   1320
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label83 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "xa ="
               Height          =   195
               Left            =   420
               TabIndex        =   134
               Top             =   480
               Width           =   315
            End
            Begin VB.Label Label82 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "xb ="
               Height          =   195
               Left            =   420
               TabIndex        =   133
               Top             =   930
               Width           =   315
            End
            Begin VB.Label Label81 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "xc ="
               Height          =   195
               Left            =   420
               TabIndex        =   132
               Top             =   1410
               Width           =   315
            End
            Begin VB.Label Label80 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   131
               Top             =   450
               Width           =   405
            End
            Begin VB.Label Label79 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   130
               Top             =   930
               Width           =   405
            End
            Begin VB.Label Label78 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   129
               Top             =   1410
               Width           =   405
            End
         End
         Begin VB.Frame Frame11 
            Caption         =   "Indutâncias Aparentes"
            Height          =   1935
            Left            =   -74880
            TabIndex        =   115
            Top             =   1560
            Width           =   2895
            Begin MSMask.MaskEdBox mskIndut_apar_a 
               Height          =   375
               Left            =   840
               TabIndex        =   116
               Top             =   360
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskIndut_apar_b 
               Height          =   375
               Left            =   840
               TabIndex        =   117
               Top             =   840
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox mskIndut_apar_c 
               Height          =   375
               Left            =   840
               TabIndex        =   118
               Top             =   1320
               Width           =   1095
               _ExtentX        =   1931
               _ExtentY        =   661
               _Version        =   393216
               Format          =   "0.00000E+00"
               PromptChar      =   "_"
            End
            Begin VB.Label Label77 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   124
               Top             =   1410
               Width           =   405
            End
            Begin VB.Label Label76 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   123
               Top             =   930
               Width           =   405
            End
            Begin VB.Label Label75 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "F/km"
               Height          =   195
               Left            =   1950
               TabIndex        =   122
               Top             =   450
               Width           =   405
            End
            Begin VB.Label Label74 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Lc ="
               Height          =   195
               Left            =   405
               TabIndex        =   121
               Top             =   1410
               Width           =   345
            End
            Begin VB.Label Label73 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "Lb ="
               Height          =   195
               Left            =   405
               TabIndex        =   120
               Top             =   930
               Width           =   345
            End
            Begin VB.Label Label72 
               Alignment       =   2  'Center
               AutoSize        =   -1  'True
               Caption         =   "La ="
               Height          =   195
               Left            =   405
               TabIndex        =   119
               Top             =   480
               Width           =   345
            End
         End
      End
      Begin VB.Label Label71 
         AutoSize        =   -1  'True
         Caption         =   "- Rodrigo Pinto da Silva."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   114
         Top             =   5160
         Width           =   2160
      End
      Begin VB.Label Label70 
         AutoSize        =   -1  'True
         Caption         =   "- Robson Rey Viana;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   113
         Top             =   4800
         Width           =   1860
      End
      Begin VB.Label Label69 
         AutoSize        =   -1  'True
         Caption         =   "- Luciana Oliveira de Barros;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   112
         Top             =   4440
         Width           =   2520
      End
      Begin VB.Label Label68 
         AutoSize        =   -1  'True
         Caption         =   "- Leandro de Assis Gabriel;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   111
         Top             =   4080
         Width           =   2430
      End
      Begin VB.Label Label67 
         AutoSize        =   -1  'True
         Caption         =   "- José Ribamar Dantas;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   110
         Top             =   3720
         Width           =   2115
      End
      Begin VB.Label Label66 
         AutoSize        =   -1  'True
         Caption         =   "- João Batista Dias de Oliveira Junior;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   109
         Top             =   3360
         Width           =   3345
      End
      Begin VB.Label Label65 
         AutoSize        =   -1  'True
         Caption         =   "- Fernando Santos Andrade;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   108
         Top             =   3000
         Width           =   2520
      End
      Begin VB.Label Label64 
         AutoSize        =   -1  'True
         Caption         =   "- Fabrícia da Cunha Conçuli;"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   -74160
         TabIndex        =   107
         Top             =   2640
         Width           =   2490
      End
      Begin VB.Label Label41 
         Caption         =   $"Linhas_Eletrica.frx":00FC
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   -74880
         TabIndex        =   83
         Top             =   960
         Width           =   6015
      End
      Begin VB.Label Label18 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m"
         Height          =   195
         Left            =   -70605
         TabIndex        =   28
         Top             =   4890
         Width           =   135
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m"
         Height          =   195
         Left            =   -70605
         TabIndex        =   27
         Top             =   4410
         Width           =   135
      End
      Begin VB.Label Label16 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m/km"
         Height          =   195
         Left            =   -70605
         TabIndex        =   26
         Top             =   3930
         Width           =   435
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m/km"
         Height          =   195
         Left            =   -70605
         TabIndex        =   25
         Top             =   3450
         Width           =   435
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m"
         Height          =   195
         Left            =   -70605
         TabIndex        =   24
         Top             =   2970
         Width           =   135
      End
      Begin VB.Label Label13 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "hz"
         Height          =   195
         Left            =   -70605
         TabIndex        =   23
         Top             =   2490
         Width           =   195
      End
      Begin VB.Label Label12 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m"
         Height          =   195
         Left            =   -70605
         TabIndex        =   22
         Top             =   2010
         Width           =   135
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m"
         Height          =   195
         Left            =   -70605
         TabIndex        =   21
         Top             =   1530
         Width           =   135
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "m"
         Height          =   195
         Left            =   -70605
         TabIndex        =   20
         Top             =   1050
         Width           =   135
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Raio médio geométrico do pára-raio:"
         Height          =   195
         Left            =   -74400
         TabIndex        =   19
         Top             =   4890
         Width           =   2565
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Raio médio geométrico do condutor:"
         Height          =   195
         Left            =   -74430
         TabIndex        =   18
         Top             =   4410
         Width           =   2595
      End
      Begin VB.Label Label7 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Flecha média do pára-raio:"
         Height          =   195
         Left            =   -73740
         TabIndex        =   17
         Top             =   3930
         Width           =   1905
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Flecha média dos condutores:"
         Height          =   195
         Left            =   -73980
         TabIndex        =   16
         Top             =   3450
         Width           =   2145
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Comprimento do condutor ""b"" ao ""c"":"
         Height          =   195
         Left            =   -74520
         TabIndex        =   15
         Top             =   2970
         Width           =   2685
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Freqüência:"
         Height          =   195
         Left            =   -72690
         TabIndex        =   14
         Top             =   2490
         Width           =   855
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Altura entre pára-raio e o condutor ""a"":"
         Height          =   195
         Left            =   -74610
         TabIndex        =   13
         Top             =   2010
         Width           =   2775
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Altura entre os condutores ""a"" e ""c"":"
         Height          =   195
         Left            =   -74460
         TabIndex        =   12
         Top             =   1530
         Width           =   2625
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Altura do condutor ""c"" ao solo:"
         Height          =   195
         Left            =   -74040
         TabIndex        =   11
         Top             =   1050
         Width           =   2205
      End
   End
End
Attribute VB_Name = "frmLinhas_Ele"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'---------------------------------------------------------------------------------------------------
'                                   Declaração das variáveis
'---------------------------------------------------------------------------------------------------
Dim altura_c_solo As Double                     'Altura do condutor "c" ao solo
Dim altura_a_c As Double                        'Altura entre os condutores "a" e "c"
Dim altura_b_c As Double                        'Altura entre os condutores "b" e "c"
Dim altura_pararaio_a As Double                 'Altura entre pára-raio e o condutor "a"
Dim frequencia As Double                        'Freqüência
Dim comprimento_condutor_b_c(3, 3) As Double    'Comprimento do condutor "b" ao "c"
Dim flecha_media(4) As Double                   'Flecha média dos condutores e do pára-raio
Dim raio(4) As Double                           'Raio médio geométrico dos condutores e do pára-raio
Dim h(3) As Double                              'Vetor de alturas médias
Dim D(3, 3) As Double                           'Matriz de distância entre os condutores
Dim Dic(3, 3) As Double                         'Matriz de distância entre condutores e imagens
Dim pi As Double                                'Número pi
Dim w As Double                                 'Velocidade angular (w = 2 * pi * f)
Dim linha As Integer
Dim coluna As Integer
Dim X(3, 3) As Double                           'Matriz auxiliar
'---------------------------------------------------------------------------------------------------

Private Sub btnFechar_Click()
    Unload frmLinhas_Ele
End Sub

Private Sub btnLimpar_Reat_Cap_Click()
'---------------------------------------------------------------------------------------------------
'                                 Limpando cálculos realizados
'---------------------------------------------------------------------------------------------------
mskCap_parc_a.Text = ""
mskCap_parc_b.Text = ""
mskCap_parc_c.Text = ""
mskCap_parc_a_b.Text = ""
mskCap_parc_a_c.Text = ""
mskCap_parc_b_c.Text = ""
mskCap_apar_a.Text = ""
mskCap_apar_b.Text = ""
mskCap_apar_c.Text = ""
mskCap_seq_pos.Text = ""
mskCap_seq_zero.Text = ""
mskReat_cap_seq_pos.Text = ""
mskReat_cap_seq_zero.Text = ""
'---------------------------------------------------------------------------------------------------
End Sub

Private Sub btnLimpar_Reat_Ind_c_a_Click()
'---------------------------------------------------------------------------------------------------
'                                 Limpando cálculos realizados
'---------------------------------------------------------------------------------------------------
mskReat_apar_a_ca.Text = ""
mskReat_apar_b_ca.Text = ""
mskReat_apar_c_ca.Text = ""
mskReat_ind_seq_zero_ca.Text = ""
'---------------------------------------------------------------------------------------------------
End Sub

Private Sub btnLimpar_Reat_Ind_c_e_Click()
'---------------------------------------------------------------------------------------------------
'                                 Limpando cálculos realizados
'---------------------------------------------------------------------------------------------------
mskReat_apar_a_ce.Text = ""
mskReat_apar_b_ce.Text = ""
mskReat_apar_c_ce.Text = ""
mskReat_ind_seq_zero_ce.Text = ""
'---------------------------------------------------------------------------------------------------
End Sub


Private Sub btnLimpar_Reat_Ind_s_i_Click()
'---------------------------------------------------------------------------------------------------
'                                 Limpando cálculos realizados
'---------------------------------------------------------------------------------------------------
mskReat_apar_a_si.Text = ""
mskReat_apar_b_si.Text = ""
mskReat_apar_c_si.Text = ""
mskReat_ind_seq_zero_si.Text = ""
'---------------------------------------------------------------------------------------------------
End Sub

Private Sub btnLimpar_Reat_Ind_s_s_Click()
'---------------------------------------------------------------------------------------------------
'                                 Limpando cálculos realizados
'---------------------------------------------------------------------------------------------------
mskIndut_apar_a.Text = ""
mskIndut_apar_b.Text = ""
mskIndut_apar_c.Text = ""
mskReat_apar_a.Text = ""
mskReat_apar_b.Text = ""
mskReat_apar_c.Text = ""
mskReat_ind_seq_zero.Text = ""
'---------------------------------------------------------------------------------------------------
End Sub

Private Sub btnReatCap_Click()
    Call Dados_Gerais
    Call Reatancia_Capacitiva
End Sub

Private Sub btnReatIndca_Click()
    Call Dados_Gerais
    Call Reatancia_Indutiva_Carson_Aproximado
End Sub


Private Sub btnReatIndce_Click()
    Call Dados_Gerais
    Call Reatancia_Indutiva_Carson_Exato
End Sub


Private Sub btnReatIndsi_Click()
    Call Dados_Gerais
    Call Reatancia_Indutiva_solo_ideal
End Sub


Private Sub btnReatIndss_Click()
    Call Dados_Gerais
    Call Reatancia_Indutiva_sem_solo
End Sub


Private Sub btnResist_Click()
    Call Dados_Gerais
    Call Resistencia
End Sub


Public Sub Dados_Gerais()
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                   Aquisição dos Dados Gerais
'---------------------------------------------------------------------------------------------------
pi = 3.14159265358979
flecha_media(0) = txtFlechaMediaCondutores.Text
flecha_media(1) = flecha_media(0)
flecha_media(2) = flecha_media(0)
flecha_media(3) = txtFlechaMediaPararaio.Text

raio(0) = txtRaioCondutor.Text
raio(1) = raio(0)
raio(2) = raio(0)
raio(3) = txtRaioPararaio.Text

altura_c_solo = txtAltura_cs.Text
altura_a_c = txtAltura_ac.Text
altura_b_c = altura_a_c / 2
altura_pararaio_a = txtAltura_pararaio_a.Text
frequencia = txtFrequencia.Text


linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            X(linha, coluna) = 0
        Else
            If linha < coluna Then
                If coluna = 3 Then
                    X(linha, coluna) = txtComprimentoCondutor.Text / 2
                Else
                    X(linha, coluna) = txtComprimentoCondutor.Text
                End If
            Else
                X(linha, coluna) = txtComprimentoCondutor.Text / 2
            End If
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                           ALTURAS MÉDIAS
'---------------------------------------------------------------------------------------------------
h(0) = altura_c_solo + altura_a_c - (0.7 * flecha_media(0))
h(1) = altura_c_solo + altura_b_c - (0.7 * flecha_media(1))
h(2) = altura_c_solo - (0.7 * flecha_media(2))
h(3) = altura_c_solo + altura_a_c + altura_pararaio_a - (0.7 * flecha_media(3))
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                    DISTÂNCIA ENTRE CONDUTORES
'---------------------------------------------------------------------------------------------------
linha = 0
For linha = 0 To 3
    For coluna = 0 To 3
        If coluna <= linha Then
            D(linha, coluna) = 0
        End If
    Next coluna
Next linha
D(0, 1) = ((txtComprimentoCondutor.Text) ^ 2 + (altura_b_c) ^ 2) ^ 0.5
D(0, 2) = altura_a_c
D(0, 3) = (((txtComprimentoCondutor.Text / 2) ^ 2) + (altura_pararaio_a) ^ 2) ^ 0.5
D(1, 2) = D(0, 1)
D(1, 3) = (((altura_pararaio_a + altura_b_c) ^ 2) + ((txtComprimentoCondutor.Text / 2) ^ 2)) ^ 0.5
D(2, 3) = (((altura_a_c + altura_pararaio_a) ^ 2) + ((txtComprimentoCondutor.Text / 2) ^ 2)) ^ 0.5
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                               DISTÂNCIA ENTRE CONDUTORES E IMAGENS
'---------------------------------------------------------------------------------------------------
linha = 0
For linha = 0 To 3
    For coluna = 0 To 3
        If coluna > linha Then
            Dic(linha, coluna) = (4 * h(coluna) * h(linha) + ((D(linha, coluna)) ^ 2)) ^ 0.5
        Else
            Dic(linha, coluna) = 0
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------
End Sub
Public Sub Reatancia_Capacitiva()
'---------------------------------------------------------------------------------------------------
'                                Declaração das variáveis locais
'---------------------------------------------------------------------------------------------------
Dim Raio_condutores_reat_cap(3) As Double
Dim linha As Integer
Dim coluna As Integer
Dim A(3, 3) As Double                               'Matriz auxiliar
Dim A_red(2, 2) As Double                           'Matriz auxiliar reduxida
Dim A_transp(2, 2) As Double                        'Matriz auxiliar reduzida transposta
Dim A_inv(2, 2) As Double                           'Matriz auxiliar reduzida inversa
Dim capacit_parc_a As Double                        'Capacitância parcial do condutor a
Dim capacit_parc_b As Double                        'Capacitância parcial do condutor b
Dim capacit_parc_c As Double                        'Capacitância parcial do condutor c
Dim capacit_parc_a_b As Double                      'Capacitância parcial entre condutores a e b
Dim capacit_parc_a_c As Double                      'Capacitância parcial entre condutores a e c
Dim capacit_parc_b_c As Double                      'Capacitância parcial entre condutores b e c
Dim capacit_apar_a As Double                        'Capacitância aparente do condutor a
Dim capacit_apar_b As Double                        'Capacitância aparente do condutor b
Dim capacit_apar_c As Double                        'Capacitância aparente do condutor c
Dim capacit_seq_pos As Double                       'Capacitância de Sequência +
Dim capacit_seq_zero As Double                      'Capacitância de Sequência 0
Dim reat_cap_seq_pos As Double                      'Reatância Capacitiva de Sequência +
Dim reat_cap_seq_zero As Double                     'Reatância Capacitiva de Sequência 0
'---------------------------------------------------------------------------------------------------
'               Variáveis auxiliares para calcular a determinante da matriz A
'---------------------------------------------------------------------------------------------------
Dim det As Double
Dim det1 As Double
Dim det2 As Double
Dim det3 As Double
Dim det4 As Double
Dim det5 As Double
Dim det6 As Double
Dim det7 As Double
Dim det8 As Double
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                Aquisição dos Dados Específicos
'---------------------------------------------------------------------------------------------------
Raio_condutores_reat_cap(0) = txtRaioCondutor_Reat_Cap.Text
Raio_condutores_reat_cap(1) = Raio_condutores_reat_cap(0)
Raio_condutores_reat_cap(2) = Raio_condutores_reat_cap(0)
Raio_condutores_reat_cap(3) = txtRaioPararaio_Reat_Cap.Text
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                Cálculo das Reatâncias Capacitivas
'---------------------------------------------------------------------------------------------------
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            A(linha, coluna) = 41446800 * (Log(2 * h(linha) / Raio_condutores_reat_cap(linha)) / Log(10))
        Else
            If linha < coluna Then
                A(linha, coluna) = 41446800 * (Log(Dic(linha, coluna) / D(linha, coluna)) / Log(10))
            Else
                A(linha, coluna) = A(coluna, linha)
            End If
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                  Reduzindo a matriz A (pára-raios aterrados em todas as estruturas)
'---------------------------------------------------------------------------------------------------
linha = 0
For linha = 0 To 2
    coluna = 0
    For coluna = 0 To 2
        If linha <= coluna Then
            A_red(linha, coluna) = A(linha, coluna) - (A(linha, 3) * A(3, coluna) / A(3, 3))
        Else
            A_red(linha, coluna) = A_red(coluna, linha)
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo da matriz inversa da matriz A
'---------------------------------------------------------------------------------------------------
det1 = A_red(0, 0) * A_red(1, 1) * A_red(2, 2)
det2 = A_red(0, 1) * A_red(1, 2) * A_red(2, 0)
det3 = A_red(0, 2) * A_red(1, 0) * A_red(2, 1)
det4 = det1 + det2 + det3
det5 = A_red(0, 2) * A_red(1, 1) * A_red(2, 0)
det6 = A_red(1, 2) * A_red(2, 1) * A_red(0, 0)
det7 = A_red(2, 2) * A_red(0, 1) * A_red(1, 0)
det8 = det5 + det6 + det7
det = det4 - det8

A_transp(0, 0) = (A_red(1, 1) * A_red(2, 2)) - (A_red(1, 2) * A_red(2, 1))
A_transp(0, 1) = -1 * ((A_red(1, 0) * A_red(2, 2)) - (A_red(1, 2) * A_red(2, 0)))
A_transp(0, 2) = (A_red(1, 0) * A_red(2, 1)) - (A_red(1, 1) * A_red(2, 0))
A_transp(1, 0) = -1 * ((A_red(0, 1) * A_red(2, 2)) - (A_red(0, 2) * A_red(2, 1)))
A_transp(1, 1) = (A_red(0, 0) * A_red(2, 2)) - (A_red(0, 2) * A_red(2, 0))
A_transp(1, 2) = -1 * ((A_red(0, 0) * A_red(2, 1)) - (A_red(0, 1) * A_red(2, 0)))
A_transp(2, 0) = (A_red(0, 1) * A_red(1, 2)) - (A_red(0, 2) * A_red(1, 1))
A_transp(2, 1) = -1 * ((A_red(0, 0) * A_red(1, 2)) - (A_red(0, 2) * A_red(1, 0)))
A_transp(2, 2) = (A_red(0, 0) * A_red(1, 1)) - (A_red(0, 1) * A_red(1, 0))

linha = 0
For linha = 0 To 2
    coluna = 0
    For coluna = 0 To 2
        A_inv(linha, coluna) = A_transp(linha, coluna) / det
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Capacitâncias Parciais
'---------------------------------------------------------------------------------------------------
capacit_parc_a = A_inv(0, 0) + A_inv(0, 1) + A_inv(0, 2)
capacit_parc_b = A_inv(1, 1) + A_inv(0, 1) + A_inv(1, 2)
capacit_parc_c = A_inv(2, 2) + A_inv(0, 2) + A_inv(1, 2)
capacit_parc_a_b = -A_inv(0, 1)
capacit_parc_a_c = -A_inv(0, 2)
capacit_parc_b_c = -A_inv(1, 2)
'---------------------------------------------------------------------------------------------------
'                                  Escrevendo Capacitâncias Parciais
'---------------------------------------------------------------------------------------------------
mskCap_parc_a.Text = capacit_parc_a
mskCap_parc_b.Text = capacit_parc_b
mskCap_parc_c.Text = capacit_parc_c
mskCap_parc_a_b.Text = capacit_parc_a_b
mskCap_parc_a_c.Text = capacit_parc_a_c
mskCap_parc_b_c.Text = capacit_parc_b_c
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                 Cálculo das Capacitâncias Aparentes
'---------------------------------------------------------------------------------------------------
capacit_apar_a = capacit_parc_a + (1.5 * (capacit_parc_a_b + capacit_parc_a_c))
capacit_apar_b = capacit_parc_b + (1.5 * (capacit_parc_a_b + capacit_parc_b_c))
capacit_apar_c = capacit_parc_c + (1.5 * (capacit_parc_a_c + capacit_parc_b_c))
'---------------------------------------------------------------------------------------------------
'                                  Escrevendo Capacitâncias Aparentes
'---------------------------------------------------------------------------------------------------
mskCap_apar_a.Text = capacit_apar_a
mskCap_apar_b.Text = capacit_apar_b
mskCap_apar_c.Text = capacit_apar_c
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                Cálculo da Capacitância de Sequência +
'---------------------------------------------------------------------------------------------------
capacit_seq_pos = (capacit_apar_a + capacit_apar_b + capacit_apar_c) / 3
'---------------------------------------------------------------------------------------------------
'                                Escrevendo Capacitâncias de Sequência +
'---------------------------------------------------------------------------------------------------
mskCap_seq_pos.Text = capacit_seq_pos
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                               Cálculo da Capacitância de Sequência 0
'---------------------------------------------------------------------------------------------------
capacit_seq_zero = 1 / (A_red(0, 0) + 2 * (A_red(0, 1)))
'---------------------------------------------------------------------------------------------------
'                               Escrevendo Capacitâncias de Sequência 0
'---------------------------------------------------------------------------------------------------
mskCap_seq_zero.Text = capacit_seq_zero
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                          Cálculo da Reatância Capacitiva de Sequência +
'---------------------------------------------------------------------------------------------------
reat_cap_seq_pos = 1 / (2 * pi * frequencia * capacit_seq_pos)
'---------------------------------------------------------------------------------------------------
'                          Escrevendo Reatância Capacitiva de Sequência +
'---------------------------------------------------------------------------------------------------
mskReat_cap_seq_pos.Text = reat_cap_seq_pos
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                          Cálculo da Reatância Capacitiva de Sequência 0
'---------------------------------------------------------------------------------------------------
reat_cap_seq_zero = 1 / (2 * pi * frequencia * capacit_seq_zero)
'---------------------------------------------------------------------------------------------------
'                          Escrevendo Reatância Capacitiva de Sequência 0
'---------------------------------------------------------------------------------------------------
mskReat_cap_seq_zero.Text = reat_cap_seq_zero
'---------------------------------------------------------------------------------------------------



End Sub
Public Sub Resistencia()
'---------------------------------------------------------------------------------------------------
'                                Declaração das variáveis locais
'---------------------------------------------------------------------------------------------------
Dim resistencia_condutor(3) As Double               'Resistência dos condutores
Dim alfa As Double                                  'Constante alfa
Dim temperatura_inicial As Double                   'Temperatura inicial
Dim temperatura_final As Double                     'Temperatura final
Dim resistividade As Double                         'Resistividade do solo
Dim resistencia_parcial(3) As Double                'Vetor para cálculo da matriz das Resistências
Dim R(3, 3) As Double                               'Matriz das Resistências
Dim R_cor(3, 3) As Double                           'Matriz das Resistências corrigida
Dim R_eq(3, 3) As Double                            'Matriz das Resistências equivalentes
Dim teta(3, 3) As Double                            'Matriz Teta
Dim P(3, 3) As Double                               'Matriz Auxiliar
Dim P_cor(3, 3) As Double                           'Matriz Auxiliar corrigida
Dim P_mod(3, 3) As Double                           'Matriz Auxiliar corrigida e modificada
Dim resist_seq_pos As Double                        'Resistência de Sequência +
Dim resist_seq_zero As Double                       'Resistência de Sequência 0
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                Aquisição dos Dados Específicos
'---------------------------------------------------------------------------------------------------
resistencia_condutor(0) = txtResistencia_condutor.Text
resistencia_condutor(1) = resistencia_condutor(0)
resistencia_condutor(2) = resistencia_condutor(0)
resistencia_condutor(3) = txtResistencia_pararaio.Text
alfa = txtAlfa.Text
temperatura_inicial = txtTemperatura_inicial.Text
temperatura_final = txtTemperatura_final.Text
resistividade = txtResistividade_solo_resist.Text
resistencia_parcial(0) = resistencia_condutor(0) * (1 + alfa * (temperatura_final - temperatura_inicial))
resistencia_parcial(1) = resistencia_parcial(0)
resistencia_parcial(2) = resistencia_parcial(0)
resistencia_parcial(3) = resistencia_condutor(3)
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                 Cálculo da Matriz de Resistências
'---------------------------------------------------------------------------------------------------
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            R(linha, coluna) = resistencia_parcial(linha)
            P(linha, coluna) = 0.00562 * h(linha) * Sqr(frequencia / resistividade)
            teta(linha, coluna) = 0
            P_cor(linha, coluna) = (pi / 8) - (P(linha, coluna) / (3 * Sqr(2))) * Cos(teta(linha, coluna)) + (P(linha, coluna) * P(linha, coluna) / 16) * Cos(2 * teta(linha, coluna)) * (0.6728 + (Log(2 / P(linha, coluna)) / Log(10))) + (P(linha, coluna) * P(linha, coluna) / 16) * teta(linha, coluna) * Sin(2 * teta(linha, coluna))
            P_mod(linha, coluna) = 0.002513 * frequencia * P_cor(linha, coluna)
            R_cor(linha, coluna) = resistencia_parcial(linha) + P_mod(linha, coluna)                                     'MATRIZ DAS RESISTÊNCIAS CORRIGIDA
        Else
            R(linha, coluna) = 0
            If coluna > linha Then
                P(linha, coluna) = 0.00281004 * Dic(linha, coluna) * Sqr(frequencia / resistividade)
                teta(linha, coluna) = Atn(X(linha, coluna) / (h(linha) + h(coluna)))
                P_cor(linha, coluna) = (pi / 8) - (P(linha, coluna) / (3 * Sqr(2))) * Cos(teta(linha, coluna)) + (P(linha, coluna) * P(linha, coluna) / 16) * Cos(2 * teta(linha, coluna)) * (0.6728 + (Log(2 / P(linha, coluna)) / Log(10))) + (P(linha, coluna) * P(linha, coluna) / 16) * teta(linha, coluna) * Sin(2 * teta(linha, coluna))
                P_mod(linha, coluna) = 0.002513 * frequencia * P_cor(linha, coluna)
                R_cor(linha, coluna) = P_mod(linha, coluna)
            Else
                P(linha, coluna) = P(coluna, linha)
                teta(linha, coluna) = teta(coluna, linha)
                P_cor(linha, coluna) = P_cor(coluna, linha)
                P_mod(linha, coluna) = P_mod(coluna, linha)
                R_cor(linha, coluna) = R_cor(coluna, linha)
            End If
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                             Cálculo da Matriz de Resistências Reduzida
'---------------------------------------------------------------------------------------------------
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        R_eq(linha, coluna) = R_cor(linha, coluna) - R_cor(3, linha) * R_cor(coluna, 3) / R_cor(3, 3)
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                 Cálculo da Resistência de Sequência +
'---------------------------------------------------------------------------------------------------
resist_seq_pos = R_eq(0, 0) - R_eq(0, 1)
'---------------------------------------------------------------------------------------------------
'                                 Escrevendo Resistência de Sequência +
'---------------------------------------------------------------------------------------------------
mskResist_seq_pos.Text = resist_seq_pos
'---------------------------------------------------------------------------------------------------
'                                 Cálculo da Resistência de Sequência 0
'---------------------------------------------------------------------------------------------------
resist_seq_zero = R_eq(0, 0) + 2 * R_eq(0, 1)
'---------------------------------------------------------------------------------------------------
'                                 Escrevendo Resistência de Sequência 0
'---------------------------------------------------------------------------------------------------
mskResist_seq_zero.Text = resist_seq_zero
'---------------------------------------------------------------------------------------------------
End Sub
Public Sub Reatancia_Indutiva_sem_solo()
'---------------------------------------------------------------------------------------------------
'                                Declaração das variáveis locais
'---------------------------------------------------------------------------------------------------
Dim linha As Integer
Dim coluna As Integer
Dim F(3, 3) As Double                               'Matriz auxiliar
Dim F_red(2, 2) As Double                           'Matriz auxiliar reduzida
Dim Xc(3, 3) As Double                              'Matriz de capacitâncias
Dim X_red(2, 2) As Double                           'Matriz de capacitâncias reduzida
Dim L_eq(2, 2) As Double                            'Matriz das Capacitâncias Equivalentes
Dim indut_apar_a As Double                          'Indutância aparente do condutor a
Dim indut_apar_b As Double                          'Indutância aparente do condutor b
Dim indut_apar_c As Double                          'Indutância aparente do condutor c
Dim reat_apar_a As Double                           'Capacitância aparente do condutor a
Dim reat_apar_b As Double                           'Capacitância aparente do condutor b
Dim reat_apar_c As Double                           'Capacitância aparente do condutor c
Dim reat_ind_seq_zero As Double                     'Reatância Indutiva de Sequência 0
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Matrizes Auxiliares
'---------------------------------------------------------------------------------------------------
w = 2 * pi * frequencia
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            F(linha, coluna) = 0.00046052 * (Log(1 / raio(linha)) / Log(10))
        Else
            If coluna > linha Then
                F(linha, coluna) = 0.00046052 * (Log(1 / D(linha, coluna)) / Log(10))
            Else
                F(linha, coluna) = F(coluna, linha)
            End If
        End If
        Xc(linha, coluna) = w * F(linha, coluna)
    Next coluna
Next linha
linha = 0
For linha = 0 To 2
    coluna = 0
    For coluna = 0 To 2
        If coluna >= linha Then
            F_red(linha, coluna) = w * (-1) * (F(3, linha) * F(coluna, 3) / F(3, 3))
            X_red(linha, coluna) = Xc(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        Else
            F_red(linha, coluna) = F_red(coluna, linha)
            X_red(linha, coluna) = Xc(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Indutâncias Aparentes
'---------------------------------------------------------------------------------------------------
indut_apar_a = L_eq(0, 0) - (0.5 * (L_eq(0, 1) + L_eq(0, 2)))
indut_apar_b = L_eq(1, 1) - (0.5 * (L_eq(1, 0) + L_eq(1, 2)))
indut_apar_c = L_eq(2, 2) - (0.5 * (L_eq(2, 0) + L_eq(2, 1)))
'---------------------------------------------------------------------------------------------------
'                                  Escrevendo Indutâncias Aparentes
'---------------------------------------------------------------------------------------------------
mskIndut_apar_a.Text = indut_apar_a
mskIndut_apar_b.Text = indut_apar_b
mskIndut_apar_c.Text = indut_apar_c
'---------------------------------------------------------------------------------------------------
'                                   Cálculo das Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
reat_apar_a = w * indut_apar_a
reat_apar_b = w * indut_apar_b
reat_apar_c = w * indut_apar_c
'---------------------------------------------------------------------------------------------------
'                                   Escrevendo Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
mskReat_apar_a.Text = reat_apar_a
mskReat_apar_b.Text = reat_apar_b
mskReat_apar_c.Text = reat_apar_c
'---------------------------------------------------------------------------------------------------
'                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
'---------------------------------------------------------------------------------------------------
'                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
mskReat_ind_seq_zero.Text = reat_ind_seq_zero
'---------------------------------------------------------------------------------------------------
End Sub
Public Sub Reatancia_Indutiva_solo_ideal()
'---------------------------------------------------------------------------------------------------
'                                Declaração das variáveis locais
'---------------------------------------------------------------------------------------------------
Dim linha As Integer
Dim coluna As Integer
Dim F(3, 3) As Double                               'Matriz auxiliar
Dim F_red(2, 2) As Double                           'Matriz auxiliar reduzida
Dim Xc(3, 3) As Double                              'Matriz de capacitâncias
Dim X_red(2, 2) As Double                           'Matriz de capacitâncias reduzida
Dim L_eq(2, 2) As Double                            'Matriz das Capacitâncias Equivalentes
Dim indut_apar_a As Double                          'Indutância aparente do condutor a
Dim indut_apar_b As Double                          'Indutância aparente do condutor b
Dim indut_apar_c As Double                          'Indutância aparente do condutor c
Dim reat_apar_a As Double                           'Capacitância aparente do condutor a
Dim reat_apar_b As Double                           'Capacitância aparente do condutor b
Dim reat_apar_c As Double                           'Capacitância aparente do condutor c
Dim reat_ind_seq_zero As Double                     'Reatância Indutiva de Sequência 0
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Matrizes Auxiliares
'---------------------------------------------------------------------------------------------------
w = 2 * pi * frequencia
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            F(linha, coluna) = 0.00046052 * (Log(2 * h(linha) / raio(linha)) / Log(10))
        Else
            If coluna > linha Then
                F(linha, coluna) = 0.00046052 * (Log(Dic(linha, coluna) / D(linha, coluna)) / Log(10))
            Else
                F(linha, coluna) = F(coluna, linha)
            End If
        End If
        Xc(linha, coluna) = w * F(linha, coluna)
    Next coluna
Next linha

linha = 0
For linha = 0 To 2
    coluna = 0
    For coluna = 0 To 2
        If coluna >= linha Then
            F_red(linha, coluna) = w * (-1) * (F(3, linha) * F(coluna, 3) / F(3, 3))
            X_red(linha, coluna) = Xc(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        Else
            F_red(linha, coluna) = F_red(coluna, linha)
            X_red(linha, coluna) = Xc(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Indutâncias Aparentes
'---------------------------------------------------------------------------------------------------
indut_apar_a = L_eq(0, 0) - (0.5 * (L_eq(0, 1) + L_eq(0, 2)))
indut_apar_b = L_eq(1, 1) - (0.5 * (L_eq(1, 0) + L_eq(1, 2)))
indut_apar_c = L_eq(2, 2) - (0.5 * (L_eq(2, 0) + L_eq(2, 1)))
'---------------------------------------------------------------------------------------------------
'                                   Cálculo das Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
reat_apar_a = w * indut_apar_a
reat_apar_b = w * indut_apar_b
reat_apar_c = w * indut_apar_c
'---------------------------------------------------------------------------------------------------
'                                   Escrevendo Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
mskReat_apar_a_si.Text = reat_apar_a
mskReat_apar_b_si.Text = reat_apar_b
mskReat_apar_c_si.Text = reat_apar_c
'---------------------------------------------------------------------------------------------------
'                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
'---------------------------------------------------------------------------------------------------
'                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
mskReat_ind_seq_zero_si.Text = reat_ind_seq_zero
'---------------------------------------------------------------------------------------------------
End Sub
Public Sub Reatancia_Indutiva_Carson_Aproximado()
'---------------------------------------------------------------------------------------------------
'                                Declaração das variáveis locais
'---------------------------------------------------------------------------------------------------
Dim linha As Integer
Dim coluna As Integer
Dim F(3, 3) As Double                                   'Matriz auxiliar
Dim F_red(2, 2) As Double                               'Matriz auxiliar reduzida
Dim X(3, 3) As Double                                   'Matriz de capacitâncias principal
Dim Xl(3, 3) As Double                                  'Matriz de capacitâncias auxiliar
Dim De As Double                                        'Variável auxiliar
Dim Df(3, 3) As Double                                  'Matriz auxiliar da Variável
Dim Dx(3, 3) As Double                                  'Matriz auxiliar
Dim X_red(2, 2) As Double                               'Matriz de capacitâncias reduzida
Dim L_eq(2, 2) As Double                                'Matriz das Capacitâncias Equivalentes
Dim indut_apar_a As Double                              'Indutância aparente do condutor a
Dim indut_apar_b As Double                              'Indutância aparente do condutor b
Dim indut_apar_c As Double                              'Indutância aparente do condutor c
Dim reat_apar_a As Double                               'Capacitância aparente do condutor a
Dim reat_apar_b As Double                               'Capacitância aparente do condutor b
Dim reat_apar_c As Double                               'Capacitância aparente do condutor c
Dim reat_ind_seq_zero As Double                         'Reatância Indutiva de Sequência 0
Dim resistividade As Double                             'Resistividade do solo
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                Aquisição dos Dados Específicos
'---------------------------------------------------------------------------------------------------
resistividade = txtResistividade_solo_ca.Text
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Matrizes Auxiliares
'---------------------------------------------------------------------------------------------------
w = 2 * pi * frequencia
De = 658.363 * (Sqr(resistividade) / Sqr(frequencia))
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            F(linha, coluna) = 0.00046052 * (Log(1 / raio(linha)) / Log(10))
            Df(linha, coluna) = 0.00046052 * (Log(De) / Log(10))
            Dx(linha, coluna) = w * Df(linha, coluna)
            Xl(linha, coluna) = w * F(linha, coluna) + Dx(linha, coluna)
            X(linha, coluna) = Xl(linha, coluna) / w
        Else
            If coluna > linha Then
                F(linha, coluna) = 0.00046052 * (Log(1 / D(linha, coluna)) / Log(10))
                Df(linha, coluna) = 0.00046052 * (Log(De) / Log(10))
                Dx(linha, coluna) = w * Df(linha, coluna)
                Xl(linha, coluna) = w * F(linha, coluna) + Dx(linha, coluna)
                X(linha, coluna) = Xl(linha, coluna) / w
            Else
                F(linha, coluna) = F(coluna, linha)
                Df(linha, coluna) = Df(coluna, linha)
                Dx(linha, coluna) = Dx(coluna, linha)
                Xl(linha, coluna) = Xl(coluna, linha)
                X(linha, coluna) = X(coluna, linha)
            End If
        End If
    Next coluna
Next linha

linha = 0
For linha = 0 To 2
    coluna = 0
    For coluna = 0 To 2
        If coluna >= linha Then
            F_red(linha, coluna) = w * (-1) * (X(3, linha) * X(coluna, 3) / X(3, 3))
            X_red(linha, coluna) = Xl(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        Else
            F_red(linha, coluna) = F_red(coluna, linha)
            X_red(linha, coluna) = Xl(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Indutâncias Aparentes
'---------------------------------------------------------------------------------------------------
indut_apar_a = L_eq(0, 0) - (0.5 * (L_eq(0, 1) + L_eq(0, 2)))
indut_apar_b = L_eq(1, 1) - (0.5 * (L_eq(1, 0) + L_eq(1, 2)))
indut_apar_c = L_eq(2, 2) - (0.5 * (L_eq(2, 0) + L_eq(2, 1)))
'---------------------------------------------------------------------------------------------------
'                                   Cálculo das Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
reat_apar_a = w * indut_apar_a
reat_apar_b = w * indut_apar_b
reat_apar_c = w * indut_apar_c
'---------------------------------------------------------------------------------------------------
'                                   Escrevendo Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
mskReat_apar_a_ca.Text = reat_apar_a
mskReat_apar_b_ca.Text = reat_apar_b
mskReat_apar_c_ca.Text = reat_apar_c
'---------------------------------------------------------------------------------------------------
'                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
'---------------------------------------------------------------------------------------------------
'                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
mskReat_ind_seq_zero_ca.Text = reat_ind_seq_zero
'---------------------------------------------------------------------------------------------------
End Sub
Public Sub Reatancia_Indutiva_Carson_Exato()
'---------------------------------------------------------------------------------------------------
'                                Declaração das variáveis locais
'---------------------------------------------------------------------------------------------------
Dim linha As Integer
Dim coluna As Integer
Dim F(3, 3) As Double                                   'Matriz auxiliar
Dim F_cor(3, 3) As Double                               'Matriz auxiliar corrigida
Dim F_red(2, 2) As Double                               'Matriz auxiliar reduzida
Dim X(3, 3) As Double                                   'Matriz de capacitâncias principal
Dim Xl(3, 3) As Double                                  'Matriz de capacitâncias auxiliar
Dim Xl_cor(3, 3) As Double                              'Matriz de capacitâncias auxiliar corrigida
Dim Dx(3, 3) As Double                                  'Matriz auxiliar
Dim Dx_cor(3, 3) As Double                              'Matriz auxiliar corrigida
Dim teta(3, 3) As Double                                'Matriz Teta
Dim P(3, 3) As Double                                   'Matriz Auxiliar
Dim X_red(2, 2) As Double                               'Matriz de capacitâncias reduzida
Dim L_eq(2, 2) As Double                                'Matriz das Capacitâncias Equivalentes
Dim indut_apar_a As Double                              'Indutância aparente do condutor a
Dim indut_apar_b As Double                              'Indutância aparente do condutor b
Dim indut_apar_c As Double                              'Indutância aparente do condutor c
Dim reat_apar_a As Double                               'Capacitância aparente do condutor a
Dim reat_apar_b As Double                               'Capacitância aparente do condutor b
Dim reat_apar_c As Double                               'Capacitância aparente do condutor c
Dim reat_ind_seq_zero As Double                         'Reatância Indutiva de Sequência 0
Dim resistividade As Double                             'Resistividade do solo
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                Aquisição dos Dados Específicos
'---------------------------------------------------------------------------------------------------
resistividade = txtResistividade_solo_ce.Text
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                    DISTÂNCIA ENTRE CONDUTORES
'---------------------------------------------------------------------------------------------------
'linha = 0
'For linha = 0 To 3
'    For coluna = 0 To 3
'        If coluna <= linha Then
'            D(linha, coluna) = 0
'        End If
'    Next coluna
'Next linha
'D(0, 1) = ((txtComprimentoCondutor.Text) ^ 2 + (altura_b_c) ^ 2) ^ 0.5
'D(0, 2) = altura_a_c
'D(0, 3) = (((txtComprimentoCondutor.Text / 2) ^ 2) + (altura_pararaio_a) ^ 2) ^ 0.5
'D(1, 2) = D(0, 1)
'D(1, 3) = (((altura_pararaio_a + altura_b_c) ^ 2) + ((txtComprimentoCondutor.Text / 2) ^ 2)) ^ 0.5
'D(2, 3) = (((altura_a_c + altura_pararaio_a) ^ 2) + ((txtComprimentoCondutor.Text / 2) ^ 2)) ^ 0.5
'---------------------------------------------------------------------------------------------------
'                               DISTÂNCIA ENTRE CONDUTORES E IMAGENS
'---------------------------------------------------------------------------------------------------
'linha = 0
'For linha = 0 To 3
'    For coluna = 0 To 3
'        If coluna > linha Then
'            Dic(linha, coluna) = (4 * h(coluna) * h(linha) + ((D(linha, coluna)) ^ 2)) ^ 0.5
'        Else
'            Dic(linha, coluna) = 0
'        End If
'    Next coluna
'Next linha
'---------------------------------------------------------------------------------------------------
'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Matrizes Auxiliares
'---------------------------------------------------------------------------------------------------
w = 2 * pi * frequencia
linha = 0
For linha = 0 To 3
    coluna = 0
    For coluna = 0 To 3
        If linha = coluna Then
            teta(linha, coluna) = 0
            P(linha, coluna) = 0.00562 * h(linha) * (Sqr(frequencia / resistividade))
            Dx(linha, coluna) = 0.002513 * frequencia * (-0.0386 + 0.5 * Log(2 / P(linha, coluna)) + Cos(teta(linha, coluna)) / (3 * Sqr(2)))
            Dx_cor(linha, coluna) = Dx(linha, coluna) - P(linha, coluna)
            F(linha, coluna) = 0.00046052 * (Log(2 * h(linha) / raio(linha)) / Log(10))
            Xl(linha, coluna) = w * F(linha, coluna)
            Xl_cor(linha, coluna) = Xl(linha, coluna) + Dx_cor(linha, coluna)
            F_cor(linha, coluna) = (Xl_cor(linha, coluna)) / w
        Else
            If coluna > linha Then
                teta(linha, coluna) = Atn(X(linha, coluna) / (h(linha) + h(coluna)))
                P(linha, coluna) = 0.00281004 * (Dic(linha, coluna)) * (Sqr(frequencia / resistividade))
                Dx(linha, coluna) = 0.002513 * frequencia * (-0.0386 + 0.5 * Log(2 / P(linha, coluna)) + Cos(teta(linha, coluna)) / (3 * Sqr(2)))
                Dx_cor(linha, coluna) = Dx(linha, coluna) - P(linha, coluna)
                F(linha, coluna) = 0.00046052 * (Log(Dic(linha, coluna) / D(linha, coluna)) / Log(10))
                Xl(linha, coluna) = w * F(linha, coluna)
                Xl_cor(linha, coluna) = Xl(linha, coluna) + Dx_cor(linha, coluna)
                F_cor(linha, coluna) = (Xl_cor(linha, coluna)) / w
            Else
                teta(linha, coluna) = teta(coluna, linha)
                P(linha, coluna) = P(coluna, linha)
                Dx(linha, coluna) = Dx(coluna, linha)
                Dx_cor(linha, coluna) = Dx_cor(coluna, linha)
                F(linha, coluna) = F(coluna, linha)
                Xl(linha, coluna) = Xl(coluna, linha)
                Xl_cor(linha, coluna) = Xl_cor(coluna, linha)
                F_cor(linha, coluna) = F_cor(coluna, linha)
            End If
        End If
    Next coluna
Next linha
linha = 0
For linha = 0 To 2
    coluna = 0
    For coluna = 0 To 2
        If coluna >= linha Then
            F_red(linha, coluna) = w * (-1) * (F_cor(3, linha) * F_cor(coluna, 3) / F_cor(3, 3))
            X_red(linha, coluna) = Xl_cor(linha, coluna) + F_red(linha, coluna)
            L_eq(linha, coluna) = (X_red(linha, coluna)) / w
        Else
            F_red(linha, coluna) = F_red(coluna, linha)
            X_red(linha, coluna) = X_red(coluna, linha)
            L_eq(linha, coluna) = L_eq(coluna, linha)
        End If
    Next coluna
Next linha
'---------------------------------------------------------------------------------------------------

'---------------------------------------------------------------------------------------------------
'                                  Cálculo das Indutâncias Aparentes
'---------------------------------------------------------------------------------------------------
indut_apar_a = L_eq(0, 0) - (0.5 * (L_eq(0, 1) + L_eq(0, 2)))
indut_apar_b = L_eq(1, 1) - (0.5 * (L_eq(1, 0) + L_eq(1, 2)))
indut_apar_c = L_eq(2, 2) - (0.5 * (L_eq(2, 0) + L_eq(2, 1)))
'---------------------------------------------------------------------------------------------------
'                                   Cálculo das Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
reat_apar_a = w * indut_apar_a
reat_apar_b = w * indut_apar_b
reat_apar_c = w * indut_apar_c
'---------------------------------------------------------------------------------------------------
'                                   Escrevendo Reatâncias Aparentes
'---------------------------------------------------------------------------------------------------
mskReat_apar_a_ce.Text = reat_apar_a
mskReat_apar_b_ce.Text = reat_apar_b
mskReat_apar_c_ce.Text = reat_apar_c
'---------------------------------------------------------------------------------------------------
'                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
'---------------------------------------------------------------------------------------------------
'                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
'---------------------------------------------------------------------------------------------------
mskReat_ind_seq_zero_ce.Text = reat_ind_seq_zero
'---------------------------------------------------------------------------------------------------

End Sub

