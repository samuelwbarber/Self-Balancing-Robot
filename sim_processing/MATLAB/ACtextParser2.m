function parsedData = ACtextParser2(filename)
    % Read the file contents
    fileID = fopen(filename, 'r');
    
    % Extract the column headers
    headerLine = fgetl(fileID);
    colheader = strsplit(headerLine, '\t');
    
    % Determine the number of columns
    numCols = length(colheader);
    
    % Define the format string for textscan
    formatSpec = '%f'; % First column is frequency
    for i = 2:numCols
        formatSpec = strcat(formatSpec, ' (%f dB,%f°)');
    end
    
    % Read the data using textscan
    data = textscan(fileID, formatSpec, 'Delimiter', '\t', 'HeaderLines', 1)
    fclose(fileID);
    
    % Initialize arrays for magnitudes and phases
    numRows = length(data{1});
    datamag = zeros(numRows, numCols);
    dataph = NaN(numRows, numCols); % Use NaN for phases to handle cases where phase is not applicable
    
    % Assign the frequency column
    datamag(:, 1) = data{1};
    
    % Assign the magnitude and phase data
    colIndex = 2;
    for i = 2:numCols
        datamag(:, i) = data{colIndex};
        dataph(:, i) = data{colIndex + 1};
        colIndex = colIndex + 2;
    end
    
    % Create the structure
    parsedData = struct();
    parsedData.datamag = datamag;
    parsedData.dataph = dataph;
    parsedData.colheader = colheader;
end
