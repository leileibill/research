clc;
close all;
clear;
% set_figure_style_pre();




%% Original waveform
figure;
var_name = '7level_delay_3delay_3delay2.mat';
load(var_name);

n = length(y);
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
resize_figure(2,1.5);

% export_figure('7level_delay','png')
return
%% Reversed PWM

figure;
var_name = '7level_delay_reverse_3delay_3delay2.mat';
load(var_name);

n = length(y);
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
resize_figure(2,1.5);

% export_figure('7level_delay_reverse','png')

