function out = funn(int)
  
    lastnum = mod(int, 10);
    rem = int - lastnum;
    firstnum = rem/10;
    if firstnum > 9
        out =  funn(firstnum) + lastnum;
    else
        out = firstnum + lastnum;
    end
end