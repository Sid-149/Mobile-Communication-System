clc
clear
gt = 1
gr = 1
pt = 50
d = 10000
pi = 3.14
c = 3*10^8
fc = 900
f = fc*10^6
lambda = c/f
pt_dbm = round(10*log10(pt/(10^(-3))))
pt_dbw = round(10*log10(pt))
disp(pt_dbm,'Power Transmitted in dBm:')
disp(pt_dbw,'Power Transmitted in dBw:')
pr = (pt*gt*gr*((lambda)^2))/(((4*pi)^2)*(100^2)*1)
pr_d = pr*10^(3)
disp(pr_d,'Power Recieved in mW:')
pr_dbm = 10*log10(pr_d)
disp(pr_dbm,'Power Recieved in dBm:')
pr_dbw = pr_dbm + 20*log10(100/d)
disp(pr_dbw,'Power Recieved at 10 Km in dBw:')