r=0.65;
uu2=zeros(size(zz,2),5);
 for j=1:5
    for i=1:size(zz,2)
au1=4*S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,zz(i))*r^-1-r*zz(i)-2*r*log(r/r1)*zz(i);
au2=-2*r*zz(i);
au3=-2*S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,zz(i))*r^-1+r*log(r/r1);
au4=r;
au5=-1*zz(i)*r^-1;
au6=-1*e15/c44*zz(i)*r^-1;
au7=-1*q15/c44*zz(i)*r^-1;
au11=r^-1;
uu2(i,j)=A(1,j)*au1+A(2,j)*au2+A(3,j)*au3+A(4,j)*au4+A(5,j)*au5+A(6,j)*au6+A(7,j)*au7+A(11,j)*au11;
    end
 end
 %%%dimensionless
 uu2=uu2/(30*Ar);
 

plot(zz,uu2(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(zz,uu2(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(zz,uu2(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(zz,uu2(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(zz,uu2(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',25)
set(gca,'linewidth',1.5)
axis([-0.15 0.15 1 1.8]);
%legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0')
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[1 1.2 1.4 1.6 1.8]);
ylabel('$u/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\u_z.eps



