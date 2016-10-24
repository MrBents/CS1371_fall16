function out = sortBy2( file, header )

[~, ~, fh] = xlsread(file);
direction = '';
copy = fh;

if all(isstrprop([fh{1,:}], 'alpha'))
    direction = 'horizontal';
    head_ind = mod(find(strcmp(fh, header)), 50);
    header = fh(1,:);
    fh(1,:) = [];
else
    direction = 'vertical';
    head_ind = find(strcmp(fh, header));
    header = fh(:,1);
    fh(:,1) = [];
end



end
