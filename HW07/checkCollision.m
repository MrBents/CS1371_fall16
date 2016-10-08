function out = checkCollision( board, direction )

[row, col] = find(board == max(max(board)));
[height, length] = size(board);

switch direction
    case 'N'
        if row - 1 < 1
            out = false;
        elseif board(row - 1, col) == 0
            out = true;
        elseif board(row - 1, col) < 0
            out = 'lollipop';
        elseif board(row - 1, col) > 0
            out = false;
        end
    case 'S'
        if row + 1 > height
            out = false;
        elseif board(row + 1, col) == 0
            out = true;
        elseif board(row + 1, col) < 0
            out = 'lollipop';
        elseif board(row + 1, col) > 0
            out = false;
        end
    case 'E'
        if col + 1 > length
            out = false;
        elseif board(row, col + 1) == 0
            out = true;
        elseif board(row, col  + 1) < 0
            out = 'lollipop';
        elseif board(row, col  + 1) > 0
            out = false;
        end
    case 'W'
        if col - 1 < 1
            out = false;
        elseif board(row, col - 1) == 0
            out = true;
        elseif board(row, col  - 1) < 0
            out = 'lollipop';
        elseif board(row, col  - 1) > 0
            out = false;
        end
end


end

