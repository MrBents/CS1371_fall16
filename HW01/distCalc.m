function [ output ] = distCalc( a_x, a_y, b_x, b_y)

% gets distance using pythagorean theorem and rounds to the nearest
% thousands
output = round(sqrt((b_x - a_x).^2 + (b_y - a_y).^2), 3);

end

