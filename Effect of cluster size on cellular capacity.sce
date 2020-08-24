clc
clear
M = input("Total No. of cells in System:")
K = input("Total No. of channels per cluster:")
N1 = input("Enter Cluster Size (N1):")
N2 = input("Enter Cluster Size (N2):")
S1 = K/N1
C1 = M*S1
S2 = K/N2
C2 = M*S2
disp("System capcity with cluster size = 4:")
disp(C1)
disp("System capcity with cluster size = 7:")
disp(C2)
disp("Conclusion:")
if C1>C2 then
    disp("Capacity decreases with increase in cluster size")
else
    disp("Capacity increases with increase in cluster size")
end
disp("System Capcity:")
