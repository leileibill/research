%%  only need to run for the first time

y = read_ltspice_waveform(['../FCMC/3level_delay.txt']);
save('3level_delay_3delay_0delay2.mat','y');