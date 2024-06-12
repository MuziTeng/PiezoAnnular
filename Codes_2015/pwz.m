
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

plot(zz,ww2(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(zz,ww2(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(zz,ww2(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(zz,ww2(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(zz,ww2(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
%legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0')
axis([-0.15 0.15 -1.1 -0.3])
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[-1.1 -0.9 -0.7 -0.5 -0.3]);
ylabel('$w/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');


print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\w_z.eps

