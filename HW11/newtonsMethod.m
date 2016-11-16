function [root, am_x] = newtonsMethod( xs, ys, startx )

co = polyfit(xs, ys, length(xs) - 1);

derivative = co;
%finding derivative
for i = 1:length(derivative)
    derivative(i)= derivative(i)*(length(derivative)-i);
end
derivative = derivative(1:end-1);
der = derivative;

starting_value = startx;
coeff = co;
%finding new x values
count = 0;
dif = 1;
while dif>0.0001
    new_x = starting_value - (polyval(coeff,starting_value)./polyval(derivative,starting_value));
    dif = abs(new_x - starting_value);
    count = count + 1;
    starting_value = new_x;
end
root = round(starting_value,4);
am_x = count-1;
end

