% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Copyright 2025 Michael Koefinger, Dominik Brandstetter
% 
% Licensed under the Apache License, Version 2.0 (the "License");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%     http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an "AS IS" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Reset
clc; clear all; 
close all;

%% Specs
fs = 2e6;
tstep = 1/fs;
Vrefp = 1.5;
Vrefn = 0;
Vref = (Vrefp-Vrefn);
amplitude = Vref;
fsig = 1e3;
offset = 0;
tstop = 2/fsig;
nbits = 1;
lsb_intadc = (Vrefp-Vrefn)/2.^(nbits);
vmin = Vrefn;
vmax = Vrefp;
vmin1 = vmin+Vref/4;
vmax1 = vmax+Vref/4;
vmax2 = vmax1;
vmin2 = vmin1;
vmin3 = -Vref+lsb_intadc;
vmax3 = Vref+lsb_intadc;
%% Start Simulink
out = sim("./pipeadc_3b_model.slx");
%% Assemble bits
D2 = uint8(out.D2_0.Data-out.D2_1.Data+1);
D2 = bitshift(D2,1);
D1 = uint8(out.D1_0.Data-out.D1_1.Data+1);
D0 = uint8(out.D0.Data);
do_sig = D2+D1+D0;
%% Plot
figure;
sgtitle("3-bit Pipeline ADC")
hold on
subplot(4,1,1)
subtitle("1. Stage")
hold on
plot(out.sig, '--b')
plot(out.D2_0, '-xb')
plot(out.D2_1, '-*g')
plot(out.A2, '-k')
legend("Input","Comp_{High}", "Comp_{Low}", "DAC")
ylabel("Magnitude (V)")
xlabel("Time (s)")
set(gca,'FontSize',12)
grid on
subplot(4,1,2)
subtitle("2. Stage")
hold on
plot(out.sig, '--b')
plot(out.residue1, '-.r', 'LineWidth', 2)
plot(out.D1_0, '-xb')
plot(out.D1_1, '-*g')
plot(out.A1, '-k')
legend("Input", "Residue", "Comp_{High}", "Comp_{Low}", "DAC")
ylabel("Magnitude (V)")
xlabel("Time (s)")
set(gca,'FontSize',12)
grid on
subplot(4,1,3)
subtitle("3. Stage")
hold on
plot(out.sig, '--b')
plot(out.residue2, '-.r', 'LineWidth', 2)
plot(out.D0, '-xb')
legend("Input", "Residue", "ADC")
ylabel("Magnitude (V)")
xlabel("Time (s)")
set(gca,'FontSize',12)
grid on
subplot(4,1,4)
subtitle("Conversion Result")
hold on
plot(out.sig.Time, do_sig, '-.r', 'LineWidth', 2)
legend("Code")
ylabel("Code")
xlabel("Time (s)")
set(gca,'FontSize',12)
grid on