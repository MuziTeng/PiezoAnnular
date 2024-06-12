
r=0.65;
thth=zeros(size(zz,2),5);
 for j=1:5
    for i=1:size(zz,2)
thth(i,j)=th1(Tbi,lmt(j),zz(i),h);
    end
 end
 %dimensionless
 thth=thth/30;
 
az=-0.15:0.015:0.15;
 
anth_1=[150	146.41	142.66	138.69	134.54	130.15	125.57	120.72	115.65	110.3	104.7	98.775	92.586	86.043	79.202	71.971	64.412	56.42	48.065	39.233	30
];
anth_1=anth_1/30;

anth_05=[150	145.31	140.52	135.59	130.55	125.36	120.06	114.62	109.05	103.32	97.461	91.44	85.283	78.953	72.481	65.827	59.023	52.027	44.874	37.52	30
];
anth_05=anth_05/30;

anth0=[150	144	138	132	126	120	114	108	102	96	90	84	78	72	66	60	54	48	42	36	30
];
anth0=anth0/30;

anth05=[150	142.48	135.13	127.97	120.98	114.17	107.52	101.05	94.717	88.56	82.539	76.683	70.955	65.384	59.936	54.637	49.454	44.414	39.484	34.689	30
];
anth05=anth05/30;

anth1=[150	140.77	131.93	123.58	115.59	108.03	100.8	93.957	87.414	81.225	75.305	69.705	64.348	59.28	54.433	49.848	45.462	41.313	37.345	33.591	30
];
anth1=anth1/30;


plot(zz,thth(:,1),'b-.','linewidth',3),hold on
%plot(zz,thth(:,2),'r-','linewidth',3),hold on
plot(zz,thth(:,3),'g-','linewidth',3),hold on
%plot(zz,thth(:,4),'m-','linewidth',3),hold on
plot(zz,thth(:,5),'k--','linewidth',3),hold on

plot(az,anth_1,'ro','markerfacecolor','b','markersize',10),hold on
%plot(az,anth_05,'ro','markerfacecolor','r','markersize',10),hold on
plot(az,anth0,'ro','markerfacecolor','g','markersize',10),hold on
%plot(az,anth05,'ro','markerfacecolor','m','markersize',10),hold on
plot(az,anth1,'ro','markerfacecolor','k','markersize',10),hold on

set(gca,'fontsize',20)
set(gca,'linewidth',1.5)
legend( '\lambda=-1.0','\lambda= 0.0','\lambda= 1.0')
axis([-0.15 0.15 1 5]);
set(gca,'xtick',[-0.15 -0.1 -0.05 0 0.05 0.1 0.15]);
set(gca,'ytick',[1.0 1.5 2.0 2.5 3.0 3.5 4.0 4.5 5.0]);



ylabel('$T/\Theta_{u}$','Interpreter','latex','fontsize',25,'FontWeight','bold');
xlabel('$z/h$','Interpreter','latex','fontsize',25,'FontWeight','bold');



print -depsc -r300 C:\Users\ST\Desktop\»»ª∑∞Â\temp.eps

