clc;
close all;
clear;
set_figure_style_pre;

load('3level_waveform_distributed.mat');

%% plot waveforms



%% below critical frequency
time = y(1).time*1e6;
vGate = y(1).values(:,1);
iL = y(1).values(:,2);

subplot(2,3,1)
plot(time,vGate)
title('$f_{sw} = \frac{1}{2}f_{crit}$')
% ylabel('Voltage [V]')
legend('Gate signal','Location','SouthEast')
xlim([0 30])
ax = gca;
ylim([-1 1.5])
ax.YTick = [0 1]
ax.YTickLabels ={'Off','On'}

subplot(2,3,4)
plot(time,iL)
legend('$i_{L}$','Location','SouthEast')
xlim([0 30])
% ylim([4.5 5.5])

ylabel('Current [A]')
xlabel('Time [$\mu$s]')


%% At critical frequency
time = y(2).time*1e6;
vGate = y(2).values(:,1);
iL = y(2).values(:,2);

subplot(2,3,2)

plot(time,vGate)
title('$f_{sw} = f_{crit}$')
% ylabel('Voltage [V]')
legend('Gate signal','Location','SouthEast')
xlim([0 15])
ax = gca;
ylim([-1 1.5])
ax.YTick = [0 1]
ax.YTickLabels ={'Off','On'}

subplot(2,3,5)
plot(time,iL)
legend('$i_{L}$','Location','SouthEast')
xlim([0 15])
% ylim([4.5 5.5])

ylabel('Current [A]')
xlabel('Time [$\mu$s]')

%% At critical frequency
time = y(3).time*1e6;
vGate = y(3).values(:,1);
iL = y(3).values(:,2);

subplot(2,3,3)
plot(time,vGate)
title('$f_{sw} = 2f_{crit}$')
% ylabel('Voltage [V]')
legend('Gate signal','Location','SouthEast')
xlim([0 7.5])
ax = gca;
ylim([-1 1.5])
ax.YTick = [0 1]
ax.YTickLabels ={'Off','On'}

subplot(2,3,6)
plot(time,iL)
legend('$i_{L}$','Location','SouthEast')
xlim([0 7.5])
% ylim([4.5 5.5])

ylabel('Current [A]')
xlabel('Time [$\mu$s]')

%%
set_figure_style()
resize_figure(3,0.4)
export_figure('waveform_distributed','pdf')