%%  only need to run for the first time
% clear;
% [period vout]=read_Ltspice_data('4to1_doubler_distributed.log','vout');
% [period iout]=read_Ltspice_data('4to1_doubler_distributed.log','iout');
% [period vin]=read_Ltspice_data('4to1_doubler_distributed.log','vin');
% save('4to1_doubler_distributed.mat');
% clear;
% [period vout]=read_Ltspice_data('4to1_doubler_distributed.log','vout');
% [period iout]=read_Ltspice_data('4to1_doubler_distributed.log','iout');
% [period vin]=read_Ltspice_data('4to1_doubler_distributed.log','vin');
% save('4to1_doubler_distributed.mat');

clear;
[period vout]=read_Ltspice_data('4to1_doubler_soft.log','vout');
[period iout]=read_Ltspice_data('4to1_doubler_soft.log','iout');
[period vin]=read_Ltspice_data('4to1_doubler_soft.log','vin');
save('4to1_doubler_hard.mat');