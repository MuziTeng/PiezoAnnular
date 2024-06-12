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
 
arr=0.3:0.05:1;
awr0=[5.42E-20	-4.38E-05	-7.86E-05	-0.000105561	-0.000125549	-0.000139044	-0.000146392	-0.000147822	-0.000143491	-0.000133499	-0.000117909	-9.68E-05	-7.01E-05	-3.78E-05	5.42E-20
];
awr0=awr0/(30*Ar);

%awr_1=[0	-4.54E-05	-8.20E-05	-0.00011076	-0.000132392	-0.000147309	-0.00015577	-0.000157937	-0.000153899	-0.000143701	-0.000127355	-0.000104846	-7.61E-05	-4.12E-05	-5.42E-20
%]
%awr_1=awr_1/(30*Ar);



plot(rr,ww1(:,3),'g-','linewidth',1.5),hold on
plot(arr,awr0,'bd','markerfacecolor','b','markersize',3),hold on
%plot(rr,ww1(:,1),'b-','linewidth',1.5),hold on
%plot(arr,awr_1,'bd','markerfacecolor','b','markersize',8),hold on


set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
axis([0.3 1 -1.5 0.3]);
legend( '\lambda=0', 'ºÙ«–\lambda=0','\lambda=-1.0','ºÙ«–\lambda=-1.0')
set(gca,'xtick',[0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]);
set(gca,'ytick',[-1.5 -1.2  -0.9 -0.6 -0.3 0.0 0.3]);
ylabel('w''');
xlabel('r''');
 