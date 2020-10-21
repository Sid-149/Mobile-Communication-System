clc
clear
Tf = 40*10^-3 //Input frame duration in sec
Ns = 6 //Input no. of slots in a frame
BW_per_user = 30*10^3 //Input bandwidth in Hz of individual user during his/her Time-Slot Duration
Nu = 395 //Input no. of users sharing same Time-Slots in system but having acess to different frequency sub-bands
BWt = 12.5 //Input total bandwidth in Mhz
Rb = 16.2*10^3//Input data rate in Kbps
Idr = 16.2*10^3 //Individual data rate in Kbps
Srate = 13

Ts = (Srate/Idr)*(Tf/Ns)
disp('Timeslot (Ts) in sec:')
disp(Ts)

Seff = (Ts*Ns*Nu*BW_per_user)/(Tf*BWt*1000)
Seff_percent = Seff*100
disp('Spectral Efficiency (%):')
disp(Seff_percent)

Tfoh = (1-Seff)*100
disp('Overhead:')
disp(Tfoh)
