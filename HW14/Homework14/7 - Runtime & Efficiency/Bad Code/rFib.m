function [out] = rFib(n)

if n < 2
    out = n;
else
   out = rFib(n-2) + rFib(n-1);
end

end