function out = whereIsMySuperSuit( full_cell, term_cell )
    
    len = length(term_cell);
    len2 = length(full_cell);
    for i = 1:len
        name = term_cell{i};
        for n = 1:len2
            if strcmp(name, full_cell{n}.Name)
                full_cell{n}.Status = 'Terminated';
                fn = fieldnames(full_cell{n});
                [r, x] = size(fn);
                for h = 1:r
                    if n == 1 && i == 8
                           'hello';
                    end
                   if (~strcmp(fn{h}, 'Status') && ~strcmp(fn{h}, 'Name')) && strcmp(name, full_cell{n}.Name)
                       
                       full_cell{n} = rmfield(full_cell{n}, fn(h));
                   end
                end
            end
        end
    end
    
    out = full_cell;


end

