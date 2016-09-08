varInfo_test_1 = isequal(varInfo('I love MATLAB!'), varInfo_soln('I love MATLAB!'));
varInfo_test_2 = isequal(varInfo(34), varInfo_soln(34));
varInfo_test_3 = isequal(varInfo(1:4), varInfo_soln(1:4));

word2int_test_1 = isequal(word2int('Hello'), word2int_soln('Hello'));
word2int_test_2 = isequal(word2int('z'), word2int_soln('z'));
word2int_test_3 = isequal(word2int('test'), word2int_soln('test'));

shortCat_test_1 = isequal(shortCat('Hello', 'MATLAB'), shortCat_soln('Hello', 'MATLAB'));
shortCat_test_2 = isequal(shortCat('race', 'car'), shortCat_soln('race', 'car'));
shortCat_test_3 = isequal(shortCat('cart', 'esian'), shortCat_soln('cart', 'esian'));

weave_test_1 = isequal(weave([72 87 32], [84 101 97]), weave_soln([72 87 32], [84 101 97]));
weave_test_2 = isequal(weave([109 32 62 62 32], [84 101 115]), weave_soln([109 32 62 62 32], [84 101 115]));
weave_test_3 = isequal(weave([116 32], [84 101 97 109 33]), weave_soln([116 32], [84 101 97 109 33]));

checkContour_test_1 = isequal(checkContour([1, 2, 3], [2, 3, 4]), checkContour_soln([1, 2, 3], [2, 3, 4]));
checkContour_test_2 = isequal(checkContour([-3, 0, -10], [0, 2, 3]), checkContour_soln([-3, 0, -10], [0, 2, 3]));
checkContour_test_3 = isequal(checkContour([3, 0, 3], [10, -10, 10]), checkContour_soln([3, 0, 3], [10, -10, 10]));