clc;
close all;
clear;
set_figure_style_pre();

%% Circuit parameter
fsw = 120e3;
Rload = [ 50 25 15 10 5 4 3 2];
Vin = 50;
duty = 0.25;
current = Vin*duty./Rload;


%% Calculate imablance

figure;
var_name = '3level_delay_3delay_0delay2.mat';
load(var_name);
calculate_balance_3level;
plot(current, v_diff,'s-')
hold on;

var_name = '3level_delay_3delay_1delay2.mat';
load(var_name);
calculate_balance_3level;
plot(current, v_diff,'o-')

var_name = '3level_delay_3delay_2delay2.mat';
load(var_name);
calculate_balance_3level;
plot(current, v_diff,'o-')

var_name = '3level_delay_3delay_3delay2.mat';
load(var_name);
calculate_balance_3level;
plot(current, v_diff,'o-')

ylabel('Voltage difference [V]')
xlabel('Load current [A]')
legend({'delay = 3 ns, delay2 = 0 ns','delay = 3 ns, delay2 = 1 ns', ...
    'delay = 3 ns, delay2 = 2 ns', 'delay = 3 ns, delay2 = 3 ns'}, ...
    'Location','SouthEast')
 
set_figure_style();
resize_figure(2);
% export_figure('plot_balance_3level','png')

return

%% Calculate imablance, reverse order pwm
figure;
var_name = '7level_delay_reverse_3delay_2delay2.mat';
load(var_name);
calculate_balance;

plot(current, v_diff,'s-')
hold on;

var_name = '7level_delay_reverse_3delay_3delay2.mat';
load(var_name);
calculate_balance;

plot(current, v_diff,'s-')

ylabel('Voltage difference [V]')
xlabel('Load current [A]')
legend({'delay = 3 ns, delay2 = 2 ns','delay = 3 ns, delay2 = 3 ns'},'Location','SouthEast')

set_figure_style();
resize_figure(2);
% export_figure('plot_balance_reverse','png')