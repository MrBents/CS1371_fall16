function output  = filterData( original )

med = median(original);
q1 = median(original(original<med));
q3 = median(original(original>med));
q3 = q3 + (isnan(q1))*2.5;
q1(isnan(q1))=2.5;
IQR = q3 - q1;
fp = q3 + 1.5*IQR;
sp = q1 - 1.5*IQR;

original(original >= fp | original <= sp) = med;

output = original;

end

