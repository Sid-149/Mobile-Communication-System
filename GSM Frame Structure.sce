clc
clear
Rb = 270.833 //data rate of GSM (Kbps)
Ts = 156.25 //No. of bits in one time slot Ts
x = 1/Rb //one bit duration
y = Ts*x //one slot duration
z = y*8 //one frame duration
disp('One bit duration (ms):')
disp(x)
disp('One slot duration (ms):')
disp(y)
disp('One frame duration (ms):')
disp(z)
framerate = (270.833*10e3)/1250
disp('Framerate (bps):')
disp(framerate)
multiframe = 26*z
disp('Multiframe (ms):')
disp(multiframe)
superframe = 51*multiframe
disp('Superframe (ms):')
disp(superframe)
hyperframe = 2048 *superframe
disp('Hyperframe (ms):')
disp(hyperframe)
