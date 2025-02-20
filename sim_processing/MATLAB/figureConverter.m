clc
clear
close all

% Define the folder where your .fig files are stored
figFolder = 'figures';
% Define the folder where you want to save the .eps files
epsFolder = 'figures\eps';

% Get a list of .fig files in the figFolder
figFiles = dir(fullfile(figFolder, '*.fig'));
% Debug print to confirm this line is reached
disp('Directory read complete.');
disp(['Number of .fig files found: ', num2str(length(figFiles))]);
% Loop through each .fig file
for k = 1:length(figFiles)
    disp(['Processing file ', num2str(k), ': ', figFiles(k).name]);
    % Construct the full file path
    figFilePath = fullfile(figFolder, figFiles(k).name);
    % Load the figure
    fig = openfig(figFilePath, 'invisible');
    % Construct the EPS file name
    [~, figName, ~] = fileparts(figFiles(k).name);
    epsFilePath = fullfile(epsFolder, [figName, '.eps']);
    % Save the figure as an EPS file
    saveas(fig, epsFilePath, 'epsc');
    % Close the figure
    close(fig);
end

disp('Conversion complete.');