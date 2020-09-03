clc
clear
ip = [1 0 0 0]
disp("Input:")
disp(ip)
disp("State Table:")
a = list()
for i=1:15
    a($+1) = bitxor(ip(3),ip(4))
    b = ip(1)
    c = ip(2)
    d = ip(3)
    ip(1) = a(i)
    ip(2) = b
    ip(3) = c
    ip(4) = d
    disp(ip)
end
zeroes = list()
oness = list()
for i=1:15
    if a(i) == 0 then
        zeroes($+1) = a(i)
    else oness($+1) = a(i)
    end
end
disp("No. of Zeros:")
disp(length(zeroes))
disp("No. of Ones:")
disp(length(oness))
