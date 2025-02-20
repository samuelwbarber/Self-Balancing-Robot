clc
close all
clear all

load('scatterPlot1.mat')
load('scatterPlot2.mat')

save_enable = true;

%% Scatter plot 1
figure('Position', [100, 100, 700, 500])
hold on

plot(scatterPlot1.real, scatterPlot1.measured1, 'o-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor','[0 0.4470 0.7410]')
plot(scatterPlot1.real, scatterPlot1.measured2, 'o-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor','[0.8500 0.3250 0.0980]')
plot(scatterPlot1.real, scatterPlot1.measured3, 'o-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor','[0.9290 0.6940 0.1250]')

legend('Trial 1', 'Trial 2', 'Trial 3', 'Location', 'best')
xlabel('Real distance [cm]')
ylabel('Measured distance [cm]')
title('Computer vision - measured key distances 1')

hold off

if save_enable
    saveas(gcf, 'figures\scatterPlot1.fig');
end

%% Scatter plot 2
figure('Position', [800, 300, 700, 500])
hold on

plot(scatterPlot2.real, scatterPlot2.measured1, 'o-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor','[0 0.4470 0.7410]')
plot(scatterPlot2.real, scatterPlot2.measured2, 'o-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor','[0.8500 0.3250 0.0980]')
plot(scatterPlot2.real, scatterPlot2.measured3, 'o-', 'LineWidth', 1, 'MarkerSize', 6, 'MarkerFaceColor','[0.9290 0.6940 0.1250]')

legend('Trial 1', 'Trial 2', 'Trial 3', 'Location', 'best')
xlabel('Real distance [cm]')
ylabel('Measured distance [cm]')
title('Computer vision - measured key distances 2')

hold off

if save_enable
    saveas(gcf, 'figures\scatterPlot2.fig');
end