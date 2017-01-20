clc;
close all;
clear;
% set_figure_style_pre();


var_name = '7level_delay_3delay_2delay2.mat';

%%  only need to run for the first time

y = read_ltspice_waveform(['../FCMC/7level_delay.txt']);
save(var_name,'y');

%%
load(var_name);

n = length(y);

%% Original waveform
ha = tight_subplot(n,1,0.05,0.1,0.1)

for index = 1:n
    plot(ha(index),y(index).time*1e6, y(index).value)

    ylabel(ha(index),'$V_{out}$ [V]')
    legend(ha(index),y(index).info,'Location','NorthEast')
end
    xlabel('Time [$\mu$s]')
% ylim([0,15])
% xlim([0,6])


set_figure_style();
resize_figure(3,1.5);
% export_figure('7level_delay_EPC_Rgate1','png')

%% Calculate imablance
figure;
fsw = 120e3;
Rload = [100 50 25 10 5];
Vin = 90;
duty = 0.25;
current = Vin*duty./Rload

v_low = [];
v_high = [];
v_diff = [];
for index = 1:n
    v_low(end+1) = interp1(y(index).time,y(index).value,6e-6)
    v_high(end+1) = interp1(y(index).time,y(index).value,6e-6 + 1/6/fsw)

    v_diff(end+1) = v_high(end) - v_low(end);
end

plot(current, v_diff,'s-')

ylabel('Voltage difference [V]')
xlabel('Load current [A]')

set_figure_style();
resize_figure(2);