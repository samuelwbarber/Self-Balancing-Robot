function parsedData = ACtextParser(filename)
    % Read the file contents
    fileID = fopen(filename, 'r');
    data = textscan(fileID, '%s', 'Delimiter', '\n');
    fclose(fileID);
    
    % Extract the column headers
    colheader = strsplit(data{1}{1}, '\t');
    
    % Initialize arrays for magnitudes and phases
    numCols = length(colheader);
    numRows = length(data{1}) - 1;
    datamag = zeros(numRows, numCols);
    dataph = NaN(numRows, numCols); % Use NaN for phases to handle cases where phase is not applicable
    
    % Loop through each row and parse the data
    for i = 2:length(data{1})
        row = strsplit(data{1}{i}, '\t');
        for j = 1:numCols
            value = row{j};
            if j == 1
                % First column (Freq.) to be parsed as a single number
                mag = str2double(value);
                ph = NaN; % No phase for frequency
            else
                % Extract magnitude and phase from the format (magnitude dB, phase °)
                parts = regexp(value, '\(([+-]?\d\.\d+[eE][+-]?\d+)dB,([+-]?\d\.\d+[eE][+-]?\d+)°\)', 'tokens');
                if ~isempty(parts)
                    mag = str2double(parts{1}{1});
                    ph = str2double(parts{1}{2});
                else
                    mag = NaN;
                    ph = NaN;
                end
            end
            datamag(i-1, j) = mag;
            dataph(i-1, j) = ph;
        end
    end
    
    % Create the structure
    parsedData = struct();
    parsedData.datamag = datamag;
    parsedData.dataph = dataph;
    parsedData.colheader = colheader;
end
