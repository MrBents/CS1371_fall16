function out = checkCollision( board, direction )

[row, col] = find(board == max(max(board)));
[height, length] = size(board);

switch direction
    case 'N'
        if row - 1 < 1
            out = 'Oh no! Firewall!';
        elseif board(row - 1, col) == 0
            out = 'continue';
        elseif board(row - 1, col) < 0
            out = 'Cookie! Have a byte!';
        elseif board(row - 1, col) > 0
            out = 'You hit yourself. Stack overflow.';
        end
    case 'S'
        if board(row + 1, col) == 0
            out = 'continue';
        elseif row + 1 > height
            out = 'Oh no! Firewall!';
        elseif board(row + 1, col) < 0
            out = 'Cookie! Have a byte!';
        elseif board(row + 1, col) > 0
            out = 'You hit yourself. Stack overflow.';
        end
    case 'E'
        if board(row, col + 1) == 0
            out = 'continue';
        elseif col + 1 > length
            out = 'Oh no! Firewall!';
        elseif board(row, col  + 1) < 0
            out = 'Cookie! Have a byte!';
        elseif board(row, col  + 1) > 0
            out = 'You hit yourself. Stack overflow.';
        end
    case 'W'
        if col - 1 < 1
            out = 'Oh no! Firewall!';
        elseif board(row, col - 1) == 0
            out = 'continue';
        elseif board(row, col  - 1) < 0
            out = 'Cookie! Have a byte!';
        elseif board(row, col  - 1) > 0
            out = 'You hit yourself. Stack overflow.';
        end
end


end

