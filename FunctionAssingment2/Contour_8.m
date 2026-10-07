%% a
clc;
clear;
clearvars;

f=@(x,y) 3*y + y.^3-x.^3;

x=linspace(-1,1,500);
y=linspace(-1,1,500);

[X,Y]=meshgrid(x,y);

Z=f(X,Y);

[C,h]=contour(X,Y,Z,15);

clabel(C,h);
grid on;
xlabel('x');
ylabel('y');
title('Level Curves near the Origin');

hold on;
plot(0,0,'ro','MarkerFaceColor','r');
hold off;

%% b
clc;
clear;
close all;
clearvars;

f = @(x,y) 3*y + y.^3 - x.^3;

x=linspace(-5,5,500);
y=linspace(-5,5,500);
[X,Y]=meshgrid(x,y);

Z=f(X,Y);

figure;

[C,h]=contour(X,Y,Z,[5,5]);
clabel(C,h);
grid on;
xlabel("X");
ylabel("y");
title("curve of 3*y + y.^3 - x.^3=5 ");


%% c
clc;
clear;
clearvars;


f=@(x,y) y.*log(x)+x.*log(y);

x=linspace(0.01,5,500);
y=linspace(0.01,5,500);

[X,Y]=meshgrid(x,y);

Z=f(X,Y);

[C,h]=contour(X,Y,Z,[0 0]);
clabel(C,h);
grid on;
hold on;
plot(1,1,'ro','MarkerSize',8,'MarkerFaceColor','r');


%%
clc;
clear;
close all;

% Define function
f = @(x,y) y.*log(x) + x.*log(y);

% Domain
% log(x) and log(y) require x > 0 and y > 0

x = linspace(0.01,5,500);
y = linspace(0.01,5,500);

[X,Y] = meshgrid(x,y);

% Function values
Z = f(X,Y);

% Plot level curve f(x,y) = 0
figure;

[C,h] = contour(X,Y,Z,[0 0]);

clabel(C,h);

hold on;

%Mark the point (1,1)
plot(1,1,'ro','MarkerSize',8,'MarkerFaceColor','r');

text(1,1,'  (1,1)','FontSize',10);

grid on;

xlabel('x');
ylabel('y');

title('Level Curve through (1,1)');

hold off;