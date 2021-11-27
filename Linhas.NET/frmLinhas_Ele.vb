Friend Class frmLinhas_Ele
    Inherits System.Windows.Forms.Form

  '---------------------------------------------------------------------------------------------------
  '                                   Declaração das variáveis
  '---------------------------------------------------------------------------------------------------
  Dim altura_c_solo As Double                             'Altura do condutor "c" ao solo
  Dim altura_a_c As Double                                'Altura entre os condutores "a" e "c"
  Dim altura_b_c As Double                                'Altura entre os condutores "b" e "c"
  Dim altura_pararaio_a As Double                         'Altura entre pára-raio e o condutor "a"
  Dim frequencia As Double                                'Freqüência
  Dim comprimento_condutor_b_c(3, 3) As Double            'Comprimento do condutor "b" ao "c"
  Dim flecha_media(4) As Double                           'Flecha média dos condutores e do pára-raio
  Dim raio(4) As Double                                   'Raio médio geométrico dos condutores e do pára-raio
  Dim h(3) As Double                                      'Vetor de alturas médias
  Dim D(3, 3) As Double                                   'Matriz de distância entre os condutores
  Dim Dic(3, 3) As Double                                 'Matriz de distância entre condutores e imagens
  Dim pi As Double                                        'Número pi
  Dim w As Double                                         'Velocidade angular (w = 2 * pi * f)
  Dim linha As Short
  Dim coluna As Short
  Dim X(3, 3) As Double                                   'Matriz auxiliar
  '---------------------------------------------------------------------------------------------------
  Private Sub btnFechar_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnFechar.Click
    Me.Close()
  End Sub
  Private Sub btnLimpar_Reat_Cap_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnLimpar_Reat_Cap.Click
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
  Private Sub btnLimpar_Reat_Ind_c_a_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnLimpar_Reat_Ind_c_a.Click
    '---------------------------------------------------------------------------------------------------
    '                                 Limpando cálculos realizados
    '---------------------------------------------------------------------------------------------------
    mskReat_apar_a_ca.Text = ""
    mskReat_apar_b_ca.Text = ""
    mskReat_apar_c_ca.Text = ""
    mskReat_ind_seq_zero_ca.Text = ""
    '---------------------------------------------------------------------------------------------------
  End Sub
  Private Sub btnLimpar_Reat_Ind_c_e_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnLimpar_Reat_Ind_c_e.Click
    '---------------------------------------------------------------------------------------------------
    '                                 Limpando cálculos realizados
    '---------------------------------------------------------------------------------------------------
    mskReat_apar_a_ce.Text = ""
    mskReat_apar_b_ce.Text = ""
    mskReat_apar_c_ce.Text = ""
    mskReat_ind_seq_zero_ce.Text = ""
    '---------------------------------------------------------------------------------------------------
  End Sub
  Private Sub btnLimpar_Reat_Ind_s_i_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnLimpar_Reat_Ind_s_i.Click
    '---------------------------------------------------------------------------------------------------
    '                                 Limpando cálculos realizados
    '---------------------------------------------------------------------------------------------------
    mskReat_apar_a_si.Text = ""
    mskReat_apar_b_si.Text = ""
    mskReat_apar_c_si.Text = ""
    mskReat_ind_seq_zero_si.Text = ""
    '---------------------------------------------------------------------------------------------------
  End Sub
  Private Sub btnLimpar_Reat_Ind_s_s_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnLimpar_Reat_Ind_s_s.Click
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
  Private Sub btnReatCap_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnReatCap.Click
    Call Dados_Gerais()
    Call Reatancia_Capacitiva()
  End Sub
  Private Sub btnReatIndca_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnReatIndca.Click
    Call Dados_Gerais()
    Call Reatancia_Indutiva_Carson_Aproximado()
  End Sub
  Private Sub btnReatIndce_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnReatIndce.Click
    Call Dados_Gerais()
    Call Reatancia_Indutiva_Carson_Exato()
  End Sub
  Private Sub btnReatIndsi_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnReatIndsi.Click
    Call Dados_Gerais()
    Call Reatancia_Indutiva_solo_ideal()
  End Sub
  Private Sub btnReatIndss_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnReatIndss.Click
    Call Dados_Gerais()
    Call Reatancia_Indutiva_sem_solo()
  End Sub
  Private Sub btnResist_Click(ByVal eventSender As System.Object, ByVal eventArgs As System.EventArgs) Handles btnResist.Click
    Call Dados_Gerais()
    Call Resistencia()
  End Sub
  Public Sub Dados_Gerais()
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                   Aquisição dos Dados Gerais
    '---------------------------------------------------------------------------------------------------
    pi = 3.14159265358979
    flecha_media(0) = CDbl(txtFlechaMediaCondutores.Text)
    flecha_media(1) = flecha_media(0)
    flecha_media(2) = flecha_media(0)
    flecha_media(3) = CDbl(txtFlechaMediaPararaio.Text)

    raio(0) = CDbl(txtRaioCondutor.Text)
    raio(1) = raio(0)
    raio(2) = raio(0)
    raio(3) = CDbl(txtRaioPararaio.Text)

    altura_c_solo = CDbl(txtAltura_cs.Text)
    altura_a_c = CDbl(txtAltura_ac.Text)
    altura_b_c = altura_a_c / 2
    altura_pararaio_a = CDbl(txtAltura_pararaio_a.Text)
    frequencia = CDbl(txtFrequencia.Text)


    linha = 0
    For linha = 0 To 3
      coluna = 0
      For coluna = 0 To 3
        If linha = coluna Then
          X(linha, coluna) = 0
        Else
          If linha < coluna Then
            If coluna = 3 Then
              X(linha, coluna) = CDbl(txtComprimentoCondutor.Text) / 2
            Else
              X(linha, coluna) = CDbl(txtComprimentoCondutor.Text)
            End If
          Else
            X(linha, coluna) = CDbl(txtComprimentoCondutor.Text) / 2
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
    D(0, 1) = (CDbl(txtComprimentoCondutor.Text) ^ 2 + (altura_b_c) ^ 2) ^ 0.5
    D(0, 2) = altura_a_c
    D(0, 3) = (((CDbl(txtComprimentoCondutor.Text) / 2) ^ 2) + (altura_pararaio_a) ^ 2) ^ 0.5
    D(1, 2) = D(0, 1)
    D(1, 3) = (((altura_pararaio_a + altura_b_c) ^ 2) + ((CDbl(txtComprimentoCondutor.Text) / 2) ^ 2)) ^ 0.5
    D(2, 3) = (((altura_a_c + altura_pararaio_a) ^ 2) + ((CDbl(txtComprimentoCondutor.Text) / 2) ^ 2)) ^ 0.5
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
    Dim linha As Short
    Dim coluna As Short
    Dim A(3, 3) As Double               'Matriz auxiliar
    Dim A_red(2, 2) As Double           'Matriz auxiliar reduxida
    Dim A_transp(2, 2) As Double        'Matriz auxiliar reduzida transposta
    Dim A_inv(2, 2) As Double           'Matriz auxiliar reduzida inversa
    Dim capacit_parc_a As Double        'Capacitância parcial do condutor a
    Dim capacit_parc_b As Double        'Capacitância parcial do condutor b
    Dim capacit_parc_c As Double        'Capacitância parcial do condutor c
    Dim capacit_parc_a_b As Double      'Capacitância parcial entre condutores a e b
    Dim capacit_parc_a_c As Double      'Capacitância parcial entre condutores a e c
    Dim capacit_parc_b_c As Double      'Capacitância parcial entre condutores b e c
    Dim capacit_apar_a As Double        'Capacitância aparente do condutor a
    Dim capacit_apar_b As Double        'Capacitância aparente do condutor b
    Dim capacit_apar_c As Double        'Capacitância aparente do condutor c
    Dim capacit_seq_pos As Double       'Capacitância de Sequência +
    Dim capacit_seq_zero As Double      'Capacitância de Sequência 0
    Dim reat_cap_seq_pos As Double      'Reatância Capacitiva de Sequência +
    Dim reat_cap_seq_zero As Double     'Reatância Capacitiva de Sequência 0
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
    Raio_condutores_reat_cap(0) = CDbl(txtRaioCondutor_Reat_Cap.Text)
    Raio_condutores_reat_cap(1) = Raio_condutores_reat_cap(0)
    Raio_condutores_reat_cap(2) = Raio_condutores_reat_cap(0)
    Raio_condutores_reat_cap(3) = CDbl(txtRaioPararaio_Reat_Cap.Text)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                Cálculo das Reatâncias Capacitivas
    '---------------------------------------------------------------------------------------------------
    linha = 0
    For linha = 0 To 3
      coluna = 0
      For coluna = 0 To 3
        If linha = coluna Then
          A(linha, coluna) = 41446800 * (System.Math.Log(2 * h(linha) / Raio_condutores_reat_cap(linha)) / System.Math.Log(10))
        Else
          If linha < coluna Then
            A(linha, coluna) = 41446800 * (System.Math.Log(Dic(linha, coluna) / D(linha, coluna)) / System.Math.Log(10))
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
    mskCap_parc_a.Text = CStr(capacit_parc_a)
    mskCap_parc_b.Text = CStr(capacit_parc_b)
    mskCap_parc_c.Text = CStr(capacit_parc_c)
    mskCap_parc_a_b.Text = CStr(capacit_parc_a_b)
    mskCap_parc_a_c.Text = CStr(capacit_parc_a_c)
    mskCap_parc_b_c.Text = CStr(capacit_parc_b_c)
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
    mskCap_apar_a.Text = CStr(capacit_apar_a)
    mskCap_apar_b.Text = CStr(capacit_apar_b)
    mskCap_apar_c.Text = CStr(capacit_apar_c)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                Cálculo da Capacitância de Sequência +
    '---------------------------------------------------------------------------------------------------
    capacit_seq_pos = (capacit_apar_a + capacit_apar_b + capacit_apar_c) / 3
    '---------------------------------------------------------------------------------------------------
    '                                Escrevendo Capacitâncias de Sequência +
    '---------------------------------------------------------------------------------------------------
    mskCap_seq_pos.Text = CStr(capacit_seq_pos)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                               Cálculo da Capacitância de Sequência 0
    '---------------------------------------------------------------------------------------------------
    capacit_seq_zero = 1 / (A_red(0, 0) + 2 * (A_red(0, 1)))
    '---------------------------------------------------------------------------------------------------
    '                               Escrevendo Capacitâncias de Sequência 0
    '---------------------------------------------------------------------------------------------------
    mskCap_seq_zero.Text = CStr(capacit_seq_zero)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                          Cálculo da Reatância Capacitiva de Sequência +
    '---------------------------------------------------------------------------------------------------
    reat_cap_seq_pos = 1 / (2 * pi * frequencia * capacit_seq_pos)
    '---------------------------------------------------------------------------------------------------
    '                          Escrevendo Reatância Capacitiva de Sequência +
    '---------------------------------------------------------------------------------------------------
    mskReat_cap_seq_pos.Text = CStr(reat_cap_seq_pos)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                          Cálculo da Reatância Capacitiva de Sequência 0
    '---------------------------------------------------------------------------------------------------
    reat_cap_seq_zero = 1 / (2 * pi * frequencia * capacit_seq_zero)
    '---------------------------------------------------------------------------------------------------
    '                          Escrevendo Reatância Capacitiva de Sequência 0
    '---------------------------------------------------------------------------------------------------
    mskReat_cap_seq_zero.Text = CStr(reat_cap_seq_zero)
    '---------------------------------------------------------------------------------------------------
  End Sub
  Public Sub Resistencia()
    '---------------------------------------------------------------------------------------------------
    '                                Declaração das variáveis locais
    '---------------------------------------------------------------------------------------------------
    Dim resistencia_condutor(3) As Double 'Resistência dos condutores
    Dim alfa As Double 'Constante alfa
    Dim temperatura_inicial As Double 'Temperatura inicial
    Dim temperatura_final As Double 'Temperatura final
    Dim resistividade As Double 'Resistividade do solo
    Dim resistencia_parcial(3) As Double 'Vetor para cálculo da matriz das Resistências
    Dim R(3, 3) As Double 'Matriz das Resistências
    Dim R_cor(3, 3) As Double 'Matriz das Resistências corrigida
    Dim R_eq(3, 3) As Double 'Matriz das Resistências equivalentes
    Dim teta(3, 3) As Double 'Matriz Teta
    Dim P(3, 3) As Double 'Matriz Auxiliar
    Dim P_cor(3, 3) As Double 'Matriz Auxiliar corrigida
    Dim P_mod(3, 3) As Double 'Matriz Auxiliar corrigida e modificada
    Dim resist_seq_pos As Double 'Resistência de Sequência +
    Dim resist_seq_zero As Double 'Resistência de Sequência 0
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                Aquisição dos Dados Específicos
    '---------------------------------------------------------------------------------------------------
    resistencia_condutor(0) = CDbl(txtResistencia_condutor.Text)
    resistencia_condutor(1) = resistencia_condutor(0)
    resistencia_condutor(2) = resistencia_condutor(0)
    resistencia_condutor(3) = CDbl(txtResistencia_pararaio.Text)
    alfa = CDbl(txtAlfa.Text)
    temperatura_inicial = CDbl(txtTemperatura_inicial.Text)
    temperatura_final = CDbl(txtTemperatura_final.Text)
    resistividade = CDbl(txtResistividade_solo_resist.Text)
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
          P(linha, coluna) = 0.00562 * h(linha) * System.Math.Sqrt(frequencia / resistividade)
          teta(linha, coluna) = 0
          P_cor(linha, coluna) = (pi / 8) - (P(linha, coluna) / (3 * System.Math.Sqrt(2))) * System.Math.Cos(teta(linha, coluna)) + (P(linha, coluna) * P(linha, coluna) / 16) * System.Math.Cos(2 * teta(linha, coluna)) * (0.6728 + (System.Math.Log(2 / P(linha, coluna)) / System.Math.Log(10))) + (P(linha, coluna) * P(linha, coluna) / 16) * teta(linha, coluna) * System.Math.Sin(2 * teta(linha, coluna))
          P_mod(linha, coluna) = 0.002513 * frequencia * P_cor(linha, coluna)
          R_cor(linha, coluna) = resistencia_parcial(linha) + P_mod(linha, coluna) 'MATRIZ DAS RESISTÊNCIAS CORRIGIDA
        Else
          R(linha, coluna) = 0
          If coluna > linha Then
            P(linha, coluna) = 0.00281004 * Dic(linha, coluna) * System.Math.Sqrt(frequencia / resistividade)
            teta(linha, coluna) = System.Math.Atan(X(linha, coluna) / (h(linha) + h(coluna)))
            P_cor(linha, coluna) = (pi / 8) - (P(linha, coluna) / (3 * System.Math.Sqrt(2))) * System.Math.Cos(teta(linha, coluna)) + (P(linha, coluna) * P(linha, coluna) / 16) * System.Math.Cos(2 * teta(linha, coluna)) * (0.6728 + (System.Math.Log(2 / P(linha, coluna)) / System.Math.Log(10))) + (P(linha, coluna) * P(linha, coluna) / 16) * teta(linha, coluna) * System.Math.Sin(2 * teta(linha, coluna))
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
    mskResist_seq_pos.Text = CStr(resist_seq_pos)
    '---------------------------------------------------------------------------------------------------
    '                                 Cálculo da Resistência de Sequência 0
    '---------------------------------------------------------------------------------------------------
    resist_seq_zero = R_eq(0, 0) + 2 * R_eq(0, 1)
    '---------------------------------------------------------------------------------------------------
    '                                 Escrevendo Resistência de Sequência 0
    '---------------------------------------------------------------------------------------------------
    mskResist_seq_zero.Text = CStr(resist_seq_zero)
    '---------------------------------------------------------------------------------------------------
  End Sub
  Public Sub Reatancia_Indutiva_sem_solo()
    '---------------------------------------------------------------------------------------------------
    '                                Declaração das variáveis locais
    '---------------------------------------------------------------------------------------------------
    Dim linha As Short
    Dim coluna As Short
    Dim F(3, 3) As Double 'Matriz auxiliar
    Dim F_red(2, 2) As Double 'Matriz auxiliar reduzida
    Dim Xc(3, 3) As Double 'Matriz de capacitâncias
    Dim X_red(2, 2) As Double 'Matriz de capacitâncias reduzida
    Dim L_eq(2, 2) As Double 'Matriz das Capacitâncias Equivalentes
    Dim indut_apar_a As Double 'Indutância aparente do condutor a
    Dim indut_apar_b As Double 'Indutância aparente do condutor b
    Dim indut_apar_c As Double 'Indutância aparente do condutor c
    Dim reat_apar_a As Double 'Capacitância aparente do condutor a
    Dim reat_apar_b As Double 'Capacitância aparente do condutor b
    Dim reat_apar_c As Double 'Capacitância aparente do condutor c
    Dim reat_ind_seq_zero As Double 'Reatância Indutiva de Sequência 0
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
          F(linha, coluna) = 0.00046052 * (System.Math.Log(1 / raio(linha)) / System.Math.Log(10))
        Else
          If coluna > linha Then
            F(linha, coluna) = 0.00046052 * (System.Math.Log(1 / D(linha, coluna)) / System.Math.Log(10))
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
    mskIndut_apar_a.Text = CStr(indut_apar_a)
    mskIndut_apar_b.Text = CStr(indut_apar_b)
    mskIndut_apar_c.Text = CStr(indut_apar_c)
    '---------------------------------------------------------------------------------------------------
    '                                   Cálculo das Reatâncias Aparentes
    '---------------------------------------------------------------------------------------------------
    reat_apar_a = w * indut_apar_a
    reat_apar_b = w * indut_apar_b
    reat_apar_c = w * indut_apar_c
    '---------------------------------------------------------------------------------------------------
    '                                   Escrevendo Reatâncias Aparentes
    '---------------------------------------------------------------------------------------------------
    mskReat_apar_a.Text = CStr(reat_apar_a)
    mskReat_apar_b.Text = CStr(reat_apar_b)
    mskReat_apar_c.Text = CStr(reat_apar_c)
    '---------------------------------------------------------------------------------------------------
    '                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
    '---------------------------------------------------------------------------------------------------
    '                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    mskReat_ind_seq_zero.Text = CStr(reat_ind_seq_zero)
    '---------------------------------------------------------------------------------------------------
  End Sub
  Public Sub Reatancia_Indutiva_solo_ideal()
    '---------------------------------------------------------------------------------------------------
    '                                Declaração das variáveis locais
    '---------------------------------------------------------------------------------------------------
    Dim linha As Short
    Dim coluna As Short
    Dim F(3, 3) As Double 'Matriz auxiliar
    Dim F_red(2, 2) As Double 'Matriz auxiliar reduzida
    Dim Xc(3, 3) As Double 'Matriz de capacitâncias
    Dim X_red(2, 2) As Double 'Matriz de capacitâncias reduzida
    Dim L_eq(2, 2) As Double 'Matriz das Capacitâncias Equivalentes
    Dim indut_apar_a As Double 'Indutância aparente do condutor a
    Dim indut_apar_b As Double 'Indutância aparente do condutor b
    Dim indut_apar_c As Double 'Indutância aparente do condutor c
    Dim reat_apar_a As Double 'Capacitância aparente do condutor a
    Dim reat_apar_b As Double 'Capacitância aparente do condutor b
    Dim reat_apar_c As Double 'Capacitância aparente do condutor c
    Dim reat_ind_seq_zero As Double 'Reatância Indutiva de Sequência 0
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
          F(linha, coluna) = 0.00046052 * (System.Math.Log(2 * h(linha) / raio(linha)) / System.Math.Log(10))
        Else
          If coluna > linha Then
            F(linha, coluna) = 0.00046052 * (System.Math.Log(Dic(linha, coluna) / D(linha, coluna)) / System.Math.Log(10))
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
    mskReat_apar_a_si.Text = CStr(reat_apar_a)
    mskReat_apar_b_si.Text = CStr(reat_apar_b)
    mskReat_apar_c_si.Text = CStr(reat_apar_c)
    '---------------------------------------------------------------------------------------------------
    '                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
    '---------------------------------------------------------------------------------------------------
    '                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    mskReat_ind_seq_zero_si.Text = CStr(reat_ind_seq_zero)
    '---------------------------------------------------------------------------------------------------
  End Sub
  Public Sub Reatancia_Indutiva_Carson_Aproximado()
    '---------------------------------------------------------------------------------------------------
    '                                Declaração das variáveis locais
    '---------------------------------------------------------------------------------------------------
    Dim linha As Short
    Dim coluna As Short
    Dim F(3, 3) As Double           'Matriz auxiliar
    Dim F_red(2, 2) As Double       'Matriz auxiliar reduzida
    Dim X(3, 3) As Double           'Matriz de capacitâncias principal
    Dim Xl(3, 3) As Double          'Matriz de capacitâncias auxiliar
    Dim De As Double                'Variável auxiliar
    Dim Df(3, 3) As Double          'Matriz auxiliar da Variável
    Dim Dx(3, 3) As Double          'Matriz auxiliar
    Dim X_red(2, 2) As Double       'Matriz de capacitâncias reduzida
    Dim L_eq(2, 2) As Double        'Matriz das Capacitâncias Equivalentes
    Dim indut_apar_a As Double      'Indutância aparente do condutor a
    Dim indut_apar_b As Double      'Indutância aparente do condutor b
    Dim indut_apar_c As Double      'Indutância aparente do condutor c
    Dim reat_apar_a As Double       'Capacitância aparente do condutor a
    Dim reat_apar_b As Double       'Capacitância aparente do condutor b
    Dim reat_apar_c As Double       'Capacitância aparente do condutor c
    Dim reat_ind_seq_zero As Double 'Reatância Indutiva de Sequência 0
    Dim resistividade As Double     'Resistividade do solo
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                Aquisição dos Dados Específicos
    '---------------------------------------------------------------------------------------------------
    resistividade = CDbl(txtResistividade_solo_ca.Text)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                  Cálculo das Matrizes Auxiliares
    '---------------------------------------------------------------------------------------------------
    w = 2 * pi * frequencia
    De = 658.363 * (System.Math.Sqrt(resistividade) / System.Math.Sqrt(frequencia))
    linha = 0
    For linha = 0 To 3
      coluna = 0
      For coluna = 0 To 3
        If linha = coluna Then
          F(linha, coluna) = 0.00046052 * (System.Math.Log(1 / raio(linha)) / System.Math.Log(10))
          Df(linha, coluna) = 0.00046052 * (System.Math.Log(De) / System.Math.Log(10))
          Dx(linha, coluna) = w * Df(linha, coluna)
          Xl(linha, coluna) = w * F(linha, coluna) + Dx(linha, coluna)
          X(linha, coluna) = Xl(linha, coluna) / w
        Else
          If coluna > linha Then
            F(linha, coluna) = 0.00046052 * (System.Math.Log(1 / D(linha, coluna)) / System.Math.Log(10))
            Df(linha, coluna) = 0.00046052 * (System.Math.Log(De) / System.Math.Log(10))
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
    mskReat_apar_a_ca.Text = CStr(reat_apar_a)
    mskReat_apar_b_ca.Text = CStr(reat_apar_b)
    mskReat_apar_c_ca.Text = CStr(reat_apar_c)
    '---------------------------------------------------------------------------------------------------
    '                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
    '---------------------------------------------------------------------------------------------------
    '                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    mskReat_ind_seq_zero_ca.Text = CStr(reat_ind_seq_zero)
    '---------------------------------------------------------------------------------------------------
  End Sub
  Public Sub Reatancia_Indutiva_Carson_Exato()
    '---------------------------------------------------------------------------------------------------
    '                                Declaração das variáveis locais
    '---------------------------------------------------------------------------------------------------
    Dim linha As Short
    Dim coluna As Short
    Dim F(3, 3) As Double           'Matriz auxiliar
    Dim F_cor(3, 3) As Double       'Matriz auxiliar corrigida
    Dim F_red(2, 2) As Double       'Matriz auxiliar reduzida
    Dim X(3, 3) As Double           'Matriz de capacitâncias principal
    Dim Xl(3, 3) As Double          'Matriz de capacitâncias auxiliar
    Dim Xl_cor(3, 3) As Double      'Matriz de capacitâncias auxiliar corrigida
    Dim Dx(3, 3) As Double          'Matriz auxiliar
    Dim Dx_cor(3, 3) As Double      'Matriz auxiliar corrigida
    Dim teta(3, 3) As Double        'Matriz Teta
    Dim P(3, 3) As Double           'Matriz Auxiliar
    Dim X_red(2, 2) As Double       'Matriz de capacitâncias reduzida
    Dim L_eq(2, 2) As Double        'Matriz das Capacitâncias Equivalentes
    Dim indut_apar_a As Double      'Indutância aparente do condutor a
    Dim indut_apar_b As Double      'Indutância aparente do condutor b
    Dim indut_apar_c As Double      'Indutância aparente do condutor c
    Dim reat_apar_a As Double       'Capacitância aparente do condutor a
    Dim reat_apar_b As Double       'Capacitância aparente do condutor b
    Dim reat_apar_c As Double       'Capacitância aparente do condutor c
    Dim reat_ind_seq_zero As Double 'Reatância Indutiva de Sequência 0
    Dim resistividade As Double     'Resistividade do solo
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                Aquisição dos Dados Específicos
    '---------------------------------------------------------------------------------------------------
    resistividade = CDbl(txtResistividade_solo_ce.Text)
    '---------------------------------------------------------------------------------------------------

    '---------------------------------------------------------------------------------------------------
    '                                    DISTÂNCIA ENTRE CONDUTORES
    '---------------------------------------------------------------------------------------------------
    'linha = 0
    'For linha = 0 To 3
    '  For coluna = 0 To 3
    '    If coluna <= linha Then
    '      D(linha, coluna) = 0
    '    End If
    '  Next coluna
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
    '  For coluna = 0 To 3
    '    If coluna > linha Then
    '      Dic(linha, coluna) = (4 * h(coluna) * h(linha) + ((D(linha, coluna)) ^ 2)) ^ 0.5
    '    Else
    '      Dic(linha, coluna) = 0
    '    End If
    '  Next coluna
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
          P(linha, coluna) = 0.00562 * h(linha) * (System.Math.Sqrt(frequencia / resistividade))
          Dx(linha, coluna) = 0.002513 * frequencia * (-0.0386 + 0.5 * System.Math.Log(2 / P(linha, coluna)) + System.Math.Cos(teta(linha, coluna)) / (3 * System.Math.Sqrt(2)))
          Dx_cor(linha, coluna) = Dx(linha, coluna) - P(linha, coluna)
          F(linha, coluna) = 0.00046052 * (System.Math.Log(2 * h(linha) / raio(linha)) / System.Math.Log(10))
          Xl(linha, coluna) = w * F(linha, coluna)
          Xl_cor(linha, coluna) = Xl(linha, coluna) + Dx_cor(linha, coluna)
          F_cor(linha, coluna) = (Xl_cor(linha, coluna)) / w
        Else
          If coluna > linha Then
            teta(linha, coluna) = System.Math.Atan(X(linha, coluna) / (h(linha) + h(coluna)))
            P(linha, coluna) = 0.00281004 * (Dic(linha, coluna)) * (System.Math.Sqrt(frequencia / resistividade))
            Dx(linha, coluna) = 0.002513 * frequencia * (-0.0386 + 0.5 * System.Math.Log(2 / P(linha, coluna)) + System.Math.Cos(teta(linha, coluna)) / (3 * System.Math.Sqrt(2)))
            Dx_cor(linha, coluna) = Dx(linha, coluna) - P(linha, coluna)
            F(linha, coluna) = 0.00046052 * (System.Math.Log(Dic(linha, coluna) / D(linha, coluna)) / System.Math.Log(10))
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
    mskReat_apar_a_ce.Text = CStr(reat_apar_a)
    mskReat_apar_b_ce.Text = CStr(reat_apar_b)
    mskReat_apar_c_ce.Text = CStr(reat_apar_c)
    '---------------------------------------------------------------------------------------------------
    '                       Cálculo da Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    reat_ind_seq_zero = (reat_apar_a + reat_apar_b + reat_apar_c) / 3
    '---------------------------------------------------------------------------------------------------
    '                       Escrevendo Reatância Indutiva de Sequência + ou de Serviço
    '---------------------------------------------------------------------------------------------------
    mskReat_ind_seq_zero_ce.Text = CStr(reat_ind_seq_zero)
    '---------------------------------------------------------------------------------------------------
  End Sub
  Private Sub _tabEmpresa_TabPage0_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles _tabEmpresa_TabPage0.Click

  End Sub

  Private Sub frmLinhas_Ele_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load


  End Sub
End Class