r=input('Entre com o valor de r\n');%.1005
alfa=input('Entre com o valor de alfa\n');%0.00403;
t1=input('Entre com o valor de temperatura inicial\n');%50;
t2=input('Entre com o valor de temperatura final\n');%75;       
rp=input('Entre com o valor de rp\n');%3.045
ro=input('Entre com o valor de resistividade do solo\n');%100

xab=2.8000;
xac=2.8000;
xbc=2.7999;
xap=1.4000;
xbp=1.3999;
xcp=1.4000;
rc=0.5*r;
rcl=rc*(1+alfa*(t2-t1));

%Matriz das resistências

Rc(1,1)=rcl;
Rc(1,2)=0;
Rc(1,3)=0;
Rc(1,4)=0;
Rc(2,1)=0;
Rc(2,2)=rcl;	
Rc(2,3)=0;
Rc(2,4)=0;
Rc(3,1)=0;
Rc(3,2)=0;
Rc(3,3)=rcl;
Rc(3,4)=0;
Rc(4,1)=0;
Rc(4,2)=0;
Rc(4,3)=0;
Rc(4,4)=rp;

%propria:
pa=5.620*1e-3*ha*sqrt(f/ro);
pb=5.620*1e-3*hb*sqrt(f/ro);
pc=5.620*1e-3*hc*sqrt(f/ro);
pp=5.620*1e-3*hp*sqrt(f/ro);

tetaa=0;
tetab=0;
tetac=0;
tetap=0;

%mutua:
pab=28.1004*1e-4*Dab*sqrt(f/ro);
pba=pab;
pac=28.1004*1e-4*Dac*sqrt(f/ro);
pca=pac;
pbc=28.1004*1e-4*Dbc*sqrt(f/ro);
pcb=pbc;
pap=28.1004*1e-4*Dap*sqrt(f/ro);
ppa=pap;
pbp=28.1004*1e-4*Dbp*sqrt(f/ro);
ppb=pbp;
pcp=28.1004*1e-4*Dcp*sqrt(f/ro);
ppc=pcp;

tetaab=atan(xab/ha+hb);
tetaba=tetaab;
tetaac=atan(xac/ha+hc);
tetaca=tetaac;
tetabc=atan(xbc/hb+hc);
tetacb=tetabc;
tetaap=atan(xap/ha+hp);
tetapa=tetaap;
tetabp=atan(xbp/hb+hp);
tetapb=tetabp;
tetacp=atan(xcp/hc+hp);
tetapc=tetacp;

% Matriz corrigida
                                  

Pa=(pi/8)-(pa/3*sqrt(2))*cos(tetaa)+(pa*pa/16)*cos(2*tetaa)*(0.6728+log(2/pa))+(pa*pa/16)*tetaa*sin(2*tetaa);
Pb=(pi/8)-(pb/3*sqrt(2))*cos(tetab)+(pb*pb/16)*cos(2*tetab)*(0.6728+log(2/pb))+(pb*pb/16)*tetab*sin(2*tetab);
Pc=(pi/8)-(pc/3*sqrt(2))*cos(tetac)+(pc*pc/16)*cos(2*tetac)*(0.6728+log(2/pc))+(pc*pc/16)*tetac*sin(2*tetac);
Pp=(pi/8)-(pp/3*sqrt(2))*cos(tetap)+(pp*pp/16)*cos(2*tetap)*(0.6728+log(2/pp))+(pp*pp/16)*tetap*sin(2*tetap);
Pab=(pi/8)-(pab/3*sqrt(2))*cos(tetaab)+(pab*pab/16)*cos(2*tetaab)*(0.6728+log(2/pab))+(pab*pab/16)*tetaab*sin(2*tetaab);
Pba=Pab;
Pac=(pi/8)-(pac/3*sqrt(2))*cos(tetaac)+(pac*pac/16)*cos(2*tetaac)*(0.6728+log(2/pac))+(pac*pac/16)*tetaac*sin(2*tetaac);
Pca=Pac;
Pbc=(pi/8)-(pbc/3*sqrt(2))*cos(tetabc)+(pbc*pbc/16)*cos(2*tetabc)*(0.6728+log(2/pbc))+(pbc*pbc/16)*tetabc*sin(2*tetabc);
Pcb=Pbc;
Pap=(pi/8)-(pap/3*sqrt(2))*cos(tetaap)+(pap*pap/16)*cos(2*tetaap)*(0.6728+log(2/pap))+(pap*pap/16)*tetaap*sin(2*tetaap);
Ppa=Pap;
Pbp=(pi/8)-(pbp/3*sqrt(2))*cos(tetabp)+(pbp*pbp/16)*cos(2*tetabp)*(0.6728+log(2/pbp))+(pbp*pbp/16)*tetabp*sin(2*tetabp);
Ppb=Pbp;
Pcp=(pi/8)-(pcp/3*sqrt(2))*cos(tetacp)+(pcp*pcp/16)*cos(2*tetacp)*(0.6728+log(2/pcp))+(pcp*pcp/16)*tetacp*sin(2*tetacp);
Ppc=Pcp;

DRa=0.002513*f*Pa;
DRb=0.002513*f*Pb;
DRc=0.002513*f*Pc;
DRp=0.002513*f*Pp;
DRab=0.002513*f*Pab;
DRba=DRab;
DRac=0.002513*f*Pac;
DRca=DRac;
DRbc=0.002513*f*Pbc;
DRcb=DRbc;
DRap=0.002513*f*Pap;
DRpa=DRap;
DRbp=0.002513*f*Pbp;
DRpb=DRbp;
DRcp=0.002513*f*Pcp;
DRpc=DRcp;

DR(1,1)=DRa;
DR(1,2)=DRab;
DR(1,3)=DRac;
DR(1,4)=DRap;
DR(2,1)=DRba;
DR(2,2)=DRb;
DR(2,3)=DRbc;
DR(2,4)=DRbp;
DR(3,1)=DRca;
DR(3,2)=DRcb;
DR(3,3)=DRc;
DR(3,4)=DRcp;
DR(4,1)=DRpa;
DR(4,2)=DRpb;
DR(4,3)=DRpc;
DR(4,4)=DRp;

%Matriz das resistências corrigidas

% [R]=[Rc]+[DR]

aa=rcl+DRa;
aab=DRab;
aac=DRac;
aap=DRap;
aba=DRba;
ab=rcl+DRb;
abc=DRbc;
abp=DRbp;
aca=DRca;
acb=DRcb;
ac=rcl+DRc;
acp=DRcp;
apa=DRpa;
apb=DRpb;
apc=DRpc;
ap=rp+DRp;

R(1,1)=aa;
R(1,2)=aab;
R(1,3)=aac;
R(1,4)=aap;
R(2,1)=aba;
R(2,2)=ab;
R(2,3)=abc;
R(2,4)=abp;
R(3,1)=aca;
R(3,2)=acb;
R(3,3)=ac;
R(3,4)=acp;
R(4,1)=apa;
R(4,2)=apb;
R(4,3)=apc;
R(4,4)=ap;

%Redução da matriz

aal=aa-(aap*apa/ap);
aabl=aab-(aap*apb/ap);
aacl=aac-(aap*apc/ap);
abal=aba-(abp*apa/ap);
abl=ab-(abp*apb/ap);
abcl=abc-(abp*apc/ap);
acal=aca-(acp*apa/ap);
acbl=acb-(acp*apb/ap);
acl=ac-(acp*apc/ap);

Req(1,1)=aal;
Req(1,2)=aabl;
Req(1,3)=aacl;
Req(2,1)=abal;
Req(2,2)=abl;
Req(2,3)=abcl;
Req(3,1)=acal;
Req(3,2)=acbl;
Req(3,3)=acl;

% Resistência de sequência positiva e negativa
fprintf('O valor da resistência de sequência positiva e negativa é:');                
R11= aal-aabl

%Resistência de sequência nula
fprintf('O valor da resistência de sequência nula é:');               
R00= aal+2*aabl