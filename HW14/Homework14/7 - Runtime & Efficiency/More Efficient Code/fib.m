function out = fib(n)
    firstnum = 1;
    num = 0;
    for i = 1:n
        temp = num;
        num = num + firstnum;
        firstnum = temp;   
    end
 
out = num;

end

