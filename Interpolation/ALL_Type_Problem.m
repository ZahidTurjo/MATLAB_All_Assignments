%%1 
clc;
clear;
close all;

x=[0 1 2 3 4];
y=[1 3 7 13 21];

xq=2.5;
y_interp=interp1(x,y,xq,'linear');
y_exact=xq^2+xq+1;

error=abs(y_interp-y_exact)

figure;
plot(x,y,'bo-','MarkerFaceColor','r');
hold on;
plot(xq,y_exact,'rs-','MarkerFaceColor','b','MarkerSize',9);

%% 2
clc;
clear;
close all;
x=[0 1 2 3];
y=[1 2 5 10];

syms X;

n=length(x);

P=sym(0);

for i=1:n
    L=sym(1);
    for j=1:n
        if j~=i
            L=L*(X-x(j))/(x(i)-x(j));
        end
        
    end
    P=P+y(i)*L;
end

P=expand(P);
xq=1.5;

y_interp=subs(P,X,1.5);

y_exact=1.5^2+1;

error=abs(y_exact-y_interp);

xx=linspace(0,3,300);
yy=subs(P,X,xx);
figure;
plot(xx,yy,'b');
hold on;
plot(x,y,'ro',"MarkerFaceColor",'r');

plot(xq,y_interp,'bs','MarkerFaceColor','b')
%% 4

clc;
clear;
close all;

t=[0 1 2 3 4 5];
s=[0 2.1 8.3 18.2 32.4 50.1];

n=length(t);
v=zeros(1,n);
h=t(2)-t(1);

v(1)=(s(2)-s(1))/h;

for i=2:n-1
        
    v(i)=(s(i+1)-s(i-1))/(2*h);
    
end

v(n)=(s(n)-s(n-1))/h;

results=table(t(:),s(:),v(:));

disp(results);


figure;
subplot(2,1,1);
plot(t,s,'bo-',"MarkerFaceColor",'b');


subplot(2,1,2);
plot(t,v,'ro-','MarkerFaceColor','r')

%% 5

clc;
clear;
close all;


x=[0 0.5 1 1.5 2];
y=[1 1.25 2 3.25 5];

ar=trapz(x,y);

syms X
f=X^2+1;
i_exact=int(f,X,0,2);
i_exact=double(i_exact);

error=abs(ar-i_exact);

xx=linspace(0,2,300);
yy=subs(f,X,xx);

figure;
area(xx,yy,'FaceAlpha',0.3);
hold on;
plot(x,y,'ro','MarkerFaceColor','r');

%% 6

clc;
clear;
close all;

N=[4 8 16 32];

trap=zeros(size(N));
simp=zeros(size(N));
a=0;
b=pi;
i_exact=integral(@(x) sin(x) ,a,b);

for i=1:length(N)
    n=N(i);
    h=(b-a)/n;
    x=linspace(a,b,n+1);
    y=sin(x);
    trap(i)=(h/2)*(y(1)+y(n+1)+2*sum(y(2:n)));
    simp(i)=(h/3)*(y(1)+y(n+1)+4*sum(y(2:2:n))+2*(sum(y(3:2:n-1))));
           
end

trap_error=abs(i_exact-trap);
simp_error=abs(i_exact-simp);

result=table(N(:),trap(:),simp(:),trap_error(:),simp_error(:), ...
    'VariableNames',{'Interval','Trap','Simp','Trap_er','Simp_er'})

figure;

loglog(N,trap_error,'bs-');
hold on;
loglog(N,simp_error,'ro-');


