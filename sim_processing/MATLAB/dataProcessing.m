clc
close all
width = 600;
height = 500;

n = 4;

names = {"logic", "motors", "batt", "reg"};
col = [5, 4, 3, 3];
titles = {"Logic module current sensing", "Motors module current sensing", "Battery voltage measurement", "Regulator voltage measurement"};
ideal = [3, 2, 14.4, 5];
ideal_offset = [0, 0, 3.6, 1];
labels = {"Current draw [A]", "Current draw [A]", "Supply voltage [V]", "Supply voltage [V]"};
save_enable = false;

%% DC Analysis
LTdata_LM_DC = importdata(['data\LM324_', char(names{n}), 'DC.txt']);
LTdata_TLV_DC = importdata(['data\TLV2372_', char(names{n}), 'DC.txt']);

figure('Position', [100, 100, width, height])
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
title([char(titles{n}), ' (DC analysis)'], 'FontSize', 12)

if save_enable
    saveas(gcf, ['figures\', char(names{n}), '_dc.fig']);
    
end

%% AC Analysis
LTdata_LM_AC = ACtextParser(['data\LM324_', char(names{n}), 'AC.txt']);
LTdata_TLV_AC = ACtextParser(['data\TLV2372_', char(names{n}), 'AC.txt']);

% Correct phase wrapping
LTdata_LM_AC.dataph(:,col(n)) = unwrapPhase(LTdata_LM_AC.dataph(:,col(n)));
LTdata_TLV_AC.dataph(:,col(n)) = unwrapPhase(LTdata_TLV_AC.dataph(:,col(n)));

figure('Position', [100+width, 100, width, height])
tcl = tiledlayout(2,1,'TileSpacing','compact');

nexttile
hold on
plot(LTdata_LM_AC.datamag(:,1), LTdata_LM_AC.datamag(:,col(n)), 'r', 'LineWidth', 2);
plot(LTdata_TLV_AC.datamag(:,1), LTdata_TLV_AC.datamag(:,col(n)), 'b', 'LineWidth', 2);

title([char(titles{n}), ' (AC analysis)'], 'FontSize', 12)
legend('LM324', 'TLV2372', 'Location','best')
set(gca, 'XScale', 'log')
ylabel('Magnitude [dB]')

nexttile
hold on
plot(LTdata_LM_AC.datamag(:,1), LTdata_LM_AC.dataph(:,col(n)), 'r', 'LineWidth', 2);
plot(LTdata_TLV_AC.datamag(:,1), LTdata_TLV_AC.dataph(:,col(n)), 'b', 'LineWidth', 2);

legend('LM324', 'TLV2372', 'Location','best')
set(gca, 'XScale', 'log')
ylabel('Phase [°]')

xlabel(tcl, 'Frequency [Hz]')

if save_enable
    saveas(gcf, ['figures\', char(names{n}), '_ac.fig']);
    print("Figure saved");
end