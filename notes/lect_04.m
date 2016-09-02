% To create a vector:
vec = [3 45 pi 13 22];

% To get length
len = length(vec);

% To index (indexing starts at 1)
firstelement = vec(1);

% Colon operator
c1 = 3:12;
c2 = 3:2:12; % Here we define a step

%linspace function (vector made of --> from 3 to 13 in 10 steps)
ln = linspace(3, 13, 10);

% Zeros function (zeros matrix of 1 row and 10 cols)
z = zeros(1, 10);

% rand function (random numbers matrix of 1 row and 10 cols)
rn = rand(1, 10);

ri = randi([-100 100], 1, 10);

% indexing with a vector of indexes
dis = ri([3 8 1 2 2 2 2 2 2 2 2 2 2 2 2 2 9 4]);