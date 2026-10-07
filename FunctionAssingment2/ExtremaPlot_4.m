%% a
clc;
clear;
clearvars;

syms x;

f=x^3 -3*x;

df=diff(f,x);
d2f=diff(f,x,2);
critical_point=solve(df==0,x);

for i =1:length(critical_point)
    c=critical_point(i);
    val_f=subs(f,x,c);
    val_d2f=subs(d2f,x,c);

    if double(val_d2f)<0
        fprintf("Maximum at x= %g value of f =%g\n",double(c),double(val_f));
    elseif double(val_d2f)>0
        fprintf("Minimum at x= %g value of f =%g\n",double(c),double(val_f));
    end
    fprintf("value of d2f =%g\n",double(val_d2f));
end

x_plot=linspace(-3,3,1000);
y_plot=subs(f,x,x_plot);

plot(x_plot,y_plot,"Color","b","LineStyle","-",'LineWidth',2);
hold on;

values=subs(f,x,critical_point);
plot(critical_point,values,'ro','MarkerSize',8,'MarkerFaceColor','r');
grid on;
xlabel('x');
ylabel('fx');
legend('fx','critialPoint');


%%
clc;
clear;
close all;

syms x;

% 1. Define the function
f = x^3 - 3*x;

%2. First and second derivative
df = diff(f, x);
d2f = diff(f, x, 2);

% 3. Find critical points
critical_points = solve(df == 0, x);

% 4. Display critical points
disp('Critical Points:')
disp(critical_points)

% Identify relative extrema
for i = 1:length(critical_points)

    c = critical_points(i);

    % Function value at critical point
    value_f = subs(f, x, c);

    % Second derivative at critical point
    value_d2f = subs(d2f, x, c);

    if double(value_d2f) < 0

        fprintf('Relative Maximum: x = %g, f(x) = %g\n', ...
            double(c), double(value_f));

    elseif double(value_d2f) > 0

        fprintf('Relative Minimum: x = %g, f(x) = %g\n', ...
            double(c), double(value_f));

    else

        fprintf('Inconclusive at x = %g\n', double(c));

    end
end

% 6. Plot the function
x_plot = -3:0.01:3;
y_plot = double(subs(f, x, x_plot));

figure;

plot(x_plot, y_plot, 'LineWidth', 2);
grid on;
hold on;

% 7. Plot critical points
for i = 1:length(critical_points)

    c = double(critical_points(i));
    y = double(subs(f, x, c));

    plot(c, y, 'o', 'MarkerSize', 8, 'LineWidth', 2);

    text(c, y, sprintf('  (%g, %g)', c, y));
end

xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 - 3x');

hold off;


%%
clc; clear; close all;

% Define symbolic variable and function
syms x

f = x^3 - 3*x^2 + 2;

% Differentiate using diff
f1 = diff(f, x);       % First derivative
f2 = diff(f1, x);      % Second derivative

% Solve f'(x) = 0
critical_points = solve(f1 == 0, x);

% Display results
disp('Function f(x):');
disp(f);

disp('First derivative f''(x):');
disp(f1);

disp('Second derivative f''''(x):');
disp(f2);

disp('Critical points:');
disp(critical_points);
% Critical points
crit_pts = critical_points;

% Evaluate f(x) and f''(x) at critical points
f_vals = subs(f, x, crit_pts);
f2_vals = subs(f2, x, crit_pts);

% Determine relative extrema using 2nd derivative test
for i = 1:length(crit_pts)

    if f2_vals(i) > 0
        type = 'Local minimum';
    elseif f2_vals(i) < 0
        type = 'Local maximum';
    else
        type = 'Inconclusive';
    end

    fprintf('Critical point x = %.2f, f(x) = %.2f -> %s\n', ...
        double(crit_pts(i)), double(f_vals(i)), type);
end

% Numerical values for plotting
 x_axis = linspace(-1, 3, 400);
 y_axis = double(subs(f, x, x_axis));

% Plot
figure;
plot(x_axis, y_axis,'g--', 'LineWidth', 2);
hold on;

plot(double(crit_pts), double(f_vals), ...
    'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');

xlabel('x');
ylabel('f(x)');
title('f(x) = x^3 - 3x^2 + 2 with Relative Extrema');
grid on;

legend('f(x)', 'Critical points', 'Location', 'best');


%% c
clc;
clear;
clearvars;

syms x;

f=1/(x^2+1);

df=diff(f,x);
d2f=diff(f,x,2);
critical_point=solve(df==0,x)

for i =1:length(critical_point)
    c=critical_point(i);
    val_f=subs(f,x,c);
    val_d2f=subs(d2f,x,c);

    if double(val_d2f)<0
        fprintf("Maximum at x= %g value of f =%g\n",double(c),double(val_f));
    elseif double(val_d2f)>0
        fprintf("Minimum at x= %g value of f =%g\n",double(c),double(val_f));
    end
    fprintf("value of d2f =%g\n",double(val_d2f));
end

x_plot=linspace(-3,3,1000);
y_plot=subs(f,x,x_plot);

plot(x_plot,y_plot,"Color","b","LineStyle","-",'LineWidth',2);
hold on;

values=double(subs(f,x,critical_point));
plot(critical_point,values,'ro','MarkerSize',8,'MarkerFaceColor','r');
grid on;
xlabel('x');
ylabel('fx');
legend('fx','critialPoint');




%% c


