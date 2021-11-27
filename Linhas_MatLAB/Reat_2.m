ro=input('Entre com o valor da resistividade do solo(ro)\n');%100
De=658.363*sqrt(ro/f);
Df=4.6052*1e-4*log10(De);
w=2*pi*f;
Dx=w*Df;

%SEM CONSIDERAR O PLANO DO SOLO
faal=4.6052*1e-4*log10(1/Dsc);
fbbl=faal;
fccl=fbbl;
fppl=4.6052*1e-4*log10(1/Dsp);
fabl=4.6052*1e-4*log10(1/dab);
fbal=fabl;
facl=4.6052*1e-4*log10(1/dac);
fcal=facl;
fapl=4.6052*1e-4*log10(1/dap);
fpal=fapl;
fbcl=4.6052*1e-4*log10(1/dbc);
fcbl=fbcl;
fbpl=4.6052*1e-4*log10(1/dbp);
fpbl=fbpl;
fcpl=4.6052*1e-4*log10(1/dcp);
fpcl=fcpl;
    
F(1,1)=faal;
F(1,2)=fabl;
F(1,3)=facl;
F(1,4)=fapl;
F(2,1)=fbal;
F(2,2)=fbbl;
F(2,3)=fbcl;
F(2,4)=fbpl;
F(3,1)=fcal;
F(3,2)=fcbl;
F(3,3)=fccl;
F(3,4)=fcpl;
F(4,1)=fpal;
F(4,2)=fpbl;
F(4,3)=fpcl;
F(4,4)=fppl;
      
Xll=w*F;
Xl=Xll+Dx;

faa=Xl(1,1);
fab=Xl(1,2);
fac=Xl(1,3);
fap=Xl(1,4);
fba=Xl(2,1);
fbb=Xl(2,2);
fbc=Xl(2,3);
fbp=Xl(2,4);
fca=Xl(3,1);
fcb=Xl(3,2);
fcc=Xl(3,3);
fcp=Xl(3,4);
fpa=Xl(4,1);
fpb=Xl(4,2);
fpc=Xl(4,3);
fpp=Xl(4,4);

DXaa=(-fpa)*fap/fpp;
DXab=(-fpa)*fbp/fpp;
DXba=DXab;
DXac=(-fpa)*fcp/fpp;
DXca=DXac;
DXbb=(-fpb)*fbp/fpp;
DXbc=(-fpb)*fcp/fpp;
DXcb=DXbc;
DXcc=(-fpc)*fcp/fpp;

DXl(1,1)=DXaa;
DXl(1,2)=DXab;
DXl(1,3)=DXac;
DXl(2,1)=DXba;
DXl(2,2)=DXbb;
DXl(2,3)=DXbc;
DXl(3,1)=DXca;
DXl(3,2)=DXcb;
DXl(3,3)=DXcc;

Xleq(1,1)=Xl(1,1)+DXl(1,1);
Xleq(1,2)=Xl(1,2)+DXl(1,2);
Xleq(1,3)=Xl(1,3)+DXl(1,3);
Xleq(2,1)=Xl(2,1)+DXl(2,1);
Xleq(2,2)=Xl(2,2)+DXl(2,2);
Xleq(2,3)=Xl(2,3)+DXl(2,3);
Xleq(3,1)=Xl(3,1)+DXl(3,1);
Xleq(3,2)=Xl(3,2)+DXl(3,2);
Xleq(3,3)=Xl(3,3)+DXl(3,3);

%REATANCIAS APARENTES
fprintf('Os valores das reatâncias aparentes são:');
Xa=Xleq(1,1)-.5*(Xleq(1,2)+Xleq(1,3))
Xb=Xleq(2,2)-.5*(Xleq(2,1)+Xleq(2,3))
Xc=Xleq(3,3)-.5*(Xleq(3,1)+Xleq(3,2))

%REATANCIA INDUTIVA DE SEQUENCIA POSITIVA OU SERVIÇO
fprintf('O valor da reatância de sequência positiva é:');
Xs=(Xa+Xb+Xc)/3