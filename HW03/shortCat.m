function [ final_string ] = shortCat( str1, str2 )
% Concatenates two string accordingly

% Checking if str2 is longer than str1
delta1 = length(str2) - length(str1);   
delta1 = (delta1 + abs(delta1))/2;

% Checking if str1 is longer than str2
delta2 = length(str1) - length(str2);
delta2 = (delta2 + abs(delta2))/2;

% Concatenating
final_string = [str1(delta2 + 1:end) str2(delta1 + 1:end)];

end

