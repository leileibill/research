clc;
close all;
clear;
set_figure_style_pre();

%% hard-charging

figure;
var_name = '4to1_hard.mat';
load(var_name);
% loglog(freq, (vin.*-iin-vout.*iout),'s-')
% hold on
loglog(1./period, (vin/4-vout)./iout)

ylim([5e-3,1e0])
% title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_impedance_sp_hard','pdf')

%% soft-charging

figure;
var_name = '4to1_soft.mat';
load(var_name);
% loglog(freq, (vin.*-iin-pout)./iout.^2,'s-')
% hold on
loglog(1./period, (vin/4-vout)./iout)

ylim([5e-3,1e0])
% xlim([1e4,3e5])
% title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_impedance_sp_soft','pdf')



%% soft-charging, ditributed inductance

figure;
var_name = '4to1_hard.mat';
load(var_name);
loglog(1./period, (vin/4-vout)./iout,'--')
hold on;

var_name = '4to1_distributed.mat';
load(var_name);
% loglog(freq, (vin.*-iin-pout)./iout.^2,'s-')
% hold on
loglog(1./freq, (vin/4-vout)./iout)

ylim([5e-3,1e0])
% xlim([1e4,3e5])
% title('Duty = 0.75')
legend('Hard-charging','Soft-charging','Location','SouthWest')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
export_figure('plot_impedance_sp_distributed','pdf')


cascade