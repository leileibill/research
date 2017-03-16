%%  only need to run for the first time
clear;
[iload vc]=read_Ltspice_data('3level_input_cap.log','vc1');
[iload vin]=read_Ltspice_data('3level_input_cap.log','vin');
save('3level_input_cap_L0.01u_C30u_duty0.75_0n_0n.mat');