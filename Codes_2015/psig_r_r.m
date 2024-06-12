z=0;
sigr1=zeros(size(rr,2),5);
 for j=1:5
    for i=1:size(rr,2)
as1=(-1*(3*c11+c12)*z+4*c13*J1/J*z*(1+log(rr(i)/r1))+4*e31*J2/J*z*(1+log(rr(i)/r1))+4*q31*J3/J*z*(1+log(rr(i)/r1))-2*(c11+c12)*z*log(rr(i)/r1)...
    +4*(c12-c11)*rr(i)^-2*S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,z))*exp(lmt(j)*(z/h+0.5));
as2=(-2*(c11+c12)*z+4*c13*J1/J*z+4*e31*J2/J*z+4*q31*J3/J*z)*exp(lmt(j)*(z/h+0.5));
as3=(c11-c13*J1/J*(1+2*log(rr(i)/r1))-e31*J2/J*(1+2*log(rr(i)/r1))-q31*J3/J*(1+2*log(rr(i)/r1))+(c11+c12)*log(rr(i)/r1)-...
    2*(c12-c11)*rr(i)^-2*S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,z))*exp(lmt(j)*(z/h+0.5));
as4=(c11+c12-2*c13*J1/J-2*e31*J2/J-2*q31*J3/J)*exp(lmt(j)*(z/h+0.5));
as5=(c11-c12)*z*rr(i)^-2*exp(lmt(j)*(z/h+0.5));
as6=(c11-c12)*e15/c44*z*rr(i)^-2*exp(lmt(j)*(z/h+0.5));
as7=(c11-c12)*q15/c44*z*rr(i)^-2*exp(lmt(j)*(z/h+0.5));
as11=(c12-c11)*rr(i)^-2*exp(lmt(j)*(z/h+0.5));
Ys1=-1*(c13*K1/J*th1(Tbi,lmt(j),z,h)+e31*K2/J*th1(Tbi,lmt(j),z,h)+q31*K3/J*th1(Tbi,lmt(j),z,h)+lmt1*th1(Tbi,lmt(j),z,h))*exp(2*lmt(j)*(z/h+0.5));
sigr1(i,j)=A(1,j)*as1+A(2,j)*as2+A(3,j)*as3+A(4,j)*as4+A(5,j)*as5+A(6,j)*as6+A(7,j)*as7+A(11,j)*as11+Ys1;
    end
 end
 %%%dimensionless
 sigr1=sigr1/(c33*Ar*30);
 

plot(rr,sigr1(:,1),'b-d','linewidth',3,'markerfacecolor','b','markersize',10),hold on
plot(rr,sigr1(:,2),'r-^','linewidth',3,'markerfacecolor','r','markersize',10),hold on
plot(rr,sigr1(:,3),'g-<','linewidth',3,'markerfacecolor','g','markersize',10),hold on
plot(rr,sigr1(:,4),'m->','linewidth',3,'markerfacecolor','m','markersize',10),hold on
plot(rr,sigr1(:,5),'k-s','linewidth',3,'markerfacecolor','k','markersize',10),hold on
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 -0.2 0.15]);
%legend( '\lambda=-1.0', '\lambda=-0.5','\lambda= 0.0','\lambda= 0.5','\lambda= 1.0')
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-0.2 -0.15 -0.10 -0.05 0 0.05 0.10 0.15]);
ylabel('$\sigma_{r}/(c^{0}_{33}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\�Ȼ���\sigr_r.eps
