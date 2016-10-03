function [ max, rec ] = yahtzee( pattern )

pattern = sort(pattern);
mr = mode(pattern);
consec = diff(pattern);
tempstr = 'I have a %s!';
points = 0;


% yahtzee, small and large straight
if ((pattern(1) + 1 == pattern(2)) && (pattern(2) + 1 == pattern(3)) && (pattern(3) + 1 == pattern(4)) && (pattern(4) + 1 == pattern(5)))
    points = 40;
    rec = sprintf(tempstr, 'Large Straight');
elseif ((pattern(1) + 1 == pattern(2)) && (pattern(2) + 1 == pattern(3)) && (pattern(3) + 1 == pattern(4))) || ((pattern(2) + 1 == pattern(3)) && (pattern(3) + 1 == pattern(4)) && (pattern(4) + 1 == pattern(5)))
    points = 30;
    rec = sprintf(tempstr, 'Small Straight');
elseif sum(consec) == 0
    points = 50;
    rec = 'YAHTZEE!';
end

% full house
notpat = pattern(~(pattern == mr));
if (abs(sum((pattern == mr)-1)) == 2 && (notpat(1) == notpat(2)))
    points = 25;
    rec = sprintf(tempstr, 'Full House');
end

% 3 and 4 of a kind
if (points < sum(pattern))
    if  (sum(pattern == mr) == 4)
        points = sum(pattern);
        rec = sprintf(tempstr, '4 of a Kind');
    elseif sum(pattern == mr) == 3
        points = sum(pattern);
        rec = sprintf(tempstr, '3 of a Kind');
    end
end


if points == 0
    rec = 'I have a Chance :(';
    points = sum(pattern);
end

max = points;
end

