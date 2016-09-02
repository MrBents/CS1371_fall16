function amount_spheres = spherePacking( radius, cube_length )
% Calculates the amount of sphere that can fit in a cube considering radius
% and side length
% Usage: spherePacking(radius, cube_length)

%calculate sphere volume
sphere_volume = (4.* pi.* radius.^3)./3;
%calculate cube volume
cube_volume = cube_length.^3;

%calculate capacity volume
cube_capacity = cube_volume.* 0.74048;

%check how many spheres fit in the capacity volume
amount_spheres = floor(cube_capacity./sphere_volume);


end

