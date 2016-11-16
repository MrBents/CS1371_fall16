function str = cellCat( arr )

str = '';

for i = 1:length(arr)
    if isa(arr{i}, 'cell')
        str = [str cellCat(arr{i})];
    elseif isa(arr{i}, 'char')
        str = [str arr{i}];
    end
end

end


