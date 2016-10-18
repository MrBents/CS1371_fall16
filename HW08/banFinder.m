function banFinder( fname, func )
% open file
fhandler = fopen(fname, 'r');
% keep track of how many times function is called
count = 0;
pattern = ['(\ |^)' func '('];

while ~feof(fhandler)
    sent = fgets(fhandler);
    if isempty(strfind(sent, '%'))
        if ~isempty(regexp(sent, pattern))
            count = count + length(regexp(sent, pattern));
        end
    end
end

if count == 0
    sent = ['The ' func ' function was not used.\nPass.'];
    out_file = fopen([fname(1: end - 4) 'Result.txt'], 'w');
    fprintf(out_file, sent);
elseif count > 0 
    sent = ['The ' func ' function was used ' num2str(count) ' time(s).\nFail.'];
    out_file = fopen([fname(1: end - 4) 'Result.txt'], 'w');
    fprintf(out_file, sent);
end

end

