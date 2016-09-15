function [ pass ] = gibberish( sentence, dictionary, noun_list, verb_list, adjective_list);
% doesnt check for anything that makes any sense
answers = [];
% Checking if function approves the word
answers(1) = grammarCheck_soln(sentence);

sentence = lower(sentence);

[word1, remain] = strtok(sentence, ' ');
[word2, remain] = strtok(remain, ' ');
word3 = remain(1: end - 1);

% Checking if words are in dictionary
answers = [answers (isnumeric(strfind(dictionary, word1)) & isnumeric(strfind(dictionary, word2)) & isnumeric(strfind(dictionary, word3)))];

% Checking for type of word pattern
pattern1 = [(length((strfind(noun_list, word1))) > 0) (length((strfind(verb_list, word2))) > 0) ((length((strfind(noun_list, word3))) > 0) | (length((strfind(adjective_list, word3))) > 0)) ];
pattern2 = [((length((strfind(adjective_list, word1))) > 0) | (length((strfind(verb_list, word1))) > 0)) (length((strfind(noun_list, word2))) > 0) ((length((strfind(noun_list, word3))) > 0) | (length((strfind(verb_list, word3))) > 0)) ];

answers = [answers (all(pattern1) | all(pattern2))];

pass = all(answers);

end

