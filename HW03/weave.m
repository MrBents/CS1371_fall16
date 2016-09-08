function [ v3 ] = weave( v1, v2 )
% Weaves two vectors
% Usage: weave(vector1, vector2)

len = max(length(v1), length(v2)) * 2;

% Checking if vec2 is longer than vec1
delta1 = length(v2) - length(v1);   
delta1 = (delta1 + abs(delta1))/2;
v1 = [v1 (v1(end) + 1):(v1(end) + delta1)];


% Checking if vec1 is longer than vec2
delta2 = length(v1) - length(v2);
delta2 = (delta2 + abs(delta2))/2;
v2 = [v2 (v2(end) + 1):(v2(end) + delta2)];


v3 = ones(1, len);

v3(1:2:end) = v1;
v3(2:2:end) = v2;



end

