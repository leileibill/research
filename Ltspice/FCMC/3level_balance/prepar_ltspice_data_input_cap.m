%%  only need to run for the first time
clear;
[cin vc]=read_Ltspice_data('3level_input_cap.log','vc1');
[cin vin]=read_Ltspice_data('3level_input_cap.log','vin');
condition = '3level_input_cap_Lin0.1u_Lout1000u_Iload4_duty0.75_0n_0n_vs_cin'
save('3leve_balance_vs_cin_Lout1000u_duty0.75.mat');


% clear;
% [iload vc]=read_Ltspice_data('3level_input_cap.log','vc1');
% [iload vin]=read_Ltspice_data('3level_input_cap.log','vin');
% condition = '3level_input_cap_Lin0.1u_Lout100u_Iload4_duty0.75_0n_0n_vs_cin'
% save('3leve_balance_vs_cin_Lout100u_duty0.75.mat');