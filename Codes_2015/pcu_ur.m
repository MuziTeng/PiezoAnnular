
z=0;
uu1=zeros(size(rr,2),5);
rr(1)=0.000000000000001;
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
 
ar=0:0.1:1;
cur_1=[0 0.158267151	0.316534302	0.474801453	0.633068604	0.791335755	0.949602907	1.107870058	1.266137209	1.42440436	1.582671511];

cur0=[0	0.206443519	0.412887038	0.619330557	0.825774076	1.032217595	1.238661115	1.445104634	1.651548153	1.857991672	2.064435191];

cur1=[0	0.278898793	0.557797586	0.836696378	1.115595171	1.394493964	1.673392757	1.95229155	2.231190343	2.510089135	2.788987928];
 
plot(rr,uu1(:,1),'b-.','linewidth',3),hold on
plot(rr,uu1(:,3),'g-','linewidth',3),hold on
plot(rr,uu1(:,5),'k--','linewidth',3),hold on

plot(ar,cur_1,'ro','markerfacecolor','b','markersize',10),hold on 
plot(ar,cur0,'ro','markerfacecolor','g','markersize',10),hold on 
plot(ar,cur1,'ro','markerfacecolor','k','markersize',10),hold on 

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0 1 0 3]);
legend( '\lambda=-1.0','\lambda= 0.0','\lambda=1.0',2)
set(gca,'xtick',[0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[0 0.5 1 1.5 2 2.5 3]);
ylabel('$u/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');

print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\cu_u_r.eps
