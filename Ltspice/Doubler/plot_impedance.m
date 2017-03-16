clc;
close all;
clear;
set_figure_style_pre();

%% hard-charging

% figure;
% var_name = '5to1_fibonacci_hard.mat';
% load(var_name);
% % loglog(freq, (vin.*-iin-vout.*iout),'s-')
% % hold on
% loglog(1./period, (vin/5-vout)./iout)
% 
% % ylim([1e-2,2e0])
% % title('Duty = 0.75')
% ylabel('Output impedance [$\Omega$]')
% xlabel('Switching frequency [Hz]')
%  
% set_figure_style();
% resize_figure(2);
% export_figure('plot_impedance_fibonacci_hard','pdf')

%% soft-charging

% figure;
% var_name = '5to1_fibonacci_soft.mat';
% load(var_name);
% % loglog(freq, (vin.*-iin-vout.*iout),'s-')
% % hold on
% loglog(1./period, (vin/5-vout)./iout)
% 
% % ylim([1e-2,2e0])
% % title('Duty = 0.75')
% ylabel('Output impedance [$\Omega$]')
% xlabel('Switching frequency [Hz]')
%  
% set_figure_style();
% resize_figure(2);
% export_figure('plot_impedance_fibonacci_soft','pdf')



%% soft-charging, ditributed inductance

figure;
var_name = '4to1_doubler_distributed.mat';
load(var_name);
% loglog(freq, (vin.*-iin-vout.*iout),'s-')
% hold on
loglog(1./period, (vin/4-vout)./iout)

% ylim([1e-2,2e0])
% title('Duty = 0.75')
ylabel('Output impedance [$\Omega$]')
xlabel('Switching frequency [Hz]')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_impedance_fibonacci_distributed','pdf')


cascade