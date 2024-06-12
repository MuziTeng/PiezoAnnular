function th1=th1(Tbi,lmt,z,h)
th1=30*(1-Tbi)*(1-exp(-lmt*(0.5+z./h)))/(1-exp(-lmt))+30*Tbi;