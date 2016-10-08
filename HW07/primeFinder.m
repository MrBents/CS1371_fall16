function out = primeFinder( num )

count = 0;

for idx = 1:round(sqrt(num))
    if mod(num , idx) == 0
       count = count + 1; 
    end
end

if num == 1
    out = false;
else
    out = isequal(count, 1);    
end


end

