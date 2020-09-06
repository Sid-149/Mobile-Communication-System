clc
clear
disp("Enter Numbers for Input Sequence:"); // Enter first number on console then press enter key then type second number and again press enter to type third & so on to fourth.
    for i = 1:4
        ipt(i) = input('')
        ip($+1) = ipt(i)
    end
ip = [ipt(1) ipt(2) ipt(3) ipt(4)]
disp("Input Sequence:")
disp(ip)
disp("State Table:")
op = list()
for i=1:15
    a = bitxor(ip(3),ip(4))
    b = ip(1)
    c = ip(2)
    d = ip(3)
    op($+1) = ip(4)
    ip(1) = a
    ip(2) = b
    ip(3) = c
    ip(4) = d
    disp(ip)
end
zeroes = list()
oness = list()
for i=1:15
    if op(i) == 0 then
        zeroes($+1) = op(i)
    else oness($+1) = op(i)
    end
end
disp("Output Sequence:")
disp(ip)
disp("No. of 0''s in Output:")
disp(length(zeroes))
disp("No. of 1''s in Output:")
disp(length(oness))

