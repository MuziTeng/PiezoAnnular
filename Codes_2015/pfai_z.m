r=0.65;
fai2=zeros(size(zz,2),5);
 for j=1:5
      for i=1:size(zz,2)
bf1=b21(J2,J,r,r1,zz(i),h);
bf2=b22(J2,J,zz(i),h);
bf3=b23(J2,J,r,r1,zz(i),h);
bf4=b24(J2,J,zz(i),h);
bf6=b26(r,r1);
bf9=1;
Yf1=Y2(Tbi,lmt(j),K2,J,zz(i),h);
fai2(i,j)=A(1,j)*bf1+A(2,j)*bf2+A(3,j)*bf3+A(4,j)*bf4+A(6,j)*bf6-Yf1+A(9,j);
    end
 end
 %%%dimensionless
 fai2=fai2*(bta11/c33)^0.5/Ar/30;
 

plot(zz,fai2(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(zz,fai2(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(zz,fai2(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(zz,fai2(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(zz,fai2(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on

plot([-0.15,0.15],[0 0],'k--','linewidth',0.5);hold on;
plot([0,0],[-0.2 0.2 ],'k--','linewidth',0.5);hold on;
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0',1)
axis([-0.15 0.15 -0.2 0.2])
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[-0.2 -0.15 -0.10 -0.05 0 0.05 0.10 0.15 0.2]);
ylabel('$\phi\sqrt{\varepsilon^{0}_{11}}/(r_{1}\alpha^{0}_{r}\Theta_{u}\sqrt{\varepsilon^{0}_{33}})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\phi_z.eps
