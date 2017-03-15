clc;
close all;
clear;
set_figure_style_pre();

%% hard-charging

figure;
var_name = '3level_impedance_hard.mat';
load(var_name);
loglog(freq, (vin.*-iin-vout.*iout)./iout.^2,'s-')
hold on
loglog(freq, (vin/2-vout)./iout)


title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_balance_3level_input_cap_d75','png')

%% hard-charging

figure;
var_name = '3level_impedance_soft.mat';
load(var_name);
loglog(freq, (vin.*iin-vout.*iout)./iout.^2,'s-')
hold on
loglog(freq, (vin/2-vout)./iout)

title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);

cascade