faa=4.6052*1e-4*log10(1/Dsc);
fbb=faa;
fcc=fbb;
fpp=4.6052*1e-4*log10(1/Dsp);
fab=4.6052*1e-4*log10(1/dab);
fba=fab;
fac=4.6052*1e-4*log10(1/dac);
fca=fac;
fap=4.6052*1e-4*log10(1/dap);
fpa=fap;
fbc=4.6052*1e-4*log10(1/dbc);
fcb=fbc;
fbp=4.6052*1e-4*log10(1/dbp);
fpb=fbp;
fcp=4.6052*1e-4*log10(1/dcp);
fpc=fcp;
    
F(1,1)=faa;
F(1,2)=fab;
F(1,3)=fac;
F(1,4)=fap;
F(2,1)=fba;
F(2,2)=fbb;
F(2,3)=fbc;
F(2,4)=fbp;
F(3,1)=fca;
F(3,2)=fcb;
F(3,3)=fcc;
F(3,4)=fcp;
F(4,1)=fpa;
F(4,2)=fpb;
F(4,3)=fpc;
F(4,4)=fpp;
      
w=2*pi*f;
Xl=w*F;

DXaa=w*(-fpa)*fap/fpp;
DXab=w*(-fpa)*fbp/fpp;
DXba=DXab;
DXac=w*(-fpa)*fcp/fpp;
DXca=DXac;
DXbb=w*(-fpb)*fbp/fpp;
DXbc=w*(-fpb)*fcp/fpp;
DXcb=DXbc;
DXcc=w*(-fpc)*fcp/fpp;
	
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
Xa=Xleq(1,1)-.5*(Xleq(1,2)+Xleq(1,3))
Xb=Xleq(2,2)-.5*(Xleq(2,1)+Xleq(2,3))
Xc=Xleq(3,3)-.5*(Xleq(3,1)+Xleq(3,2))

%REATANCIA INDUTIVA DE SEQUENCIA POSITIVA OU SERVI�O
fprintf('O valor da reatância de sequência positiva é:');
Xs=(Xa+Xb+Xc)/3