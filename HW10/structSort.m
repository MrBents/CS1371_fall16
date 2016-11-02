function out = structSort( in )

a = fieldnames(in);
val = cellfun(@(x) numel(x),a);
cat = a(val==max(val));
cat = cat{1};
list = [];
if isa(in(1, 1).(cat), 'char')
    list = {in(1, :).(cat)};
    list =  cellfun(@(x) numel(x),list);
else
    for i = 1:length(in);
    list(i) = length(in(1, i).(cat));
    end
end
[~, idxs] = sort(list, 'descend');


out = in(1, idxs);
end

