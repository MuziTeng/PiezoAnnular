
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
 

plot(rr,ww1(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(rr,ww1(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(rr,ww1(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(rr,ww1(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(rr,ww1(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',18)
set(gca,'linewidth',1.5)
axis([0.3 1 -1 0]);
legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0')
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-1 -0.8 -0.6 -0.4 -0.2 0]);
ylabel('$w/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');


print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\w_r.eps

