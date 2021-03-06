clc;
close all;
clear;
set_figure_style_pre();


%%  series-parallel, compare cap tolerance, duty = 0.5
figure;

load('4to1_hard_charging_05duty_10u_10u_10u.mat');
x1 = fsw;
y1 = ploss;
loglog(1./x1,y1,'o-');
hold on;

load('4to1_hard_charging_05duty_11u_10u_9u.mat');
x2 = fsw;
y2 = ploss;
loglog(1./x2,y2,'s-');

load('4to1_hard_charging_05duty_12u_10u_8u.mat');
x3 = fsw;
y3 = ploss;
loglog(1./x3,y3,'s-');

ax = gca;
ax.ColorOrderIndex = 1;

% p = polyfit(x1,y1,5);
% f = polyval(p,x1);
% loglog(1./x1,f);


% axis([0.9e5 4e6 4e-2 1]);
legend('10u 10u 10u','11u 10u 9u','12u 10u 8u');
xlabel('Frequency (Hz)');
ylabel('Power loss (W)');

set_figure_style()
resize_figure()
% export_figure('series_parallel_captol_05duty','png')

%%  series-parallel, compare cap tolerance, duty = 0.25
figure;

load('4to1_hard_charging_025duty_10u_10u_10u.mat');
x1 = fsw;
y1 = ploss;
loglog(1./x1,y1,'o-');
hold on;

load('4to1_hard_charging_025duty_11u_10u_9u.mat');
x2 = fsw;
y2 = ploss;
loglog(1./x2,y2,'s-');

load('4to1_hard_charging_025duty_12u_10u_8u.mat');
x3 = fsw;
y3 = ploss;
loglog(1./x3,y3,'s-');

ax = gca;
ax.ColorOrderIndex = 1;

% axis([0.9e5 4e6 4e-2 1]);
legend('10u 10u 10u','11u 10u 9u','12u 10u 8u');
xlabel('Frequency (Hz)');
ylabel('Power loss (W)');

set_figure_style()
resize_figure()
% export_figure('series_parallel_captol_025duty','png')

%%  series-parallel, compare duty ratio

figure;

load('4to1_hard_charging_05duty_10u_10u_10u.mat');
x1 = fsw;
y1 = ploss;
loglog(1./x1,y1,'o-');
hold on;

load('4to1_hard_charging_025duty_10u_10u_10u.mat');
x3 = fsw;
y3 = ploss;
loglog(1./x3,y3,'s-');

ax = gca;
ax.ColorOrderIndex = 1;

legend('duty = 0.5','duty = 0.25');
xlabel('Frequency (Hz)');
ylabel('Power loss (W)');

set_figure_style()
resize_figure()
% export_figure('series_parallel_duty','png')