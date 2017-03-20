clc;
close all;
clear;
set_figure_style_pre();



%% Duty = 0.75

figure;
var_name = '4level_input_cap_L0.5u_Iload4_duty0.75_0n_0n.mat';
load(var_name);
plot(cin*1e6, vc1./vin,'s-')
hold on;
plot(cin*1e6, vc2./vin,'s-')
% var_name = '3level_input_cap_L0.1u_C30u_duty0.75_0n_0n.mat';
% load(var_name);
% plot(iload, vc./vin,'s-')
% 
% var_name = '3level_input_cap_L0.01u_C30u_duty0.75_0n_0n.mat';
% load(var_name);
% plot(iload, vc./vin,'s-')
% 
% var_name = '3level_input_cap_L0.0u_C30u_duty0.75_0n_0n.mat';
% load(var_name);
% plot(iload, vc./vin,'s--')
% 
% var_name = '3level_delay_3delay_3delay2.mat';
% load(var_name);
% calculate_balance_3level;
% plot(current, v_diff,'o-')

title('Duty = 0.75')
ylabel('Normalized Cap Voltage')
xlabel('Input capacitor [$\mu$F]')
% legend('L=1u, C=30u', 'L=0.1u, C=30u', 'L=0.01u, C=30u', ...
%         'Voltage source', ...
%     'Location','West')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_balance_3level_input_cap_d75','png')

return
%% Duty = 0.25

figure;
var_name = '3level_input_cap_L1.0u_C30u_duty0.25_0n_0n.mat';
load(var_name);
plot(iload, vc./vin,'s-')
hold on;

var_name = '3level_input_cap_L0.1u_C30u_duty0.25_0n_0n.mat';
load(var_name);
plot(iload, vc./vin,'s-')

var_name = '3level_input_cap_L0.01u_C30u_duty0.25_0n_0n.mat';
load(var_name);
plot(iload, vc./vin,'s-')

var_name = '3level_input_cap_L0.0u_C30u_duty0.25_0n_0n.mat';
load(var_name);
plot(iload, vc./vin,'s--')
% 

title('Duty = 0.25')
ylabel('Normalized Cap Voltage')
xlabel('Load Current [A]')
legend('L=1u, C=30u', 'L=0.1u, C=30u', 'L=0.01u, C=30u', ...
        'Voltage source', ...
    'Location','NorthWest')
 
set_figure_style();
resize_figure(2);
export_figure('plot_balance_3level_input_cap_d25','png')

cascade