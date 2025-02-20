clc
close all
width = 600;
height = 500;

n = 1;

names = {"logic", "motors", "batt", "reg"};
col = [3, 4, 3, 3];
titles = {"Electromagnet circuitry", "Motors module current sensing", "Battery voltage measurement", "Regulator voltage measurement"};
ideal = [3, 2, 14.4, 5];
ideal_offset = [0, 0, 3.6, 1];
labels = {"Current draw [A]", "Current draw [A]", "Supply voltage [V]", "Supply voltage [V]"};
save_enable = true;

%% AC Analysis
LTdata_AC = ACtextParser('data\EmagCircuitV2Rolando.txt');

% Correct phase wrapping
LTdata_AC.dataph(:,col(n)) = unwrapPhase(LTdata_AC.dataph(:,col(n)));

figure('Position', [100+width, 100, width, height])
tcl = tiledlayout(2,1,'TileSpacing','compact');

nexttile
hold on
plot(LTdata_AC.datamag(:,1), LTdata_AC.datamag(:,col(n)), 'LineWidth', 2);

title([char(titles{n}), ' (AC analysis)'], 'FontSize', 12)
set(gca, 'XScale', 'log')
ylabel('Magnitude [dB]')

nexttile
hold on
plot(LTdata_AC.datamag(:,1), LTdata_AC.dataph(:,col(n)), 'LineWidth', 2);

set(gca, 'XScale', 'log')
ylabel('Phase [°]')

xlabel(tcl, 'Frequency [Hz]')

if save_enable
    saveas(gcf, 'figures\emagACSweep.fig');
    print("Figure saved");
end