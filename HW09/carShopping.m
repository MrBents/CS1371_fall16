function out = carShopping( file, header , header2)

    [~, ~, fh] = xlsread(file);
    direction = '';
    copy = fh;

    if all(isstrprop([fh{1,:}], 'alpha') | [fh{1,:}] == ' ')
        direction = 'horizontal';
        head_ind = find(strcmp([{fh{1, :}}], header));
        header = fh(1,:);
        fh(1,:) = [];
    else
        direction = 'vertical';
        [~, head_ind] = find(strcmp(fh, header));
        header = fh(:,1);
        fh(:,1) = [];
    end

    [height, len] = size(fh);


    n = height;
    for j = 1:(n - 1)
        % Find jth smallest element
        imin = j;
        for i = (j + 1):n
            
            if (fh{i, head_ind} < fh{imin, head_ind})
                imin = i;
            end

        end

        % Put jth smallest element in place
        if (imin ~= j)
            fh = swap(fh,imin,j);
        end
    end
    wheaders = copy;
    copy = fh;

    [height, len] = size(copy);
    head_ind2 = find(strcmp([{wheaders{1, :}}], header2));

    qualifier = copy{height ,head_ind};
    qualifier2 = copy{height -1,head_ind};
    qualifier3 = copy{height -2,head_ind};
    
    for i = height:-1:1
       if ~(copy{i, head_ind} == qualifier || copy{i, head_ind} == qualifier2 || copy{i, head_ind} == qualifier3)
       copy(i, :) = [];
       end
    end
    
    
    [height, len] = size(copy);
    
    
    if height > 3
       copy(4:height, :) = []; 
    end
    
    copy(:, 1:end)=copy(end:-1:1,: );
    
    wheaders(5:end, :) = [];
    wheaders(2:end, :) = copy;
    out = wheaders;
end

function jh = swap(jh,i,j)
% Swap x(i) and x(j)
% Note: In practice, x xhould be passed by reference

val = jh(i, :);
jh(i, :) = jh(j, :);
jh(j, :) = val;

end


