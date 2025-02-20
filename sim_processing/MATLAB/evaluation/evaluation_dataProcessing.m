clc
close all
clear all

load('dataCurr.mat')
load('dataBatt.mat')
load('dataReg.mat')

save_enable = true;
R_sense = 0.01;

%% Logic voltage drop evaluation
figure
hold on

plot([0 3], [0 1.1], 'k--', 'LineWidth', 1)
plot(dataCurr.dv_logic(1:9)/R_sense, dataCurr.out_logic(1:9), 'bo-', 'LineWidth', 2, 'MarkerSize', 3, 'MarkerFaceColor','blue')

legend('Ideal (within useful range)', 'Measured', 'Location','best')
xlabel('Current draw [A]')
ylabel('Output voltage [V]')
title('Logic module current sensing circuit evaluation')

% Extract measured current draws and corresponding output voltages
current_draw = dataCurr.dv_logic(1:8) / R_sense;
measured_voltages = dataCurr.out_logic(1:8);

% Calculate ideal voltages based on the linear relationship given by the plot ([0 3], [0 1.1])
ideal_voltages = current_draw * (1.1 / 3);

% Calculate the error
error = abs(measured_voltages - ideal_voltages);

% Calculate the error percentage
error_percentage = (error ./ ideal_voltages) * 100;

% Calculate mean and standard deviation of the error percentage
mean_error_percentage = mean(error_percentage);
std_error_percentage = std(error_percentage);

% Display the results
disp(['Logic - Mean Error Percentage: ', num2str(mean_error_percentage)]);
disp(['Logic - Standard Deviation of Error Percentage: ', num2str(std_error_percentage)]);

if save_enable
    saveas(gcf, 'figures\logicEval.fig');
end

%% Motors voltage drop evaluation
figure
hold on

plot([0 2], [0 1.1], 'k--', 'LineWidth', 1)
plot(dataCurr.dv_motors/R_sense, dataCurr.out_motors, 'o-', 'LineWidth', 2, 'MarkerSize', 3)

legend('Ideal (within useful range)', 'Measured', 'Location','best')
xlabel('Current draw [A]')
ylabel('Output voltage [V]')
title('Motors module current sensing circuit evaluation')

% Extract measured current draws and corresponding output voltages
current_draw = dataCurr.dv_motors / R_sense;
measured_voltages = dataCurr.out_motors;

% Calculate ideal voltages based on the linear relationship given by the plot ([0 2], [0 1.1])
ideal_voltages = current_draw * (1.1 / 2);

epsilon = 1e-2; % Small positive number
ideal_voltages(ideal_voltages < epsilon) = epsilon;

% Calculate the error
error = abs(measured_voltages - ideal_voltages);

% Calculate the error percentage
error_percentage = (error ./ ideal_voltages) * 100;

% Calculate mean and standard deviation of the error percentage
mean_error_percentage = mean(error_percentage);
std_error_percentage = std(error_percentage);

% Display the results
disp(['Motors - Mean Error Percentage: ', num2str(mean_error_percentage)]);
disp(['Motors - Standard Deviation of Error Percentage: ', num2str(std_error_percentage)]);

if save_enable
    saveas(gcf, 'figures\motorsEval.fig');
end

%% Battery evaluation
figure
hold on

plot([0 18], [0 1.1], 'k--', 'LineWidth', 1)
plot(dataBatt.TestCircuitBattVoltage-0.02, dataBatt.OutputBattVoltageMeasurement+0.06, 'ro-', 'LineWidth', 2, 'MarkerSize', 3, 'MarkerFaceColor','red')

legend('Ideal (within useful range)', 'Measured', 'Location','best')
xlabel('Battery input voltage [V]')
ylabel('Output voltage [V]')
title('Battery voltage measurement circuit evaluation')

% Extract measured current draws and corresponding output voltages
current_draw = dataBatt.TestCircuitBattVoltage-0.02;
measured_voltages = dataBatt.OutputBattVoltageMeasurement+0.06;

% Calculate ideal voltages based on the linear relationship given by the plot ([0 3], [0 1.1])
ideal_voltages = current_draw * (1.1 / 18);

% Calculate the error
error = abs(measured_voltages - ideal_voltages);

% Calculate the error percentage
error_percentage = (error ./ ideal_voltages) * 100;

% Calculate mean and standard deviation of the error percentage
mean_error_percentage = mean(error_percentage);
std_error_percentage = std(error_percentage);

% Display the results
disp(['Battery - Mean Error Percentage: ', num2str(mean_error_percentage)]);
disp(['Battery - Standard Deviation of Error Percentage: ', num2str(std_error_percentage)]);

if save_enable
    saveas(gcf, 'figures\battEval.fig');
end

%% Regulator evaluation
figure
hold on

plot([0 6], [0 1.1], 'k--', 'LineWidth', 1)
plot(dataReg.TestCircuitSupplyVoltage, dataReg.OutputRegulatorVoltageMeasurement, 'go-', 'LineWidth', 2, 'MarkerSize', 3, 'MarkerFaceColor','green')

legend('Ideal (within useful range)', 'Measured', 'Location','best')
xlabel('Regulator input voltage [V]')
ylabel('Output voltage [V]')
title('Regulator voltage measurement circuit evaluation')

% Extract measured current draws and corresponding output voltages
current_draw = dataReg.TestCircuitSupplyVoltage;
measured_voltages = dataReg.OutputRegulatorVoltageMeasurement;

% Calculate ideal voltages based on the linear relationship given by the plot ([0 3], [0 1.1])
ideal_voltages = current_draw * (1.1 / 6);

% Calculate the error
error = abs(measured_voltages - ideal_voltages);

% Calculate the error percentage
error_percentage = (error ./ ideal_voltages) * 100;

% Calculate mean and standard deviation of the error percentage
mean_error_percentage = mean(error_percentage);
std_error_percentage = std(error_percentage);

% Display the results
disp(['Regulator - Mean Error Percentage: ', num2str(mean_error_percentage)]);
disp(['Regulator - Standard Deviation of Error Percentage: ', num2str(std_error_percentage)]);

if save_enable
    saveas(gcf, 'figures\regEval.fig');
end