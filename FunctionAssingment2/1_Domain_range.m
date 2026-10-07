%b
clc;
clear all;
close all;

x=linspace(-1.99,1.99,1000);
y=log(4-x.^2);

plot(x,y,'B','LineWidth',2);
xlabel('x');
ylabel('fx');


%% c
clc;
clear all;
close all;

x=linspace(0,2,1000);
y=sqrt(2*x-x.^2);

plot(x,y,'b','LineWidth',2);


%% d
clc;
clear all;
close all;

x=linspace(-10,10,1000);
y=x./(x.^2+1);

%figure;
plot(x,y,'Color', 'r','LineStyle','-.','LineWidth',2);

%% e
clc;
clear all;
close all;

x1=linspace(-10,-2.01,1000);
x2=linspace(1,10,1000);

y1=sqrt((x1-1)./(x1+2));
y2=sqrt((x2-1)./(x2+2));
plot(x1,y1,'Color','r','LineStyle','-','LineWidth',2);
hold on;
plot(x2,y2,'Color','b','LineStyle',':','LineWidth',2);
legend('Y1','Y2');

