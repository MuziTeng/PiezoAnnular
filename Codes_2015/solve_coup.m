clc
clear all
format longe
%%%%%% parameters of the material  %%%%%%%%%%%%%%%%%%%%%%%%
c11=7.41e10;  c12=4.52e10;  c13=3.93e10;  c33=8.36e10;  c44=1.32e10;
lmt1=0.621e6;  lmt3=0.551e6; 
k=9.0;  Ar=4.4e-6;
e31=-0.16;  e33=0.347;  e15=-0.138;
bta11=8.26e-11;    bta33=9.03e-11;
P3=-2.94e-6;
Q3=5.187e-6;
q31=580.3;  q33=699.7;  q15=550;
u11=5e-6;   u33=10e-6;
d11=-3612.68e-11;  d33=-2.4735e-11;
J0=[c33 e33 q33;e33 -bta33 -d33;q33 -d33 -u33];
J=det(J0);
D10=[c13 e33 q33;e31 -bta33 -d33;q31 -d33 -u33];
J1=det(D10);
D20=[c33 c13 q33;e33 e31 -d33;q33 q31 -u33];
J2=det(D20);
D30=[c33 e33 c13;e33 -bta33 e31;q33 -d33 q31];
J3=det(D30);
T10=[-lmt3 e33 q33;P3 -bta33 -d33;Q3 -d33 -u33];
K1=det(T10);
T20=[c33 -lmt3 q33;e33 P3 -d33;q33 Q3 -u33];
K2=det(T20);
T30=[c33 e33 -lmt3;e33 -bta33 P3;q33 -d33 Q3];
K3=det(T30);

%%%%%%%%  parameters of the modle%%%
lmt=[-1 -0.5 1e-5 0.5 1];
h=0.3;r1=1;r0=0.3;Tbi=5;  

zz=-0.15:0.03:0.15;
rr=r0:0.05:1;

%%%%%%%%%%%%%%%%%%%%5

%%%%%% solve the equations  %%%%%%%%%%%%%%%%%%%%%%%%
A=zeros(11,5);
for j=1:5
bb=zeros(11,11);
YY=zeros(1,11);
%%%%%%%%%%%%%%%   r=r0    %%%%%%%%%%%%%%%%%%%%%%%%%
bb(1,1)=b11(J1,J,r0,r1,0,h);
bb(1,2)=b12(J1,J,r0,0,h);
bb(1,3)=b13(J1,J,r0,r1,0,h);
bb(1,4)=b14(J1,J,0,h);
bb(1,5)=b15(r0,r1);
bb(1,8)=1;
bb(2,1)=b21(J2,J,r0,r1,0,h);
bb(2,2)=b22(J2,J,0,h);
bb(2,3)=b23(J2,J,r0,r1,0,h);
bb(2,4)=b24(J2,J,0,h);
bb(2,6)=b26(r0,r1);
bb(2,9)=1;
bb(3,1)=b31(J3,J,r0,r1,0,h);
bb(3,2)=b32(J3,J,0,h);
bb(3,3)=b33(J3,J,r0,r1,0,h);
bb(3,4)=b34(J3,J,0,h);
bb(3,7)=b37(r0,r1);
bb(3,10)=1;
%%%
bb(4,1)=L10(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r0,r1,lmt(j),h);
   
bb(4,2)=L20(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(4,3)=L30(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r0,r1,lmt(j),h);
bb(4,4)=L40(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(4,5)=L50(c11,c12,r0,lmt(j),h);
bb(4,6)=L60(c11,c12,c44,e15,r0,lmt(j),h);
bb(4,7)=L70(c11,c12,c44,q15,r0,lmt(j),h);
bb(4,11)=L80(c11,c12,r0,lmt(j),h);
%%%
bb(5,1)=L11(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r0,r1,lmt(j),h);
bb(5,2)=L21(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(5,3)=L31(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r0,r1,lmt(j),h);
bb(5,4)=L41(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(5,5)=L51(c11,c12,r0,lmt(j),h);
bb(5,6)=L61(c11,c12,c44,e15,r0,lmt(j),h);
bb(5,7)=L71(c11,c12,c44,q15,r0,lmt(j),h);
bb(5,11)=L81(c11,c12,r0,lmt(j),h);
%%%%%%%%%%%%%%%%   r=r1    5 %%%%%%%%%%%%%%%%%%%%%%%%
bb(6,1)=b11(J1,J,r1,r1,0,h);
bb(6,2)=b12(J1,J,r1,0,h);
bb(6,3)=b13(J1,J,r1,r1,0,h);
bb(6,4)=b14(J1,J,0,h);
bb(6,5)=b15(r1,r1);
bb(6,8)=1;
bb(7,1)=b21(J2,J,r1,r1,0,h);
bb(7,2)=b22(J2,J,0,h);
bb(7,3)=b23(J2,J,r1,r1,0,h);
bb(7,4)=b24(J2,J,0,h);
bb(7,6)=b26(r1,r1);
bb(7,9)=1;
bb(8,1)=b31(J3,J,r1,r1,0,h);
bb(8,2)=b32(J3,J,0,h);
bb(8,3)=b33(J3,J,r1,r1,0,h);
bb(8,4)=b34(J3,J,0,h);
bb(8,7)=b37(r1,r1);
bb(8,10)=1;
%%%
bb(9,1)=L10(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r1,r1,lmt(j),h);
bb(9,2)=L20(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(9,3)=L30(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r1,r1,lmt(j),h);
bb(9,4)=L40(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(9,5)=L50(c11,c12,r1,lmt(j),h);
bb(9,6)=L60(c11,c12,c44,e15,r1,lmt(j),h);
bb(9,7)=L70(c11,c12,c44,q15,r1,lmt(j),h);
bb(9,11)=L80(c11,c12,r1,lmt(j),h);
%%%
bb(10,1)=L11(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r1,r1,lmt(j),h);
bb(10,2)=L21(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(10,3)=L31(c11,c12,c13,e31,q31,e15,q15,c44,J1,J2,J3,J,r1,r1,lmt(j),h);
bb(10,4)=L41(c11,c12,c13,e31,q31,J1,J2,J3,J,lmt(j),h);
bb(10,5)=L51(c11,c12,r1,lmt(j),h);
bb(10,6)=L61(c11,c12,c44,e15,r1,lmt(j),h);
bb(10,7)=L71(c11,c12,c44,q15,r1,lmt(j),h);
bb(10,11)=L81(c11,c12,r1,lmt(j),h);
%%%
bb(11,1)=2*R1(c11,c13,e31,q31,J1,J2,J3,J,lmt(j),h,h/2);
bb(11,3)=-R0(c11,c13,e31,q31,J1,J2,J3,J,lmt(j),h,h/2);
%%%%%%
YY(1,1)=Y1(Tbi,lmt(j),K1,J,0,h);
YY(1,2)=Y2(Tbi,lmt(j),K2,J,0,h);
YY(1,3)=Y3(Tbi,lmt(j),K3,J,0,h);
YY(1,4)=-L90(c13,e31,q31,K1,K2,K3,J,Tbi,lmt(j),lmt1,h);
YY(1,5)=-L91(c13,e31,q31,K1,K2,K3,J,Tbi,lmt(j),lmt1,h);

YY(1,6)=Y1(Tbi,lmt(j),K1,J,0,h);
YY(1,7)=Y2(Tbi,lmt(j),K2,J,0,h);
YY(1,8)=Y3(Tbi,lmt(j),K3,J,0,h);
YY(1,9)=-L90(c13,e31,q31,K1,K2,K3,J,Tbi,lmt(j),lmt1,h);
YY(1,10)=-L91(c13,e31,q31,K1,K2,K3,J,Tbi,lmt(j),lmt1,h);
YY(1,11)=0;
%%%%%%%%%
YY1=YY';
A(:,j)=bb\YY1;
end




