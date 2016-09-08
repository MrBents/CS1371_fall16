function output = varInfo( input )
% Analyzes variable type and value
% Usage: varInfo(char vector or int vector)

% getting type
type = class(input);

% getting value
value = num2str(input);

% creating output string
output = sprintf('This variable is of class %s and has a value of ''%s''.', type, value);


end

