apple_test = isequal(badApples(100, 111, 33, 32), badApples_soln(100, 111, 33, 32));
fib_test = isequal(fib(11), fib_soln(11));
sphere_test = isequal(spherePacking(3, 17), spherePacking_soln(3, 17));
clock_test = isequal(clockHands(1, 10, -134), clockHands_soln(1, 10, -134));
clock_test_2 = isequal(clockHands(1, 45, -55), clockHands_soln(1, 45, -55));
clock_test_3 = isequal(clockHands(4, 45, -30), clockHands_soln(4, 45, -30));
clock_test_4 = isequal(clockHands(3, 15, 10), clockHands_soln(3, 15, 10));