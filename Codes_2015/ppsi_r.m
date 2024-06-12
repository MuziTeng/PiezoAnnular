
z=0.1;
psi1=zeros(size(rr,2),5);
 for j=1:5
    for i=1:size(rr,2)
bf1=b31(J3,J,rr(i),r1,z,h);
bf2=b32(J3,J,z,h);
bf3=b33(J3,J,rr(i),r1,z,h);
bf4=b34(J3,J,z,h);
bf7=b37(rr(i),r1);
bf10=1;
Yp1=Y3(Tbi,lmt(j),K3,J,z,h);
psi1(i,j)=A(1,j)*bf1+A(2,j)*bf2+A(3,j)*bf3+A(4,j)*bf4+A(7,j)*bf7-Yp1+A(10,j);
    end
 end
 %%%dimensionless
 psi1=psi1*(u11/c33)^0.5/Ar/30;
 

plot(rr,psi1(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(rr,psi1(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(rr,psi1(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(rr,psi1(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(rr,psi1(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 0.08 0.28]);
%legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0')
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[ 0.08 0.12 0.16 0.20 0.24 0.28]);
ylabel('$\psi\sqrt{u^{0}_{11}}/(r_{1}\alpha^{0}_{r}\Theta_{u}\sqrt{u^{0}_{33}})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\psi_r.eps

