function out = lostAbroad( map, directions )
    sentence = [];

%   for every coordinate in directions
    for i = 1:length(directions)-1
        lc = i;
%       get start coordinates
        spx = directions(1, lc);
        spy = directions(2, lc);
        
%       add letter at that location
        sentence = [sentence map(spx, spy)];
%       get next coordinate
        next_coordx = directions(1, lc + 1);
        next_coordy = directions(2, lc + 1);
%       compute distance difference between start and future coords
        deltax = next_coordx - spx;
        deltay = next_coordy - spy;
        
%       compute on which axis is the difference  
        if deltax == 0 && deltay == 0
            sentence = [sentence map(spx, spy)];
        elseif deltax == 0
            maxit = deltay;
        elseif deltay == 0
            maxit = deltax;
        end
        
        negative = maxit < 0;
        if abs(maxit) ~= 1
%           for every unit of difference loop once
            for j = 1:abs(maxit)-1

                if negative
                   j = -j; 
                end
%               add letters on the way to coords
                if deltay == 0
                    l = map(spx + j, spy);
                    sentence = [sentence map(spx + j, spy)];
                elseif deltax == 0
                    l = map(spx, spy + j);
                    sentence = [sentence map(spx, spy + j)];
                end  
            end
        end
    end
%   add last coord (which is excluded in the looping)
    sentence = [sentence map(directions(1, end), directions(2, end))];

%   create sentence according to specs
    if sum(sentence == '#') > 0
        out = 'No record of this person exists. -Government';
        return
    elseif sentence(end) ~= '*'
        out = 'I am lostAbroad and can''t find my friends.';
    else
        out = sentence(1 : end -1);
    end
end

