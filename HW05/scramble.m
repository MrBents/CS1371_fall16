function out = scramble( chars, word )
jose = chars;
chars(:, 1) = jose(:, end);
chars(:, end) = jose(:, 1);
chars = chars';
chars = reshape(chars, 1, []);
amount = num2str(length(strfind(lower(chars), lower(word))));
out = [amount, ' instances of ', word, ' found.'];



end

