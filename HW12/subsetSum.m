function [cond, vec] = subsetSum( vector, target )
    vec = [];
    cond = false;
 if target == 0
     cond = true;
 else
     for i = 2:2^length(vector)
         ind = logical(de2bi(i - 1, length(vector), 2, 'left-msb'));
         if sum(vector(ind)) == target
             vec = vector(ind);
             cond = true;
         end
     end
 end
 
end



% if target == 0
%      cond = true;
%      vec = [];
%  elseif ~isempty(vector) && sum(vector) ~= target
%      for i = 2:(length(vector))
%      subsetSum([vector(1:i - 2), vector(i:end)], target);
%      end
%      
%  elseif sum(vector) == target
%      condition = true;
%      vectuas = vector;
%      return
%  else
%      cond = true;
%      vec = vector;
%  end
