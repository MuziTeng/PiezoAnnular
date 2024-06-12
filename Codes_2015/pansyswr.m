z=0;

ww1=zeros(size(rr,2),5);
 for j=1:5
    for i=1:size(rr,2)
bw1=b11(J1,J,rr(i),r1,z,h);
bw2=b12(J1,J,rr(i),z,h);
bw3=b13(J1,J,rr(i),r1,z,h);
bw4=b14(J1,J,z,h);
bw5=b15(rr(i),r1);
bw6=1;
Yw1=Y1(Tbi,lmt(j),K1,J,z,h);
ww1(i,j)=A(1,j)*bw1+A(2,j)*bw2+A(3,j)*bw3+A(4,j)*bw4+A(5,j)*bw5-Yw1+A(8,j);
    end
 end
 %%%dimensionless
 ww1=ww1/(30*Ar);
 
arr=0.3:0.035:1;

awr1=[0	-2.13E-05	-3.74E-05	-5.06E-05	-6.15E-05	-7.03E-05	-7.72E-05	-8.23E-05	-8.56E-05	-8.71E-05	-8.69E-05	-8.51E-05	-8.16E-05	-7.66E-05	-6.98E-05	-6.15E-05	-5.16E-05	-4.00E-05	-2.68E-05	-1.22E-05	-1.19E-20
];
awr1=awr1/(30*Ar);

awr0=[0	-3.68E-05	-6.45E-05	-8.70E-05	-1.06E-04	-1.21E-04	-1.33E-04	-1.41E-04	-1.47E-04	-1.50E-04	-1.49E-04	-1.46E-04	-1.40E-04	-1.31E-04	-1.20E-04	-1.06E-04	-8.86E-05	-6.88E-05	-4.62E-05	-2.12E-05	-2.21E-20
];
awr0=awr0/(30*Ar);

awr_1=[0	-4.32E-05	-7.59E-05	-1.03E-04	-1.25E-04	-1.43E-04	-1.57E-04	-1.67E-04	-1.74E-04	-1.77E-04	-1.76E-04	-1.73E-04	-1.66E-04	-1.55E-04	-1.42E-04	-1.25E-04	-1.05E-04	-8.11E-05	-5.44E-05	-2.47E-05	-2.41E-20
];
awr_1=awr_1/(30*Ar);


arr0=0.3:0.05:1;
awr00=[5.42E-20	-4.38E-05	-7.86E-05	-0.000105561	-0.000125549	-0.000139044	-0.000146392	-0.000147822	-0.000143491	-0.000133499	-0.000117909	-9.68E-05	-7.01E-05	-3.78E-05	5.42E-20
];
awr00=awr00/(30*Ar);

plot(rr,ww1(:,1),'b-.','linewidth',3),hold on
plot(rr,ww1(:,3),'g-','linewidth',3),hold on
plot(rr,ww1(:,5),'k--','linewidth',3),hold on


plot(arr,awr_1,'ro','markerfacecolor','b','markersize',10),hold on
plot(arr,awr0,'ro','markerfacecolor','g','markersize',10),hold on
plot(arr,awr1,'ro','markerfacecolor','k','markersize',10), hold on
%plot(arr0,awr00,'b+','markerfacecolor','b','markersize',12,'linewidth',3),hold on

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 -1.5 0]);
legend( '\lambda=-1.0', '\lambda= 0.0','\lambda= 1.0',4)
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-1.5 -1.2  -0.9 -0.6 -0.3 0.0 ]);
ylabel('$w/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\fem_wr.eps


