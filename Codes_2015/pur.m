
z=0;
uu1=zeros(size(rr,2),5);
 for j=1:5
    for i=1:size(rr,2)
au1=4*S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,z)*rr(i)^-1-rr(i)*z-2*rr(i)*log(rr(i)/r1)*z;
au2=-2*rr(i)*z;
au3=-2*S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,z)*rr(i)^-1+rr(i)*log(rr(i)/r1);
au4=rr(i);
au5=-1*z*rr(i)^-1;
au6=-1*e15/c44*z*rr(i)^-1;
au7=-1*q15/c44*z*rr(i)^-1;
au11=rr(i)^-1;
uu1(i,j)=A(1,j)*au1+A(2,j)*au2+A(3,j)*au3+A(4,j)*au4+A(5,j)*au5+A(6,j)*au6+A(7,j)*au7+A(11,j)*au11;
    end
 end
 %%%dimensionless
 uu1=uu1/(30*Ar);
 

plot(rr,uu1(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(rr,uu1(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(rr,uu1(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(rr,uu1(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(rr,uu1(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 0.5 3]);
legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0',2)
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[0.5 1 1.5 2 2.5 3]);
ylabel('$u/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\u_r.eps
