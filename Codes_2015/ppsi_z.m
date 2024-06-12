r=0.65;
psi2=zeros(size(zz,2),5);
 for j=1:5
      for i=1:size(zz,2)
bf1=b31(J3,J,r,r1,zz(i),h);
bf2=b32(J3,J,zz(i),h);
bf3=b33(J3,J,r,r1,zz(i),h);
bf4=b34(J3,J,zz(i),h);
bf7=b37(r,r1);
bf10=1;
Yp1=Y3(Tbi,lmt(j),K3,J,zz(i),h);
psi2(i,j)=A(1,j)*bf1+A(2,j)*bf2+A(3,j)*bf3+A(4,j)*bf4+A(7,j)*bf7-Yp1+A(10,j);
    end
 end
 %%%dimensionless
 psi2=psi2*sqrt(u11/c33)/Ar/30;
 

plot(zz,psi2(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(zz,psi2(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(zz,psi2(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(zz,psi2(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(zz,psi2(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on

plot([-0.15,0.15],[0 0],'k--','linewidth',0.5);hold on;
plot([0,0],[-0.6 0.4 ],'k--','linewidth',0.5);

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0',2)
axis([-0.15 0.15 -0.6 0.4])
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[-0.6 -0.4  -0.2  0  0.2  0.4]);
ylabel('$\psi\sqrt{u^{0}_{11}}/(r_{1}\alpha^{0}_{r}\Theta_{u}\sqrt{u^{0}_{33}})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');


print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\psi_z.eps

