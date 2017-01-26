%%  only need to run for the first time
clear;
[fsw rout]=read_Ltspice_data('4to1_soft_charging.log','rout');
[fsw ploss]=read_Ltspice_data('4to1_soft_charging.log','ploss');
save('4to1_soft_charging_05duty_10u_10u_10u.mat');