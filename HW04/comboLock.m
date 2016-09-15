function [ pass ] = comboLock( combination, min, max )
% Returns true if combination is appropriate

answers = [];

% Getting amount of numbers
am_digits = sum(isstrprop(combination, 'digit'));
% Getting amount of letters
am_alpha = sum(isstrprop(combination, 'alpha'));
% Checking if more letters than digits and recording answer
answers(1) = (am_alpha > am_digits);

% Checking if at least one uppercase and recording answer
answers = [answers any(isstrprop(combination, 'upper'))];

% Checking for the summationf of numbers and recording answer
summation = sum(combination(isstrprop(combination, 'digit')) - 48);
answers = [answers (summation < max & summation > min)];

pass = all(answers);

end

