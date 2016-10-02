function  out = puzzleBox( arr, row_shift, col_shift )

[rows_1, columns_1] = size(arr);

rows = row_shift(1:(end - 1));
rshift = row_shift(end);

cols = col_shift(1:(end - 1));
cshift = col_shift(end);

shift_column = mod(cshift, rows_1);
shift_rows = mod(rshift, columns_1);

rows_selected = arr(rows, :);
n_rows1 = rows_selected(1 : end, end-shift_rows+1:end);
n_rows2 = rows_selected(1:end, 1:end-shift_rows);
f_rows = horzcat(n_rows1, n_rows2);

arr(rows, :) = f_rows;

columns_selected = arr(:, cols);
n_columns1 = columns_selected(end-shift_column+1:end,:);
n_columns2 = columns_selected(1:end-shift_column,:);
f_columns = vertcat(n_columns1, n_columns2);

arr(:, cols) = f_columns;
out = arr;

end

