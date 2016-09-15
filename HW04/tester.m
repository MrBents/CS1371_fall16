grammar_test_1 = isequal(grammarCheck('Now that I''ve written this function, I''ll never need to proofread again!'), grammarCheck_soln('Now that I''ve written this function, I''ll never need to proofread again!'));
grammar_test_2 = isequal(grammarCheck('heyy will you come over and help me with my MATLAB homework?'), grammarCheck_soln('heyy will you come over and help me with my MATLAB homework?'));
grammar_test_3 = isequal(grammarCheck('I''m so happy I chose to go to Tech instead of UGA.'), grammarCheck_soln('I''m so happy I chose to go to Tech instead of UGA.'));

lock_test_1 = isequal(comboLock('GPBurdell1885', 20, 30), comboLock_soln('GPBurdell1885', 20, 30));
lock_test_2 = isequal(comboLock('teXas123', 15, 16), comboLock_soln('teXas123', 15, 16));
lock_test_3 = isequal(comboLock('lCfYyt71254982', 30, 40), comboLock_soln('lCfYyt71254982', 30, 40));

sentences = load('sentences.mat');
sentence1 = sentences.sentence1;
sentence2 = sentences.sentence2;
sentence3 = sentences.sentence3;

dict = load('dictionary.mat');
dictionary = dict.dictionary;
nouns = dict.nouns;
verbs = dict.verbs;
adjectives = dict.adjectives;

gibberish_test_1 = isequal(gibberish(sentence1, dictionary, nouns, verbs, adjectives), gibberish_soln(sentence1, dictionary, nouns, verbs, adjectives));
gibberish_test_2 = isequal(gibberish(sentence2, dictionary, nouns, verbs, adjectives), gibberish_soln(sentence2, dictionary, nouns, verbs, adjectives));
gibberish_test_3 = isequal(gibberish(sentence3, dictionary, nouns, verbs, adjectives), gibberish_soln(sentence3, dictionary, nouns, verbs, adjectives));

criminal_test_1 = isequal(criminalMinds([true], [true], [false], [true]), criminalMinds_soln([true], [true], [false], [true]));
criminal_test_2 = isequal(criminalMinds([true false false true true], [false true true true false], [false true true true false], [false true true true false]), criminalMinds_soln([true false false true true], [false true true true false], [false true true true false], [false true true true false]));
criminal_test_3 = isequal(criminalMinds([true true true false], [true true true false], [true true true false], [true true false false]), criminalMinds_soln([true true true false], [true true true false], [true true true false], [true true false false]));