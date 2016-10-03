slap_test_1 = isequal(ERS([5, 2, 13, 12]), ERS_soln([5, 2, 13, 12]));
slap_test_2 = isequal(ERS([6, 1, 9, 11, 9]), ERS_soln([6, 1, 9, 11, 9]));
slap_test_3 = isequal(ERS([10, 2, 5, 3, 7, 5]), ERS_soln([10, 2, 5, 3, 7, 5]));

load('student.mat');

collision_test_1 = isequal(checkCollision(board_small, 'E'), checkCollision_soln(board_small, 'E'));
collision_test_2 = isequal(checkCollision(board_large, 'S'), checkCollision_soln(board_large, 'S'));
collision_test_3 = isequal(checkCollision(board_large, 'W'), checkCollision_soln(board_large, 'W'));

rpsls_test_1 = isequal(rpsls('spock', 'rock'), rpsls_soln('spock', 'rock'));
rpsls_test_2 = isequal(rpsls('lizard', 'scissors'), rpsls_soln('lizard', 'scissors'));
rpsls_test_3 = isequal(rpsls('paper', 'paper'), rpsls_soln('paper', 'paper'));

yatze_test_1 = isequal(yahtzee([1 6 6 4 6]), yahtzee_soln([1 6 6 4 6]));
yatze_test_2 = isequal(yahtzee([4 2 5 3 6]), yahtzee_soln([4 2 5 3 6]));
yatze_test_3 = isequal(yahtzee([2 2 2 2 2]), yahtzee_soln([2 2 2 2 2]));
yatze_test_4 = isequal(yahtzee([5 5 6 6 6]), yahtzee_soln([5 5 6 6 6]));



load('ABCs_conditionals_rubrica.mat');
[A, B, C, D] = ABCs_conditionals(in1,in2,in3);


load('ERS_rubrica.mat');
slap1 = isequal(ERS(in1), ERS_soln(in1));
slap2 = isequal(ERS(in2), ERS_soln(in2));
slap3 = isequal(ERS(in3), ERS_soln(in3));

load('yahtzee_rubrica.mat');
score1 = isequal(yahtzee(in1),yahtzee_soln(in1));
score2 = isequal(yahtzee(in2),yahtzee_soln(in2));
score3 = isequal(yahtzee(in3),yahtzee_soln(in3));


load('rpsls_rubrica.mat');
game1 = isequal(rpsls(in1, in2), rpsls_soln(in1, in2));
game2 = isequal(rpsls(in3, in4), rpsls_soln(in3, in4));
game3 = isequal(rpsls(in5, in6), rpsls_soln(in5, in6));

load('checkCollision_rubrica.mat');
result1a = isequal(checkCollision(in1, in2), checkCollision_soln(in1, in2));
result2a = isequal(checkCollision(in3, in4), checkCollision_soln(in3, in4));
result3a = isequal(checkCollision(in5, in6), checkCollision_soln(in5, in6));