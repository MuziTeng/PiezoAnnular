
z=0;
ww1=zeros(size(rr,2),5);
rr(1)=0.00000000000001;
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
 
 arr=0:0.05:1;
 cwr_1=[-5.406159241	-5.392643843	-5.352097649	-5.284520658	-5.189912872	-5.068274289	-4.91960491	-4.743904734	-4.541173763	-4.311411995	-4.054619431	-3.770796071	-3.459941914	-3.122056962	-2.757141213	-2.365194668	-1.946217327	-1.500209189	-1.027170256	-0.527100526	-1.10E-13
];
 cwr0=[-4.623668424	-4.612109253	-4.577431739	-4.519635884	-4.438721687	-4.334689147	-4.207538266	-4.057269042	-3.883881476	-3.687375568	-3.467751318	-3.225008726	-2.959147791	-2.670168515	-2.358070896	-2.022854935	-1.664520633	-1.283067988	-0.878497	-0.450807671	1.35E-13
];
 cwr1=[-2.662998862	-2.656341365	-2.636368874	-2.603081388	-2.556478908	-2.496561434	-2.423328965	-2.336781502	-2.236919044	-2.123741593	-1.997249147	-1.857441707	-1.704319272	-1.537881843	-1.35812942	-1.165062002	-0.95867959	-0.738982184	-0.505969784	-0.259642389	3.51E-13
];

plot(rr,ww1(:,1),'b-.','linewidth',3),hold on
plot(rr,ww1(:,3),'g-','linewidth',3),hold on
plot(rr,ww1(:,5),'k--','linewidth',3),hold on


plot(arr,cwr_1,'ro','markerfacecolor','b','markersize',10),hold on
plot(arr,cwr0,'ro','markerfacecolor','g','markersize',10),hold on
plot(arr,cwr1,'ro','markerfacecolor','k','markersize',10), hold on

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0 1 -6 0]);
legend( '\lambda=-1.0', '\lambda= 0.0','\lambda= 1.0',2)
set(gca,'xtick',[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-6 -5 -4 -3 -2 -1 0]);
ylabel('$w/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\cu_w_r.eps
