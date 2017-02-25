%%  only need to run for the first time
clear;
[iload vc]=read_Ltspice_data('3level_delay.log','vc1');
[iload vin]=read_Ltspice_data('3level_delay.log','vin');
save('3level_fsw120k_ESR45_L20u_C8u_duty0.75_0n_0n.mat');