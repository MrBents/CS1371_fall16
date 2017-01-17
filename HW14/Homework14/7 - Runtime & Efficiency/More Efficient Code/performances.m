tic;
%subsetSum comparison
testVec = primes(10000);
testVec = testVec(4:end);
testVec = [2, testVec(1:floor(end/2)), 1, testVec((floor(end/2)+1):end), 3];
% s1_1 = toc*1000;
subsetSum(testVec, 6);
e1_1 = toc*1000;
s1_2 = toc*1000;
subsetSum_fast(testVec, 6);
e1_2 = toc*1000;
in = e1_2 - s1_2;
ef = e1_1 - s1_1;
p = ((in - ef)*100)/in;
sprintf('subsetSum: %d%%', p);

s1_1 = toc*1000;
fib(30);
e1_1 = toc*1000;
s1_2 = toc*1000;
fib_fast(30);
e1_2 = toc*1000;
in = e1_2 - s1_2;
ef = e1_1 - s1_1;
p = ((in - ef)*100)/in;
sprintf('subsetSum: %d%%', p);