function [ out ] = moveSnake(board, moves)
    length(moves)
%   loop once for every move
    for i = 1:length(moves)
        verdict = checkCollision(board, moves(i));
%       if we crash onto a wall or ourselves end the game
        if verdict == false
             out = 'Game Over!';
             return;
%       if all clear then move
        elseif verdict == true
            board = makeMoves(board, moves(i), 'move');
%       if there's a cookie, grow
        elseif strcmp(verdict,'lollipop')
            board = makeMoves(board, moves(i), 'grow');
            board = spawnCookie(board);
            
        end
    end
    out = board;
end

function new_map = makeMoves(bd, move, type)

%   getting head of snake
    maxvar = max(max(bd));
    
    [rows, cols] = find(bd);
%   getting coords of head
    [row_top, col_top] = find(bd == maxvar);
    
    
    switch move
        case 'E'
            col_top = col_top + 1;
        case 'W'
            col_top = col_top - 1;
        case 'N'
            row_top = row_top - 1;
        case 'S'
            row_top = row_top + 1;
    end
    new_coords = [row_top, col_top];
    
    if strcmp(type,'move')
        for j = 1:length(rows)
%           get current coords
            [rowz, colz] = find(bd == maxvar - (j - 1));
%           turn space behind 1 into 0
            if maxvar - (j - 1) == 1
                bd(rowz, colz) = 0;
            end
%           exchange values from old to new coords
            bd(new_coords(1), new_coords(2)) = maxvar - (j - 1);
%           get new coords
            new_coords = [rowz, colz];
        end
        new_map = bd;
    elseif strcmp(type,'grow')
%       assign the cookie location a value of maxvar + 1
        bd(new_coords(1), new_coords(2)) = maxvar + 1;
        new_map = bd;
    end
end


