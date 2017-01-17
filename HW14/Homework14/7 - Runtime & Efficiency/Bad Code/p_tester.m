
tic;

s1 = toc*1000;
rFib(30);
e1 = toc*1000;

s2 = toc*1000;
fib_fixed(30);
e2 = toc*1000;

in = (e1 - s1);
ef = (e2 - s2);
% ef2 = (e3 - s3);

((in - ef)*100)/in

