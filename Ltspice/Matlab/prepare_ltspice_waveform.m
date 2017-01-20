%%  only need to run for the first time

y = read_ltspice_waveform(['../FCMC/7level_delay_reverse.txt']);
save('7level_delay_reverse_3delay_2delay2.mat','y');