clc;
close all;

A=[1 2 3 ; 0 1 4 ; 5 6 0];
B=[-2 1 0 ; 3 0 1 ; 4 5 6];


sumAb=A+B
subAb=A-B
ddotP=A*B
aT=A'
a_inv=inv(A)
det_a=det(A)

rank_A=rank(A)

%%
clc;
clear all;
close all;
clearvars;

A=[1 2 3; 0 1 4; 5 6 0];

det_a=det(A)

if det_a~=0
    fprintf("matrix is invertiable");
else
    fprintf("matrix is not invertiable");
end

%verify
a_inv=inv(A);
verification= A* a_inv
