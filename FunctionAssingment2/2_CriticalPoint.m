%% a
clc;
clear all;
close all;

syms x;
f=x^3-3*x^2+2;

df=diff(f,x);
df2=diff(f,x,2);

criticalPoint=solve(df==0,x)

for i=1:length(criticalPoint)
    c=criticalPoint(i);
    value_of_f=subs(f,x,c);
    value_of_d2f=subs(df2,x,c);
    if value_of_d2f<0
        fprintf("maximam at critial point=%d\n",c);
    
    else
        fprintf("maximam at critial point=%d\n and valu",c);
    end

    disp(value_of_d2f)
end

%% b
clc;
close all;
clearvars;
syms x;

f = x^4 - 4*x^2;

df = diff(f,x);
d2f = diff(f,x,2);

criticalpoint = solve(df == 0,x);

for i = 1:length(criticalpoint)

    c = criticalpoint(i);

    val_f = subs(f,x,c);
    val_d2f = subs(d2f,x,c);

    if double(val_d2f) < 0

        fprintf("Maxima at x = %g, value of f = %g\n", ...
            double(c), double(val_f));

    elseif double(val_d2f) > 0

        fprintf("Minima at x = %g, value of f = %g\n", ...
            double(c), double(val_f));

    end

    fprintf("Value of Double Derivative = %g\n\n", ...
        double(val_d2f));

end


%% c
clc;
close all;
clearvars;
syms x;

f=x^3+3*x^2-9*x;
df=diff(f,x);
d2f=diff(f,x,2);

critical_point=solve(df==0,x);

for i=1:length(critical_point)
    c=critical_point(i);
    val_f=subs(f,x,c);
    val_d2f=subs(d2f,x,c);
    if double(val_d2f)<0
        fprintf("Maxima at x= %g ,value of f=%g\n\n",double(c),double(val_f));
    elseif double(val_d2f)>0
        fprintf("Minima at x=%g, value of f=%g\n\n",double(c),double(val_f));
    end
    fprintf("The value double derivative =%g\n\n",double(val_d2f));
end

%% d
clc;
clear all;
clearvars;

syms x;

f=sin(x)+cos(x);

df=diff(f,x);
d2f=diff(f,x,2);

critical_point=solve(df==0,x)


for i=1:length(critical_point)
    c=critical_point(i);
    val_f=subs(f,x,c);
    val_d2f=subs(d2f,x,c);
    if double(val_d2f)<0
        fprintf("Maxima at x= %g ,value of f=%g\n\n",double(c),double(val_f));
    elseif double(val_d2f)>0
        fprintf("Minima at x=%g, value of f=%g\n\n",double(c),double(val_f));
    end
    fprintf("The value double derivative =%g\n\n",double(val_d2f));
end 


%% e
clc;
clear;
close all;

syms x;
f=log(x)-x;

df=diff(f,x);
d2f=diff(f,x,2);
critical_point=solve(df==0,x)

for i=1:length(critical_point)
    c=critical_point(i);
    val_f=subs(f,x,c);
    val_d2f=subs(d2f,x,c);
    if double(val_d2f)<0
        fprintf("Maxima at x=%g ,value of f=%g\n\n",double(c),double(val_f));
    elseif double(val_d2f)>0
        fprintf("Minima at x=%g , value of f=%g\n\n",double(c),double(val_f));
    
    end
    fprintf("value of double derivatrive=%g\n\n",double(val_d2f));
end

%% e
clc;
clear all;
syms x
f = log(x) - x;

solve(diff(f,x) == 0, x)
subs(diff(f,x,2), x, 1)
subs(f, x, 1)