%%  only need to run for the first time

clear;
y=read_ltspice_waveform('4to1_soft.txt',3);
save('4to1_regulation_waveform.mat');