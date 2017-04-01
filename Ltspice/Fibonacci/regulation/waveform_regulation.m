clc;
close all;
clear;
set_figure_style_pre;

load('5to1_fibonacci_regulation_waveform.mat');

%% plot waveforms

time = y.time*1e6;
vout = y.values(:,1);
vsw = y.values(:,2);
iL = y.values(:,3);


subplot(2,1,1)
plot(time,vsw)
hold on;
plot(time,vout,'--')
ylabel('Voltage [V]')
legend('$V_{sw}$','$V_{out}$','Location','SouthEast')
xlim([0 25])
ylim([-10 30])

subplot(2,1,2)
plot(time,iL)
legend('$i_{L}$','Location','SouthEast')
xlim([0 25])
ylim([4.5 5.5])


ylabel('Current [A]')
xlabel('Time [$\mu$s]')

set_figure_style()
resize_figure(2,0.85)
export_figure('waveform_regulation_fibo','pdf')