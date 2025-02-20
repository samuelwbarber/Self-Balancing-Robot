clc
close all
width = 900;
height = 600;

n = 1;

names = {"logic", "motors", "batt", "reg"};
col = [5, 4, 3, 3];
titles = {"Logic module current sensing circuit", "Motors module current sensing circuit", "Battery voltage measurement circuit", "Regulator voltage measurement circuit"};
ideal = [3, 2, 14.4, 5];
ideal_offset = [0, 0, 3.6, 1];
labels = {"Current draw [A]", "Current draw [A]", "Supply voltage [V]", "Supply voltage [V]"};
save_enable = true;

%% DC Analysis
LTdata_LM_DC = importdata(['data\LM324_', char(names{n}), 'DC.txt']);
LTdata_TLV_DC = importdata(['data\TLV2372_', char(names{n}), 'DC.txt']);

figure('Position', [100, 100, width, height])
tcl = tiledlayout('flow');

nexttile([4, 3])
hold on

m = 1.1 / ideal(n);
x_range = linspace(min([0, ideal(n)]), max([0, ideal(n)]) + ideal_offset(n), 1000);
y_range = m * x_range;

plot(x_range, y_range, 'k--', 'LineWidth', 1);
plot(LTdata_LM_DC.data(:,1), LTdata_LM_DC.data(:,col(n)), 'r', 'LineWidth', 2);
plot(LTdata_TLV_DC.data(:,1), LTdata_TLV_DC.data(:,col(n)), 'b', 'LineWidth', 2);

legend('Ideal', 'LM324', 'TLV2372', 'Location','best')
xlabel(char(labels{n}))
ylabel('Output voltage [V]')
title('DC Analysis')

%% AC Analysis
LTdata_LM_AC = ACtextParser(['data\LM324_', char(names{n}), 'AC.txt']);
LTdata_TLV_AC = ACtextParser(['data\TLV2372_', char(names{n}), 'AC.txt']);

% Correct phase wrapping
LTdata_LM_AC.dataph(:,col(n)) = unwrapPhase(LTdata_LM_AC.dataph(:,col(n)));
LTdata_TLV_AC.dataph(:,col(n)) = unwrapPhase(LTdata_TLV_AC.dataph(:,col(n)));

nexttile([2, 3])
hold on
plot(LTdata_LM_AC.datamag(:,1), LTdata_LM_AC.datamag(:,col(n)), 'r', 'LineWidth', 2);
plot(LTdata_TLV_AC.datamag(:,1), LTdata_TLV_AC.datamag(:,col(n)), 'b', 'LineWidth', 2);

title('AC Analysis')
legend('LM324', 'TLV2372', 'Location','best')
set(gca, 'XScale', 'log')
ylabel('Magnitude [dB]')

nexttile([2, 3])
hold on
plot(LTdata_LM_AC.datamag(:,1), LTdata_LM_AC.dataph(:,col(n)), 'r', 'LineWidth', 2);
plot(LTdata_TLV_AC.datamag(:,1), LTdata_TLV_AC.dataph(:,col(n)), 'b', 'LineWidth', 2);

legend('LM324', 'TLV2372', 'Location','best')
set(gca, 'XScale', 'log')
ylabel('Phase [°]')
xlabel('Frequency [Hz]')

title(tcl, char(titles{n}))

%% SAVING
if save_enable
    saveas(gcf, ['figures\', char(names{n}), '.fig']);
end