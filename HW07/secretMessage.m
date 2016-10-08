function [ message ] = secretMessage( secret )

open = strfind(secret, '(');
close = strfind(secret, ')');

message = [];
for idx = 1:length(open)
   message = [message secret(open(idx) + 1:close(idx) - 1)];
end


end

