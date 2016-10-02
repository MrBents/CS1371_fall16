function [ up_array, sentence ] = priorities( chars )
jose = chars;
chars(1:end/2, 1:end/2) = jose(end/2 + 1:end, end/2 + 1:end);
chars((end/2 + 1):end, (end/2 + 1):end) = jose(1:end/2, 1:end/2);
chars(1, :) = upper(chars(1, :));
chars = chars';
frow = chars(1, :);
sentence = ['My top priority is ' frow];
up_array = chars;


end

