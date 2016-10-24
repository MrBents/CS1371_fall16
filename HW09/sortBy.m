function out = sortBy( file, header )

[~, ~, fh] = xlsread(file);
direction = '';
copy = fh;

if all(isstrprop([fh{1,:}], 'alpha'))
    direction = 'horizontal';
    head_ind = find(strcmp([{fh{1, :}}], header));
    header = fh(1,:);
    fh(1,:) = [];
else
    direction = 'vertical';
    head_ind = find(strcmp(fh, header));
    header = fh(:,1);
    fh(:,1) = [];
end

[height, len] = size(fh);


if strcmp(direction, 'horizontal')
% Write logic for horizontal header
    if isa(fh{1, head_ind}, 'double')
        list = ones(height, 1);
        for i = 1:height
             list(i, 1) = fh{i, head_ind};
        end
    else
        list = {};
        for i = 1:height
             list{i, 1} = fh{i, head_ind};
        end
    end
    
    
    [list, idxs] = sort(list);
    
    fh(:, :) = fh(idxs,:);
    copy(2:end,:) = fh;
elseif strcmp(direction, 'vertical')
% Write logic for vertical header
    if isa(fh{head_ind, 1}, 'double')
        list = ones(1, len);
        for i = 1:len
             list(1, i) = fh{head_ind, i}; %% recalculate head_ind
        end
    else
        list = {};
        for i = 1:len
             list{1, i} = fh{head_ind, i}; %% recalculate head_ind
        end
    end
    
    [list, idxs] = sort(list);
    
    fh(:, :) = fh(:,idxs);
    copy(:, 2:end) = fh;
end

out = copy;
end

