fprintf('CALCULOS DA REATANCIA CAPACITIVA\n\n');
rc=input ('Entre com o valor de "rc"\n'); %m
rp=input ('Entre com o valor de "rp"\n'); %m

Aaa=4.14468*1e7*log10(2*ha/rc);
Abb=4.14468*1e7*log10(2*hb/rc);
Acc=4.14468*1e7*log10(2*hc/rc);
App=4.14468*1e7*log10(2*hp/rp);
Aab=4.14468*1e7*log10(Dab/dab);
Aba=Aab;
Aac=4.14468*1e7*log10(Dac/dac);
Aca=Aac;
Abc=4.14468*1e7*log10(Dbc/dbc);
Acb=Abc;
Aap=4.14468*1e7*log10(Dap/dap);
Apa=Aap;
Abp=4.14468*1e7*log10(Dbp/dbp);
Apb=Abp;
Acp=4.14468*1e7*log10(Dcp/dcp);
Apc=Acp;
    
A(1,1)=Aaa;
A(1,2)=Aab;
A(1,3)=Aac;
A(1,4)=Aap;
A(2,1)=Aba;
A(2,2)=Abb;
A(2,3)=Abc;
A(2,4)=Abp;
A(3,1)=Aca;
A(3,2)=Acb;
A(3,3)=Acc;
A(3,4)=Acp;
A(4,1)=Apa;
A(4,2)=Apb;
A(4,3)=Apc;
A(4,4)=App;
    
%REDUZINDO A MATRIZ (PARA-RAIOS ATERRADOS EM TODAS AS ESTRUTURAS)
Aaal=Aaa-((Aap*Apa)/App);
Abbl=Abb-((Abp*Apb)/App);
Accl=Acc-((Acp*Apc)/App);
Aabl=Aab-((Aap*Apb)/App);
Abal=Aabl;
Aacl=Aac-((Aap*Apc)/App);
Acal=Aacl;
Abcl=Abc-((Abp*Apc)/App);
Acbl=Abcl;
   
Aeq(1,1)=Aaal;
Aeq(1,2)=Aabl;
Aeq(1,3)=Aacl;
Aeq(2,1)=Abal;
Aeq(2,2)=Abbl;
Aeq(2,3)=Abcl;
Aeq(3,1)=Acal;
Aeq(3,2)=Acbl;
Aeq(3,3)=Accl;
     
%ACHAR A MATRIZ INVERSA
IAeq=inv(Aeq);
    
%CAPACITANCIAS PARCIAIS DA LINHA (D E O DETERMINANTE DA MATRIZ A)
fprintf('CAPACITANCIAS PARCIAIS\n');
Cao=IAeq(1,1)+IAeq(1,2)+IAeq(1,3)
Cbo=IAeq(2,2)+IAeq(1,2)+IAeq(2,3)
Cco=IAeq(3,3)+IAeq(1,3)+IAeq(2,3)
Cab=-IAeq(1,2)
Cac=-IAeq(1,3)
Cbc=-IAeq(2,3)
   
%CAPACITANCIAS APARENTES
fprintf('CAPACITANCIAS APARENTES\n');
Ca=Cao+3/2*(Cab+Cac)
Cb=Cbo+3/2*(Cab+Cbc)
Cc=Cco+3/2*(Cac+Cbc)
    
%CAPACITANCIA DE SEQUENCIA POSITIVA
fprintf('CAPACITANCIA DE SEQUENCIA POSITIVA\n');
C11=(Ca+Cb+Cc)/3
    
%CAPACITANCIA DE SEQUENCIA ZERO
fprintf('CAPACITANCIA DE SEQUENCIA ZERO\n');
C00=1/(Aaal+2*Aabl)
   
%REATANCIA DE SEQUENCIA POSITIVA
fprintf('O valor da reatância de sequência positiva é:');
Xc11=1/(2*pi*f*C11)
   
%REATANCIA DE SEQUENCIA ZERO
fprintf('O valor da reatância de sequência zero é:');
Xcoo=1/(2*pi*f*C00)