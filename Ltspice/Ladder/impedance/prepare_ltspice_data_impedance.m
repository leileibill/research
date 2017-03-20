%%  only need to run for the first time
% clear;
% [period vout]=read_Ltspice_data('5to1_fibonacci_soft.log','vout');
% [period iout]=read_Ltspice_data('5to1_fibonacci_soft.log','iout');
% [period vin]=read_Ltspice_data('5to1_fibonacci_soft.log','vin');
% save('5to1_fibonacci_soft.mat');
% clear;
% [period vout]=read_Ltspice_data('Ladder_3to1_soft.log','vout');
% [period iout]=read_Ltspice_data('Ladder_3to1_soft.log','iout');
% [period vin]=read_Ltspice_data('Ladder_3to1_soft.log','vin');
% save('Ladder_3to1_hard.mat');

% clear;
[period vout]=read_Ltspice_data('Ladder_3to1_distributed.log','vout');
[period iout]=read_Ltspice_data('Ladder_3to1_distributed.log','iout');
[period vin]=read_Ltspice_data('Ladder_3to1_distributed.log','vin');
save('Ladder_3to1_distributed.mat');