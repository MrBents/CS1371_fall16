function [ out ] = moveSnake(board, moves)
    length(moves)
    for i = 1:length(moves)
        verdict = checkCollision(board, moves(i));
        if verdict == false
             out = 'Game Over!';
             return;
        elseif verdict == true
            board = makeMoves(board, moves(i), 'move');
        elseif strcmp(verdict,'lollipop')
            board = makeMoves(board, moves(i), 'grow');
            board = spawnCookie(board);
            
        end
    end
    out = board;
end

function new_map = makeMoves(bd, move, type)
    [maxvar, indx] = max(max(bd));
    snake = [1:maxvar];
    
    [rows, cols] = find(bd);
    
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
            [rowz, colz] = find(bd == maxvar - (j - 1));
            if maxvar - (j - 1) == 1
                bd(rowz, colz) = 0;
            end
            bd(new_coords(1), new_coords(2)) = maxvar - (j - 1);
            new_coords = [rowz, colz];
        end
        new_map = bd;
    elseif strcmp(type,'grow')
        bd(new_coords(1), new_coords(2)) = maxvar + 1;
        new_map = bd;
    end
end


