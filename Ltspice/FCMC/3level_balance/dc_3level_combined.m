clc;
close all;
clear;
set_figure_style_pre();

%% Circuit parameters

L=10e-6;
C=2.2e-6;
Vin=50;
T=1/(120e3);
R=45e-3;
D=0.25;
Iload = 0.1:0.1:6;


dT_range = [3 2 1]*1e-9;

%% Calculated capacitor imbalance
for index = 1:length(dT_range)
    dT = dT_range(index);
    delta_V = - Iload*dT*48*L^2./(D^2*(3-2*D)*T^3*R);
    plot(Iload, delta_V)
    hold on;
end

L = 20e-6;
for index = 1:length(dT_range)
    dT = dT_range(index);
    delta_V = - Iload*dT*48*L^2./(D^2*(3-2*D)*T^3*R);
    plot(Iload, delta_V,'--')
    hold on;
end

ylabel('Capacitor imblance (V)')
xlabel('Load current (A)');

set_figure_style()
resize_figure()

%% Get data from Ltspice, Capacitor
figure
reset_figure_color;

load('3level_fsw120k_ESR45_L10u_C2u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2)
hold on;

load('3level_fsw120k_ESR45_L10u_C2u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2)

load('3level_fsw120k_ESR45_L10u_C2u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2)

% Get data from Ltspice, C = 4 u
reset_figure_color;

load('3level_fsw120k_ESR45_L10u_C4u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2,'--')
hold on;

load('3level_fsw120k_ESR45_L10u_C4u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2,'--')

load('3level_fsw120k_ESR45_L10u_C4u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2,'--')

% Get data from Ltspice, C = 8 u
reset_figure_color;

load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2,'-.')
load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2,'-.')
load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2,'-.')
load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_0n_0n.mat');
plot(iload, vc-vin/2,'-.')
ylabel('Capacitor imblance (V)')
xlabel('Load current (A)');
xlim([0 5])
title('Changing capacitor')
set_figure_style()
resize_figure()

%% Get data from Ltspice, Inductor
figure
reset_figure_color;

% Get data from Ltspice, L = 10u
reset_figure_color;

load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2,'-')
hold on;
load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2,'-')
load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2,'-')
load('3level_fsw120k_ESR45_L10u_C8u_duty0.25_0n_0n.mat');
plot(iload, vc-vin/2,'-')

% Get data from Ltspice, L = 20u
reset_figure_color;

load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2,'--')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2,'--')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2,'--')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_0n_0n.mat');
plot(iload, vc-vin/2,'--')
% Get data from Ltspice, L = 40u
reset_figure_color;

load('3level_fsw120k_ESR45_L40u_C8u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2,'-.')
load('3level_fsw120k_ESR45_L40u_C8u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2,'-.')
load('3level_fsw120k_ESR45_L40u_C8u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2,'-.')
load('3level_fsw120k_ESR45_L40u_C8u_duty0.25_0n_0n.mat');
plot(iload, vc-vin/2,'-.')

xlim([0 5])
title('Changing inductor')
set_figure_style()
resize_figure()

%% Get data from Ltspice, Duty
figure
reset_figure_color;

% Get data from Ltspice, duty = 0.25
reset_figure_color;

load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_3n_0n.mat');
plot(iload, vc-vin/2,'-')
hold on;
load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_2n_0n.mat');
plot(iload, vc-vin/2,'-')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_1n_0n.mat');
plot(iload, vc-vin/2,'-')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.25_0n_0n.mat');
plot(iload, vc-vin/2,'-')
% Get data from Ltspice, duty = 0.75
reset_figure_color;

load('3level_fsw120k_ESR45_L20u_C8u_duty0.75_3n_0n.mat');
plot(iload, vc-vin/2,'--')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.75_2n_0n.mat');
plot(iload, vc-vin/2,'--')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.75_1n_0n.mat');
plot(iload, vc-vin/2,'--')
load('3level_fsw120k_ESR45_L20u_C8u_duty0.75_0n_0n.mat');
plot(iload, vc-vin/2,'--')

ylabel('Capacitor imblance (V)')
xlabel('Load current (A)');
xlim([0 5])
title('Changing duty ratio')
set_figure_style()
resize_figure()

cascade()