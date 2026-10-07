clc;
clear all;
close all;
clearvars;

v1=[1;2;3;];
v2=[2;4;6];
v3=[1;0;1];

M=[v1 v2 v3];

r=rank(M)

if r== size(M,2)
    fprintf("Linearly independent");
else
    fprintf("Linearly dependent");
end


%%
clc;
clear all;
close all;
v1=[1;2;3];
v2=[2;4;6];
v3=[1;0;1];

m=[v1 v2 v3];

r=rank(m)

[R,pivot_col]=rref(m)

basis=m(:,pivot_col)

dimension=length(pivot_col)


%%
clc;
clear all;
close all;

a=[1 2 3; 2 5 2; 1 1 1];
b=[9 ;13; 6];

X=a\b

X_inv=inv(a)*b

verify =a*X

%%
clc;
clear all;
close all;

a=[1 2 3; 2 4 6; 1 1 1];

[R,pivot_col]=rref(a)

col_basis=a(:,pivot_col)
rank_a=rank(a)

nuLL_space=null(a,'r')

%%
clc;
clear all;
close all;

a=[1 2 3; 2 4 6; 1 1 1];

rank_a=rank(a)
n=size(a,2)

nullity=n-rank_a

sum_rank_nullity=rank_a+nullity

if sum_rank_nullity==n
    fprintf("The rank nullity theorom is proved")
end

%%
clc;
clear all;
close all;

A=[4 1; 2 3];

[V,D]=eig(A);

eigen_values=diag(D);

%verify
for i=1:length(eigen_values)
    lambda=eigen_values(i)
    leftside=A*V(:,i)
    rightside=lambda*V(:,i)
end

%%
clc;
clear all;
close all;

A=input("Enter a square Matrix: ");

disp(A)

det_A=det(A)
rank_a=rank(A)

if size(A,1)== size(A,2) & det_A~=0
    inv_a=inv(A)
else 
    fprintf("Inverse matrix is not existed")
end

[V,D]=eig(A);
eigen_values=diag(D)

nuLl_space=null(A,'rational')

%%
clc;
clear all;
close all;
A=rand(4,4)

det_A=det(A)
rank_a=rank(A)
[V,D]=eig(A);

eigen_values=diag(D)

if det_A ~=0
    fprintf("Matrix A is invertible\n")
else
    fprintf("Matrix A is not invertiable\n")
end

B=rand(4,1)

x=A\B

fprintf("Verify\n")
AX=A*x