function [ length_b, length_c ] = ASA( angle_B, length_a, angle_C)

% getting the missing angle by substracting the two known angles to 180 (total sum of angles)
angle_A = 180 - angle_B - angle_C;

% getting length for side a
length_b = round((length_a * sind(angle_B))/sind(angle_A), 2);
% getting length for side b
length_c = round((length_a * sind(angle_C))/sind(angle_A), 2);

end

