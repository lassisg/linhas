clear;
clc;
fprintf('Este programa permite que sejam feitos 10 calculos.\n\n');
fprintf('DADOS DE ENTRADA\n\n');
cs=input ('Entre com o valor de altura do condutor "c" ao solo\n');
ac=input ('Entre com o valor de altura entre condutores "a" e "c"\n');
pa=input ('Entre com o valor de altura entre o pára-raio e o condutor\n');
bc=ac/2; %altura entreos condutres "b" e "c"
f=input ('Entre com o valor de frequencia\n');
Lbc=input ('Entre com o valor de comprimento do condutor "b" ao "c"\n');
Fmc=input ('Entre com o valor de flecha media dos condutores\n');
Fmp=input ('Entre com o valor de flecha media do pára-raio\n');
Dsc=input ('Entre com o valor de raio medio geometrico (cond.)\n');
Dsp=input ('Entre com o valor de raio medio geometrico (pára-raio)\n');

%ALTURAS MEDIAS
ha=cs+ac-.7*Fmc;
hb=cs+bc-.7*Fmc;
hc=cs-.7*Fmc;
hp=cs+ac+pa-.7*Fmp;

%DISTANCIA ENTRE CONDUTORES
dab=sqrt(Lbc^2+bc^2);
dbc=dab;
dac=ac;
dap=sqrt((Lbc/2)^2+pa^2);
dbp=sqrt((pa+bc)^2+(Lbc/2)^2);
dcp=sqrt((ac+pa)^2+(Lbc/2)^2);
    
%DISTANCIA ENTRE CONDUTORES E IMAGENS
Dab=sqrt(4*hb*ha+dab^2);
Dac=sqrt(4*hc*ha+dac^2);
Dbc=sqrt(4*hc*hb+dbc^2);
Dap=sqrt(4*hp*ha+dap^2);
Dbp=sqrt(4*hp*hb+dbp^2);
Dcp=sqrt(4*hp*hc+dcp^2);