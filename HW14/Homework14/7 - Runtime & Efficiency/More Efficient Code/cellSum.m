function out = cellSum( celda )

out = 0;

for idx = 1:length(celda)
    % Assign variable to avoid indexing unnecessarily
    temp = celda{idx};
    
    % Check for nested cells
    if isa(temp, 'cell')
        temp = temp{1};
        while isa(temp, 'cell')
            temp = temp{1};
        end
    end
    
    % Check if its a double and add to out respectively
    if isa(temp, 'double')
        % Add all its elements
        for ind = 1:length(temp)
           out = out + temp(ind); 
        end
    end
    
    

end

