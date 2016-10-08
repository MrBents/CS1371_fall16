secret_test_1 = isequal(secretMessage('Ite(rat)ion i(s) the most (c)r(a)zy thi(n)g we''ve (learn)ed (to) u(s)e (in) this class, so (g)ood!'),secretMessage_soln('Ite(rat)ion i(s) the most (c)r(a)zy thi(n)g we''ve (learn)ed (to) u(s)e (in) this class, so (g)ood!'));
secret_test_2 = isequal(secretMessage('T(he) semester (is) going by so (fa)st, whe(r)e did (the) time disappea(r)?'),secretMessage_soln('T(he) semester (is) going by so (fa)st, whe(r)e did (the) time disappea(r)?'));
secret_test_3 = isequal(secretMessage('I t(hi)nk cake is (de)licious, but I (al)so (l)ike to eat cauli(flower) (s)alad'),secretMessage_soln('I t(hi)nk cake is (de)licious, but I (al)so (l)ike to eat cauli(flower) (s)alad'));

prime_test_1 = isequal(primeFinder(1), primeFinder_soln(1));
prime_test_2 = isequal(primeFinder(2), primeFinder_soln(2));
prime_test_3 = isequal(primeFinder(17), primeFinder_soln(17));
prime_test_4 = isequal(primeFinder(18), primeFinder_soln(18));

load('moveSnake_studentCases.mat');
snake_test_1 = isequal(moveSnake(board1, seq1), moveSnake_soln(board1, seq1));
snake_test_2 = isequal(moveSnake(board2, seq2), moveSnake_soln(board2, seq2));
snake_test_3 = isequal(moveSnake(board3, seq3), moveSnake_soln(board3, seq3));

load('map.mat')
lost_test_1 = isequal(lostAbroad(map1, [1, 1, 3, 3, 4; 4, 5, 5, 6, 6]), lostAbroad_soln(map1, [1, 1, 3, 3, 4; 4, 5, 5, 6, 6]));
lost_test_2 = isequal(lostAbroad(map1, [1, 4, 4; 1, 1, 6]), lostAbroad_soln(map1, [1, 4, 4; 1, 1, 6]));
lost_test_3 = isequal(lostAbroad(map2, [1, 2, 2, 7, 7, 9, 9, 7, 7; 7, 7, 12, 12, 10, 10, 9, 9, 6]), lostAbroad_soln(map2, [1, 2, 2, 7, 7, 9, 9, 7, 7; 7, 7, 12, 12, 10, 10, 9, 9, 6]));
lost_test_4 = isequal(lostAbroad(map2, [12, 8, 8, 8, 8, 6, 6, 6, 15; 6, 6, 10, 5, 3, 3, 4, 11, 11]), lostAbroad_soln(map2, [12, 8, 8, 8, 8, 6, 6, 6, 15; 6, 6, 10, 5, 3, 3, 4, 11, 11]));