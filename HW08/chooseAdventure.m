function chooseAdventure( start_fil )

fhi = fopen(start_fil, 'r');
fho = fopen([start_fil(1:end-4) '_chAdv.txt'], 'w');
thereis = true;

linehop = 1;
charhop = 1;
storyf = [];

while thereis
    story = [];
    lc = 1;
    % hop lines
    if linehop > 1
        for ind = 1:linehop - 1
           fgets(fhi); 
        end
        linehop = 1;
    end
    while ~feof(fhi)
        lin = fgets(fhi);
        
        % accounting for the character hops
        if lc == 1
            lin = lin(charhop:end);
            lc = lc + 1;
            charhop = 1;
        end
        
        story = [story lin];
    end
    
    if length(strfind(story, '<')) >= 1
        %record filename, line# & char#
        ind1 = strfind(story, '<');
        ind2 = regexp(story, '\|[0-9\r\n]+\|');
        ind3 = regexp(story, '\|[0-9\r\n]+>');
        ind4 = regexp(story, '>');
        
        storyf = [storyf story(1:ind1-1)];
         if storyf(end) ~= sprintf('\n')
              storyf = [storyf sprintf('\n')];
         end
        fname = strtrim(story(ind1 + 1:ind2 - 1));
        fname = fname(isstrprop(fname, 'alpha') | fname == '.');
        fhi = fopen(fname, 'r');
        linehop = strtrim(story(ind2 + 1:ind3 - 1));
        linehop = str2double(linehop(isstrprop(linehop, 'digit')));
        charhop = strtrim(story(ind3 + 1:ind4 - 1));
        charhop = str2double(charhop(isstrprop(charhop, 'digit')));
    else
        storyf = [storyf story];
        thereis = false;
    end
       
end
storyf = [storyf '\n'];
fprintf(fho, storyf);

end

