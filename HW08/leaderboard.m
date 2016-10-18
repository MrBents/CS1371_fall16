function str = leaderboard( scoreboard, gtag, final_score )

% initializing scoreboard file
scoreh = fopen(scoreboard);
name = [scoreboard(1:end-4) '_updated.txt'];
scoreupd = fopen(name , 'w');

line_count = 0;
line = 0;
cur_score = NaN;

while ~feof(scoreh)
    line_count = line_count + 1;
   [gametag, score] = strtok(fgetl(scoreh), ',' );
   if strcmp(gtag, gametag)
    line = line_count;
    cur_score = str2num(score(2:end));
   end
end

fclose(scoreh);
scorehc = fopen(scoreboard, 'r');
domscore = max(cur_score, final_score);
domscore = domscore(1);

if line == 0
%  There is not an entry for the player
   entry = sprintf('%s,%d', gtag, final_score);
  
   for ind = 1:line_count + 1
       
       if ind == line_count + 1
           fprintf(scoreupd, entry);
       else
           lin = fgets(scorehc);
           if lin(end) ~= sprintf('\n')
              lin = [lin '\n']; 
           end
           fprintf(scoreupd, lin);
       end   
   end
   
elseif line > 0  
    
    entry = sprintf('%s,%d\n', gtag, domscore);
    for ind = 1:line_count 
        lin = fgets(scorehc);
        if ind == line
           fprintf(scoreupd, entry);
        
        elseif ind == line_count
           fprintf(scoreupd, lin(lin ~= sprintf('\n')));
        else
           fprintf(scoreupd, lin);
       end   
    end    
end
fclose('all');
updated = fopen(name);

if cur_score > final_score
    prefix = 'You did worse than last time! ';
elseif cur_score < final_score
    prefix = 'You beat your own highscore! ';
else
    prefix = [];
end

scores = [];
while ~feof(updated)
    [gtag, score] = strtok(fgetl(updated), ',');
    scores = [scores str2double(score(2:end))];
    
end

tie = [];
if sum(scores == domscore) > 1
% there is a tie
    num = sum(scores == domscore) - 1;
    rank = strfind(sort(scores, 'descend') == domscore, 1);
    rank = rank(1);
    tie = sprintf('You are tied with %d other player(s) for a rank of %d.', num, rank);
    str = [prefix tie];
    
elseif sum(scores == domscore) == 1
% you are the only occurrence of that score
    rank = strfind(sort(scores, 'descend') == domscore, 1);
    rank = rank(1);
    tie = sprintf('Your rank is %d.', rank);
    str = [prefix tie];
end

fclose('all');
end

