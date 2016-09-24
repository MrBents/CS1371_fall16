function [ unweighted, weighted ] = multTable( original )

% Getting height and length
[height, length] = size(original);
% Creating first row
c1 = [1:length];
% Creating first column
c2 = [1:height]';
% Creating control matrix
control = c2*c1;
% Creating a correct question mask
overall = original == control;
% Getting weighted average
unweighted = round((sum(sum(overall))/(height * length)) * 100, 4);
% Getting unweighted average
weighted = round((sum(original(original==control)/sum(sum(control))))*100, 4);


end

