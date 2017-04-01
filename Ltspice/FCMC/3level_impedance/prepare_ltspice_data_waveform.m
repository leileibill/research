%%  only need to run for the first time

clear;
y=read_ltspice_waveform('3level_waveform_distributed.txt','step',2);
save('3level_waveform_distributed.mat');