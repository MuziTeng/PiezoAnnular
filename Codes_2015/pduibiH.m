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
 
arr=0.3:0.035:1;
awr1=[0	-4.47E-05	-7.20E-05	-9.42E-05	-1.13E-04	-1.27E-04	-1.39E-04	-1.47E-04	-1.53E-04	-1.55E-04	-1.55E-04	-1.51E-04	-1.45E-04	-1.36E-04	-1.24E-04	-1.10E-04	-9.23E-05	-7.22E-05	-4.95E-05	-2.42E-05	1.53E-19
];
awr1=awr1/(30*Ar);

awr2=[0	-4.95E-05	-7.64E-05	-9.81E-05	-1.16E-04	-1.31E-04	-1.42E-04	-1.50E-04	-1.55E-04	-1.57E-04	-1.56E-04	-1.52E-04	-1.46E-04	-1.36E-04	-1.24E-04	-1.09E-04	-9.19E-05	-7.15E-05	-4.84E-05	-2.28E-05	4.51E-20
];
awr2=awr2/(30*Ar);

awr3=[0	-5.75E-05	-8.35E-05	-1.05E-04	-1.22E-04	-1.36E-04	-1.47E-04	-1.54E-04	-1.58E-04	-1.60E-04	-1.59E-04	-1.54E-04	-1.47E-04	-1.37E-04	-1.25E-04	-1.09E-04	-9.12E-05	-7.04E-05	-4.68E-05	-2.07E-05	-2.82E-19
];
awr3=awr3/(30*Ar);

awr4=[0	-6.19E-05	8.73E-05	-1.08E-04	-1.25E-04	-1.39E-04	-1.49E-04	-1.56E-04	-1.60E-04	-1.62E-04	-1.60E-04	-1.55E-04	-1.48E-04	-1.38E-04	-1.25E-04	-1.09E-04	-9.08E-05	-6.97E-05	-4.58E-05	-1.95E-05	-5.50E-19
];
awr4=awr4/(30*Ar);
awr5=[0	-6.20E-05	-8.76E-05	-1.08E-04	-1.25E-04	-1.39E-04	-1.49E-04	-1.56E-04	-1.61E-04	-1.62E-04	-1.60E-04	-1.55E-04	-1.48E-04	-1.38E-04	-1.25E-04	-1.09E-04	-9.08E-05	-6.97E-05	-4.58E-05	-1.95E-05	-5.76E-19
];
awr5=awr5/(30*Ar);


plot(rr,ww1(:,3),'g-','linewidth',1.5),hold on
plot(arr,awr1,'bd','markerfacecolor','b','markersize',3),hold on
plot(arr,awr2,'g<','markerfacecolor','g','markersize',3),hold on
plot(arr,awr3,'ks','markerfacecolor','k','markersize',3), hold on
plot(arr,awr4,'r^','markerfacecolor','k','markersize',3), hold on
plot(arr,awr5,'yo','markerfacecolor','y','markersize',3), hold on
set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 -1.5 0.3]);
legend( '\lambda=0', 'H5 R70','H15 R70','H30 R70','H60 R70','H60 R140')
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-1.5 -1.2  -0.9 -0.6 -0.3 0.0 0.3]);
ylabel('w''');
xlabel('r''');
