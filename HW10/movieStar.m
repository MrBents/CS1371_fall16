function [ name, money, rat ] = movieStar( in )
len = length(in);
actors = struct;

for i = 1:len
   
   cur = in(i);
   profit = cur.Revenue - cur.Budget;
   act_len = length(cur.Cast);
   money = 0 + (profit > 0) * ((profit)/act_len);
   rating = cur.Bad_Vegetable_Score;
   nc = sum(strcmp(cur.Cast, 'Nicolas Cage')) > 0;
   for n = 1:act_len
      name = cur.Cast{n}; 
      tempn = name(isstrprop(name, 'alpha'));
      if isfield(actors, tempn)
        actors.(tempn).money = actors.(tempn).money + money;
        if ~nc
        actors.(tempn).rating = actors.(tempn).rating + rating;
        actors.(tempn).mov_am = actors.(tempn).mov_am + 1; 
        end
      else
        actors.(tempn).name = name;
        actors.(tempn).money = money;
        if ~nc
        actors.(tempn).rating = rating;
        actors.(tempn).mov_am = 1;
        else
        actors.(tempn).rating = 0;
        actors.(tempn).mov_am = 0;
        end
      end
   end
end

fn = fieldnames(actors);
maxAct = actors.(fn{1});
name = actors.(fn{1}).name;
for i = 1:length(fn)
    names = sort({name, actors.(fn{i}).name});
    if actors.(fn{i}).money > maxAct.money && ~strcmp(actors.(fn{i}).name, 'Nicolas Cage')
        maxAct = actors.(fn{i});
        name = maxAct.name;
    elseif (actors.(fn{i}).money == maxAct.money) && ~strcmp(names{1}, name) && ~strcmp(actors.(fn{i}).name, 'Nicolas Cage')
        name = names{1};
        maxAct = actors.(fn{i});
    end
end

money = maxAct.money;
rat = round(maxAct.rating/maxAct.mov_am, 2);

end

