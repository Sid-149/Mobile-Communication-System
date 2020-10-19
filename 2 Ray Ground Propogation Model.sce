clc
clear
Fc = input("Enter Frequency in Hz: ")
E = input("Enter Electric Field in v/m: ")
GrdB = input("Enter Gain of Receiver Antenna in dB: ")
d = input("Enter distance between Transmitting and Receiving Antenna in meters: ")
c = 3*10^8
lambda = c/Fc
disp("Wavelength in meters: ")
disp(lambda)
Gr = 10^(GrdB/10)
Ae = (Gr*lambda*lambda)/(4*3.14)
disp("Effective Aperture of the Antenna: ")
disp(Ae)
d0m = 1*10^3
ht = 50
hr = 1.5
Er = (2*E*d0m*2*3.14*ht*hr)/(lambda*d*d)
disp("Electric Field at Receiving Side in v/m: ")
disp(Er)
Pr = ((Er)^2)*Ae/(120*3.14)
disp("Power Received in watts: ")
disp(Pr)
PrdB = 10*log10(Pr)
disp("Power Received in dBw: ")
disp(PrdB)
PrdBM = 10*log10(Pr/10^-3)
disp("Power Received in dBm: ")
disp(PrdBM)
