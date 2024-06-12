
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
 
 
 ar=0.3:0.035:1;
 aur1=[0.00013894	0.00015916	0.00017911	0.00019879	0.00021826	0.00023755	0.00025672	0.00027581	0.00029484	0.00031384	0.00033281	0.00035178	0.00037075	0.00038974	0.00040877	0.00042786	0.00044701	0.00046625	0.00048556	0.00050489	0.000524
];
aur1=aur1/(30*Ar);

aur0=[0.00011869	0.00013254	0.00014639	0.00016023	0.00017408	0.00018793	0.00020178	0.00021562	0.00022947	0.00024332	0.00025717	0.00027101	0.00028486	0.00029871	0.00031256	0.0003264	0.00034025	0.0003541	0.00036795	0.00038179	0.00039564
];
aur0=aur0/(30*Ar);

aur_1=[0.00013408	0.00014159	0.00014966	0.00015827	0.00016732	0.00017672	0.00018636	0.00019617	0.0002061	0.00021611	0.00022615	0.00023621	0.00024626	0.00025627	0.0002662	0.00027602	0.0002857	0.00029521	0.00030457	0.0003139	0.00032366
];
aur_1=aur_1/(30*Ar);
 
plot(rr,uu1(:,1),'b-.','linewidth',3),hold on
plot(rr,uu1(:,3),'g-','linewidth',3),hold on
plot(rr,uu1(:,5),'k--','linewidth',3),hold on

plot(ar,aur_1,'ro','markerfacecolor','b','markersize',10),hold on 
plot(ar,aur0,'ro','markerfacecolor','g','markersize',10),hold on 
plot(ar,aur1,'ro','markerfacecolor','k','markersize',10),hold on 
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 0.5 4]);
legend( '\lambda=-1.0','\lambda= 0.0','\lambda=1.0',2)
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[0.5 1 1.5 2 2.5 3 3.5 4 ]);
ylabel('$u/(r_{1}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$r/r_{1}$','Interpreter','latex','fontsize',25,'FontWeight','bold');
print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\fem_ur.eps
