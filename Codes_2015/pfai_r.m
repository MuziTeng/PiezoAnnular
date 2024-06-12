
z=0.1;
fai1=zeros(size(rr,2),5);
 for j=1:5
    for i=1:size(rr,2)
bf1=b21(J2,J,rr(i),r1,z,h);
bf2=b22(J2,J,z,h);
bf3=b23(J2,J,rr(i),r1,z,h);
bf4=b24(J2,J,z,h);
bf6=b26(rr(i),r1);
bf9=1;
Yf1=Y2(Tbi,lmt(j),K2,J,z,h);
fai1(i,j)=A(1,j)*bf1+A(2,j)*bf2+A(3,j)*bf3+A(4,j)*bf4+A(6,j)*bf6-Yf1+A(9,j);
    end
 end
 %%%dimensionless
 fai1=fai1*(bta11/c33)^0.5/Ar/30;
 

plot(rr,fai1(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(rr,fai1(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(rr,fai1(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(rr,fai1(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(rr,fai1(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 -0.12 -0.04]);
%legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0')
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-0.12 -0.10  -0.08  -0.06  -0.04 ]);
ylabel('$\phi\sqrt{\varepsilon^{0}_{11}}/(r_{1}\alpha^{0}_{r}\Theta_{u}\sqrt{\varepsilon^{0}_{33}})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\phi_r.eps

