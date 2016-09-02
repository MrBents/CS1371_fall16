function number = fib( index )
% calculates a fibonnaci number by index
% Usage: fib(index(int))
% returns: the 'index' fibonacci number

phi = (1+sqrt(5))/2;
number = round((phi.^index - (-phi).^(-index))./sqrt(5));


end

