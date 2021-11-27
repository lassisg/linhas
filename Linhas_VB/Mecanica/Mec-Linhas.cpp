#include <stdio.h>
#include <math.h>
#include <conio.h>
/*void*/ main(void)
{
int h,k,t;
float S,E,At;
float alfa,p,ti,tf,To1,To2,a[100],b[100],x,P,A,C1,C2,result,diam,Fv1,Fv2,v1,v2,alf,pr,pi;
double ret_s1,ret_s2,ent1,ent2,parcial,Y[100],z1,z2;
/*clrscr();*/
k=1;

printf ("\nDados de Entrada:");

printf ("\np=");
scanf ("%f",&p);

printf ("S=");
scanf ("%f",&S);

printf ("E=");
scanf ("%f",&E);

printf ("alfa=");
scanf ("%f",&alfa);

printf("ti=");
scanf ("%f",&ti);

printf("tf=");
scanf ("%f",&tf);

printf("To1=");
scanf ("%f",&To1);

printf("A=");
scanf ("%f",&A);

printf("v1=");
scanf ("%f",&v1);

printf("v2=");
scanf ("%f",&v2);

printf("alf=");
scanf ("%f",&alf);

printf("diam=");
scanf ("%f",&diam);


getch();
printf ("\nLimites e Precis∆o\n");
printf("a=");
scanf ("%f",&a[1]);
printf("b=");
scanf ("%f",&b[1]);
printf("P=");
scanf ("%f",&P);
printf ("\na=%f ",a[1]);
printf ("\nb=%f ",b[1]);
printf ("\nP=%f",P);
getch();

pi=3.141592654;


Fv1=0.0045*v1*v1*diam*alf;
Fv2=0.0045*v2*v2*diam*alf;
pr=sqrt((Fv2*Fv2)+(Fv1*Fv1));


	h=1;

       while(h==1)
	{
          if((b[k]-a[k])<P)
		{
		result=(b[k]+a[k])/2;
		h=0;
		printf("\nk=%d",k);
		}
		t=1;
		while(t<=3)
		{
			if(t==1) To2=a[k];
			if(t==2) To2=b[k];
			if(t==3) To2=x;

		C1=To1/p;
		C2=To2/pr;
		ent1=A/(2*C1);
		ent2=A/(2*C2);

		ret_s1=sinh(ent1);
		ret_s2=sinh(ent2);

		parcial=((C2*ret_s2)/(C1*ret_s1));
		At=tf-ti;

		Y[t]=(((1/alfa)*((parcial-1)-((1/(E*S))*(To2-To1))))-At) ;

		 x=(a[k]+b[k])/2;
		 printf ("\nx=%f\n",x);
		 t=t+1;
	       }

               z1=Y[1]*Y[3];
	       z2=Y[2]*Y[3];
	       printf("\nz1=%f",z1);
	       printf ("\nz2=%f",z2);
	       if(z1<0)
		 {
			a[k+1]=a[k];
			b[k+1]=x;
		 printf ("\ncaso 1");
		 }

	       if (z2<0)
		 {
			a[k+1]=x;
			b[k+1]=b[k];
		 printf ("\ncaso 2");
		 }

		getch();

	       k=k+1;
	       }
		 printf("O resultado e\n%f",result);
		 getch();


}
