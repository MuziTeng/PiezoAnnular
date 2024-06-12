r=0.65;
sigt2=zeros(size(zz,2),5);
 for j=1:5
    for i=1:size(zz,2)
as1=(-1*(3*c12+c11)*zz(i)+4*c13*J1/J*zz(i)*(1+log(r/r1))+4*e31*J2/J*zz(i)*(1+log(r/r1))+4*q31*J3/J*zz(i)*(1+log(r/r1))-2*(c11+c12)*zz(i)*log(r/r1)...
    -4*(c12-c11)*r^-2*S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,zz(i)))*exp(lmt(j)*(zz(i)/h+0.5));
as2=(-2*(c11+c12)*zz(i)+4*c13*J1/J*zz(i)+4*e31*J2/J*zz(i)+4*q31*J3/J*zz(i))*exp(lmt(j)*(zz(i)/h+0.5));
as3=(c12-c13*J1/J*(1+2*log(r/r1))-e31*J2/J*(1+2*log(r/r1))-q31*J3/J*(1+2*log(r/r1))+(c11+c12)*log(r/r1)...
    +2*(c12-c11)*r^-2*S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(j),h,zz(i)))*exp(lmt(j)*(zz(i)/h+0.5));
as4=(c11+c12-2*c13*J1/J-2*e31*J2/J-2*q31*J3/J)*exp(lmt(j)*(zz(i)/h+0.5));
as5=-1*(c11-c12)*zz(i)*r^-2*exp(lmt(j)*(zz(i)/h+0.5));
as6=-1*(c11-c12)*e15/c44*zz(i)*r^-2*exp(lmt(j)*(zz(i)/h+0.5));
as7=-1*(c11-c12)*q15/c44*zz(i)*r^-2*exp(lmt(j)*(zz(i)/h+0.5));
as11=-1*(c12-c11)*r^-2*exp(lmt(j)*(zz(i)/h+0.5));
Ys1=-1*(c13*K1/J*th1(Tbi,lmt(j),zz(i),h)+e31*K2/J*th1(Tbi,lmt(j),zz(i),h)+q31*K3/J*th1(Tbi,lmt(j),zz(i),h)+lmt1*th1(Tbi,lmt(j),zz(i),h))*exp(2*lmt(j)*(zz(i)/h+0.5));
sigt2(i,j)=A(1,j)*as1+A(2,j)*as2+A(3,j)*as3+A(4,j)*as4+A(5,j)*as5+A(6,j)*as6+A(7,j)*as7+A(11,j)*as11+Ys1;
    end
 end
 %%%dimensionless
 sigt2=sigt2/(c33*Ar*30);
 
 
 azz=-0.15:0.015:0.15;
 
 csigr_1=[-0.267027641	-0.164862824	-0.084151366	-0.021890012	0.024572797	0.057574527	0.079172339	0.091173419	0.095162214	0.092524857	0.084471082	0.072053868	0.056187036	0.037661015	0.017156952	-0.004740666	-0.027532726	-0.050795405	-0.074171164	-0.097360719	-0.120115873
];
 csigr0=[7.26E-05	-5.17E-05	-0.000175883	-0.000300107	-0.00042433	-0.000548553	-0.000672776	-0.000797	-0.000921223	-0.001045446	-0.001169669	-0.001293892	-0.001418116	-0.001542339	0.001746053	0.00162183	0.001497606	0.001373383	0.00124916	0.001124937	0.001000713
];
 csigr1=[0.160833692	0.130364818	0.099314286	0.068014429	0.036865985	0.006347695	-0.022972949	-0.05042764	-0.075233757	-0.096479252	-0.113105751	-0.123889657	-0.127421046	-0.122080099	-0.106010798	-0.077091591	-0.032902676	0.029310459	0.112677655	0.220749314	0.357546761
];
 
plot(zz,sigt2(:,1),'b-.','linewidth',3),hold on
plot(zz,sigt2(:,3),'g-','linewidth',3),hold on
plot(zz,sigt2(:,5),'k--','linewidth',3),hold on


plot(azz,csigr_1,'ro','markerfacecolor','b','markersize',10),hold on
plot(azz,csigr0,'ro','markerfacecolor','g','markersize',10),hold on
plot(azz,csigr1,'ro','markerfacecolor','k','markersize',10), hold on

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([-0.15 0.15 -0.3 0.4]);
legend( '\lambda=-1.0', '\lambda= 0.0','\lambda= 1.0',2)
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[-0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4]);
ylabel('$\sigma_{\theta}/(c^{0}_{33}\alpha^{0}_{r}\Theta_{u})$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');
print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\cu_sigt_z.eps