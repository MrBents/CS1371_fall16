function [ positive_root, negative_root ] = quadSolver( a, b, c )

negative_root = round((-b - sqrt(b^2 - 4*a*c))/(2*a), 2);

positive_root = round((-b + sqrt(b^2 - 4*a*c))/(2*a), 2);


end

