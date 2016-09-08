function [ number ] = word2int( word )
% Encodes word
% Usage: word2int(string)

word_vec = double(word);
index_vec = 131.^((1:length(word))-1);
number = sum(index_vec.*word_vec);

end

