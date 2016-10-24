function thing = partyPlanner( fil )

fh = fopen(fil);
list = {};

while ~feof(fh)
    item = fgetl(fh);
    [height, len] = size(list);
    inlist = false;
    
    for i = 1:height
        if strcmp(list{i, 1},item)
           list{i, 2} = list{i, 2} + 1;
           inlist = true;
        end
    end
    
    if inlist == false
       list{height + 1, 1} = item;
       list{height + 1, 2} = 1;
    end    
end

[height, len] = size(list);
max = 0;
maxitem = '';
for i = 1:height
    if list{i, 2} > max
        max = list{i, 2};
        maxitem = list{i, 1};
    end
end

thing = maxitem;

end

