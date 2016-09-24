function out = elephantCase( sentence )

str = lower(sentence(isstrprop(sentence, 'alpha') | sentence == ' '));

% Advanced method for obtaining 3 character strings
% pattern = '(\ |^)[a-zA-Z]{3}(\ |$)';
% matchstr = regexp(str, pattern);

% Getting Spaces indexes and adding imaginary spaces index in beggining and end
spaces = [0 strfind(str, ' ') length(str)+1];
% Getting distance between spaces
lengths = diff(spaces);
% Checking which words are three letters long
idxs = strfind(lengths, 4);
last_word = length(str(spaces(end): end));

% str(end) = (last_word == 3) * upper(str(end));

str(spaces(idxs) + 1) = upper(str(spaces(idxs) + 1));
str(spaces(idxs) + 3) = upper(str(spaces(idxs) + 3));

elephant_idx = strfind(str, 'elephant');
str(elephant_idx:(elephant_idx + 7)) = upper(str(elephant_idx:(elephant_idx + 7)));

str = [str '!'];
out = str;

end

