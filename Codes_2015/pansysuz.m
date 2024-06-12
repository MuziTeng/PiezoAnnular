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
 
 az=-0.15:0.015:0.15;
 auz1=[0.00034478	0.00034406	0.00034318	0.00034215	0.000341	0.00033976	0.00033844	0.00033707	0.00033566	0.00033424	0.00033281	0.0003314	0.00033002	0.00032869	0.00032742	0.00032623	0.00032512	0.00032412	0.00032324	0.00032248	0.00032187
];
auz1=auz1/(30*Ar);

auz0=[0.00027713	0.00027597	0.00027455	0.00027289	0.00027102	0.00026898	0.00026679	0.00026449	0.00026209	0.00025964	0.00025717	0.00025469	0.00025224	0.00024985	0.00024754	0.00024535	0.00024331	0.00024144	0.00023978	0.00023836	0.0002372
];
auz0=auz0/(30*Ar);


auz_1=[0.00024831	0.00024707	0.00024554	0.00024375	0.00024172	0.00023948	0.00023707	0.00023449	0.0002318	0.000229	0.00022615	0.00022326	0.00022038	0.00021753	0.00021476	0.00021209	0.00020957	0.00020725	0.00020516	0.00020337	0.00020192
];
auz_1=auz_1/(30*Ar);

plot(zz,uu2(:,1),'b-.','linewidth',3),hold on
plot(zz,uu2(:,3),'g-','linewidth',3),hold on
plot(zz,uu2(:,5),'k--','linewidth',3),hold on

plot(az,auz_1,'ro','markerfacecolor','b','markersize',10),hold on
plot(az,auz0,'ro','markerfacecolor','g','markersize',10),hold on
plot(az,auz1,'ro','markerfacecolor','k','markersize',10),hold on

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([-0.15 0.15 1.4 2.9]);
%legend( '\lambda=-1.0','\lambda= 0.0','\lambda=1.0','FEM')
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[1.4 1.7 2.0 2.3 2.6 2.9]);
ylabel('$u/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');
print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\fem_uz.eps