%% a
clc;
clear;
clearvars;

syms x;
f = x^2 - 4*x + 1;
df=diff(f,x);

critical_point=solve(df==0,x);

points=[0;critical_point;3];
values=subs(f,x,points);
disp(points)
disp(values)

[max_val,max_index]=max(double(values));
[min_val,min_index]=min(double(values));

fprintf("Maximum value =%g at point= %g\n",max_val,double(points(max_index)));
fprintf("Minimum value =%g at point= %g\n",min_val,double(points(min_index)));

%%b
clc;
clear;
clearvars;

syms x;

f=x^3-3*x;

df=diff(f,x);

critical_point=solve(df==0,x);

points=[-2;critical_point;2];

values=subs(f,x,points);
disp(points)
disp(values)

[max_val,max_index]=max(double(values));
[min_val,min_index]=min(double(values));

fprintf("maximum value =%g at point x= %g\n",max_val,double(points(max_index)));
fprintf("minimum value =%g at point x= %g\n",min_val,double(points(min_index)));


%% c
clc;
clear;
clearvars;

syms x;

f=sin(x);

df=diff(f,x);

critical_point=solve(df==0,x);

points=[0;critical_point;2*pi];

values=subs(f,x,points);
disp(points)
disp(values)

[max_val,max_index]=max(double(values));
[min_val,min_index]=min(double(values));

fprintf("maximum value =%g at point x= %g\n",max_val,double(points(max_index)));
fprintf("minimum value =%g at point x= %g\n",min_val,double(points(min_index)));

%% d
clc;
clear;
clearvars;
syms x;
f=exp(-x^2);
df=diff(f,x);

critical_point=solve(df==0,x);

points=[-1;critical_point;2];

values=subs(f,x,points);
disp(points);
disp(values);

[max_val,max_index]=max(double(values));
[min_val,min_index]=min(double(values));


fprintf("maximum value =%g at point x= %g\n",max_val,double(points(max_index)));
fprintf("minimum value =%g at point x= %g\n",min_val,double(points(min_index)));

p=linspace(-1,2,1000);
val=subs(f,x,p);
plot(p,val);
hold on;
plot(points,values,'ro','Markersize',8,'MarkerFaceColor','r');

;
