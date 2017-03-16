%%  only need to run for the first time
% clear;
% [freq vout]=read_Ltspice_data('3level_impedance.log','vout');
% [freq iout]=read_Ltspice_data('3level_impedance.log','iout');
% [freq vin]=read_Ltspice_data('3level_impedance.log','vin');
% [freq iin]=read_Ltspice_data('3level_impedance.log','iin');
% [freq pout]=read_Ltspice_data('3level_impedance.log','pout');
% save('3level_impedance_soft.mat');

clear;
[freq vout]=read_Ltspice_data('3level_impedance_distributed.log','vout');
[freq iout]=read_Ltspice_data('3level_impedance_distributed.log','iout');
[freq vin]=read_Ltspice_data('3level_impedance_distributed.log','vin');
[freq iin]=read_Ltspice_data('3level_impedance_distributed.log','iin');
[freq pout]=read_Ltspice_data('3level_impedance_distributed.log','pout');
save('3level_impedance_distributed.mat');