function out = lostAbroad( map, directions )
    sentence = [];

    for i = 1:length(directions)-1
        lc = i;
        spx = directions(1, lc);
        spy = directions(2, lc);

        sentence = [sentence map(spx, spy)];

        next_coordx = directions(1, lc + 1);
        next_coordy = directions(2, lc + 1);

        deltax = next_coordx - spx;
        deltay = next_coordy - spy;
        
        if deltax == 0 && deltay == 0
            map(spx, spy)
            sentence = [sentence map(spx, spy)];
        elseif deltax == 0
            maxit = deltay;
        elseif deltay == 0
            maxit = deltax;
        end

        negative = maxit < 0;
        if abs(maxit) ~= 1
            for j = 1:abs(maxit)-1

                if negative
                   j = -j; 
                end

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
    sentence = [sentence map(directions(1, end), directions(2, end))];

    if sum(sentence == '#') > 0
        out = 'No record of this person exists. -Government';
        return
    elseif sentence(end) ~= '*'
        out = 'I am lostAbroad and can''t find my friends.';
    else
        out = sentence(1 : end -1);
    end
end
