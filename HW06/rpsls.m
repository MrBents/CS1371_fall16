function out = rpsls( p1, p2 )

switch p1
    case 'rock'
        p1 = 0;
    case 'spock'
        p1 = 1;
    case 'paper'
        p1 = 2;
    case 'lizard'
        p1 = 3;
    otherwise
        p1 = 4;
end

switch p2
    case 'rock'
        p2 = 0;
    case 'spock'
        p2 = 1;
    case 'paper'
        p2 = 2;
    case 'lizard'
        p2 = 3;
    otherwise
        p2 = 4;
end

result = mod((p1 - p2), 5);

if result == 1 || result == 2
    out = 'Player 1 wins!';
elseif result == 3 || result == 4
    out = 'Player 2 wins!';
else
    out = 'It''s a tie!';
end

