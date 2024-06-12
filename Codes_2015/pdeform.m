

jj=1;      %%% lma=??  lmt=[-1 -0.5 1e-5 0.5 1];
div=0.02;  %%% 网格大小
time=500;    %%% 变形放大倍数
rdiv=(r1-r0)/div+1;
hdiv=h/div+1;
dfr=zeros(rdiv,hdiv);
dfh=zeros(rdiv,hdiv);
drr=r0:div:r1;
dzz=-0.15:div:0.15;
for i=1:rdiv
        dfr(i,:)=r0+div*i-div;
end
for j=1:hdiv
    dfh(:,j)=-0.15+div*j-div;
end

for i=1:rdiv
    for j=1:hdiv
        au1=4*S1(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(jj),h,dzz(j))*drr(i)^-1-drr(i)*dzz(j)-2*drr(i)*log(drr(i)/r1)*dzz(j);
        au2=-2*drr(i)*dzz(j);
        au3=-2*S0(c11,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,lmt(jj),h,dzz(j))*drr(i)^-1+drr(i)*log(drr(i)/r1);
        au4=drr(i);
        au5=-1*dzz(j)*drr(i)^-1;
        au6=-1*e15/c44*dzz(j)*drr(i)^-1;
        au7=-1*q15/c44*dzz(j)*drr(i)^-1;
        au11=drr(i)^-1;
        dfr(i,j)=dfr(i,j)+(A(1,jj)*au1+A(2,jj)*au2+A(3,jj)*au3+A(4,jj)*au4+A(5,jj)*au5+A(6,jj)*au6+A(7,jj)*au7+A(11,jj)*au11)*time;
        
        
        bw1=b11(J1,J,drr(i),r1,dzz(j),h);
        bw2=b12(J1,J,drr(i),dzz(j),h);
        bw3=b13(J1,J,drr(i),r1,dzz(j),h);
        bw4=b14(J1,J,dzz(j),h);
        bw5=b15(drr(i),r1);
        bw6=1;
        Yw1=Y1(Tbi,lmt(jj),K1,J,dzz(j),h);
        dfh(i,j)=dfh(i,j)+(A(1,jj)*bw1+A(2,jj)*bw2+A(3,jj)*bw3+A(4,jj)*bw4+A(5,jj)*bw5-Yw1+A(8,jj))*time;
        
    end
end

for j=1:hdiv
    plot(dfr(:,j),dfh(:,j),'r-'),hold on
end
for i=1:rdiv
    plot(dfr(i,:),dfh(i,:),'r-'),hold on
end

RR=[r0 r1];
HH=[-0.15 0.15];
HH1=[0.15 0.15];
HH2=[-0.15 -0.15];
RR1=[r0 r0];
RR2=[1 1];
plot(RR1,HH,'k--'),hold on
plot(RR2,HH,'k--'),hold on
plot(RR,HH1,'k--'),hold on
plot(RR,HH2,'k--'),hold on
RR3=[0 0];
HH3=[-0.3 0.3];
plot(RR3,HH3,'k-'),hold on
RR4=[0 1.3];
HH4=[0 0];
plot(RR4,HH4,'k-'),hold on
axis off