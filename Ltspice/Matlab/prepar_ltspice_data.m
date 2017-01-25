%%  only need to run for the first time
clear;
[fsw rout]=read_Ltspice_data('../Series-Parallel\4to1_hard_charging.log','rout');
[fsw ploss]=read_Ltspice_data('../Series-Parallel\4to1_hard_charging.log','ploss');
save('4to1_hard_charging_025duty_12u_10u_8u.mat');