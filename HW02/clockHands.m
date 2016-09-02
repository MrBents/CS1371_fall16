function [ new_hour, new_minutes ] = clockHands( cur_hour, cur_minutes, overtime )
% Calculates the hour
% Usage: clockHands(current_hour, current_minutes, extra_minutes)

% Accounting for the minutes
over = cur_minutes + overtime;

% Calculating extra hours
extra_hours = floor(over./60);


new_hour = mod(cur_hour + extra_hours, 12);
new_minutes = mod(cur_minutes + overtime, 60);

end

