%%  only need to run for the first time
clear;
[cin vc1]=read_Ltspice_data('4level_input_cap.log','vc1ave');
[cin vc2]=read_Ltspice_data('4level_input_cap.log','vc2ave');
[cin vin]=read_Ltspice_data('4level_input_cap.log','vin');
save('4level_input_cap_L0.5u_Iload4_duty0.75_0n_0n.mat');