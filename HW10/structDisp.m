function out = structDisp( st )

[r, c] = size(st);
out = [];
for i = 1:r
    row = [];
    for n = 1:c
      chars = struct2charArr(st(i, n));  
      if length(chars) > 50
          chars(:, 51:end) = [];
      end
      if length(chars) < 50
          diff = 50 - length(chars);
          for kk = 1:diff
              chars(:, end + 1) = ' ';
          end
      end
      row = [row, chars];
    end
    out = [out; row];
end
end

