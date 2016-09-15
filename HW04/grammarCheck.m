function [ pass ] = grammarCheck( sentence )
% Checks for grammar

answers= [];

answers(1) = isstrprop(sentence(1), 'upper');
answers = [answers (sentence(end) == '.' | sentence(end) == '?' | sentence(end) == '!')];
answers = [answers strfind(sentence, 'UGA')];

pass = (length(answers) == 2 & all(answers));

end

