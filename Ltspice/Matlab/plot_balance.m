clc;
close all;
clear;
set_figure_style_pre();

%% Circuit parameter
fsw = 120e3;
Rload = [100 50 25 15 10 5 4];
Vin = 90;
duty = 0.25;
current = Vin*duty./Rload;


%% Calculate imablance
legend_info = {};
figure;
var_name = '7level_delay_3delay_2delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'s-')
legend_info{end+1} = 'delay = 3 ns, delay2 = 2 ns';
hold on;

var_name = '7level_delay_3delay_3delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'o-')
legend_info{end+1} = 'delay = 3 ns, delay2 = 3 ns';

var_name = '7level_delay_2delay_2delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'o-')
legend_info{end+1} = 'delay = 2 ns, delay2 = 2 ns';

var_name = '7level_delay_2delay_3delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'o-')
legend_info{end+1} = 'delay = 2 ns, delay2 = 3 ns';

ylabel('Voltage difference [V]')
xlabel('Load current [A]')
legend(legend_info,'Location','SouthWest')

set_figure_style();
resize_figure(2);
% export_figure('plot_balance','png')

%% Circuit parameter
fsw = 120e3;
Rload = [100 50 25 15 10 5];
Vin = 90;
duty = 0.25;
current = Vin*duty./Rload;


%% Calculate imablance, reverse order pwm
legend_info = {};
figure;
var_name = '7level_delay_reverse_3delay_2delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'s-')
legend_info{end+1} = 'delay = 3 ns, delay2 = 2 ns';
hold on;

var_name = '7level_delay_reverse_3delay_3delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'o-')
legend_info{end+1} = 'delay = 3 ns, delay2 = 3 ns';

var_name = '7level_delay_reverse_2delay_2delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'o-')
legend_info{end+1} = 'delay = 2 ns, delay2 = 2 ns';

var_name = '7level_delay_reverse_2delay_3delay2.mat';
load(var_name);
calculate_balance;
plot(current, v_diff,'o-')
legend_info{end+1} = 'delay = 2 ns, delay2 = 3 ns';

ylabel('Voltage difference [V]')
xlabel('Load current [A]')
legend(legend_info,'Location','SouthWest')

set_figure_style();
resize_figure(2);
% export_figure('plot_balance_reverse','png')