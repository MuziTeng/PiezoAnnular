r=0.65;
ww2=zeros(size(zz,2),5);
 for j=1:5
    for i=1:size(zz,2)
bw1=b11(J1,J,r,r1,zz(i),h);
bw2=b12(J1,J,r,zz(i),h);
bw3=b13(J1,J,r,r1,zz(i),h);
bw4=b14(J1,J,zz(i),h);
bw5=b15(r,r1);
bw6=1;
Yw1=Y1(Tbi,lmt(j),K1,J,zz(i),h);
ww2(i,j)=A(1,j)*bw1+A(2,j)*bw2+A(3,j)*bw3+A(4,j)*bw4+A(5,j)*bw5-Yw1+A(8,j);
    end
 end
 %%%dimensionless
 ww2=ww2/(30*Ar);
 
 az=-0.15:0.015:0.15;
 awz1=[-0.0001421	-0.00013615	-0.00013034	-0.00012452	-0.00011887	-0.00011323	-0.00010778	-0.00010238	-0.00009718	-0.00009206	-0.000087171	-0.00008239	-0.000077867	-0.000073489	-0.000069399	-0.000065493	-0.000061911	-0.000058561	-0.000055573	-0.000052869	-0.000050574
];
 awz1=awz1/(30*Ar);
 awz0=[-0.0001996	-0.00019308	-0.00018689	-0.00018104	-0.00017553	-0.00017035	-0.00016552	-0.00016102	-0.00015686	-0.00015303	-0.00014954	-0.00014639	-0.00014358	-0.00014111	-0.00013897	-0.00013717	-0.00013571	-0.00013458	-0.0001338	-0.00013335	-0.00013324
];
 awz0=awz0/(30*Ar);
 awz_1=[-0.00021857	-0.00021168	-0.00020544	-0.00019995	-0.00019502	-0.00019074	-0.00018695	-0.0001837	-0.00018086	-0.0001785	-0.00017648	-0.00017486	-0.00017353	-0.00017254	-0.00017179	-0.00017131	-0.00017103	-0.00017097	-0.00017106	-0.00017131	-0.00017168
];
awz_1=awz_1/(30*Ar);
 
plot(zz,ww2(:,1),'b-.','linewidth',3),hold on
plot(zz,ww2(:,3),'g-','linewidth',3),hold on
plot(zz,ww2(:,5),'k--','linewidth',3),hold on


plot(az,awz_1,'ro','markerfacecolor','b','markersize',10),hold on
plot(az,awz0,'ro','markerfacecolor','g','markersize',10),hold on
plot(az,awz1,'ro','markerfacecolor','k','markersize',10),hold on

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
%legend( '\lambda=-1.0','\lambda= 0.0','\lambda=1.0','FEM',2)
axis([-0.15 0.15 -1.8 -0.3])
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[-1.8 -1.5 -1.2 -0.9 -0.6 -0.3]);
ylabel('$w/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\fem_wz.eps
