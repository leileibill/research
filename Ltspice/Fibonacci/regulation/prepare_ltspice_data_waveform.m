%%  only need to run for the first time

clear;
y=read_ltspice_waveform('5to1_fibonacci_soft.txt',3);
save('5to1_fibonacci_regulation_waveform.mat');