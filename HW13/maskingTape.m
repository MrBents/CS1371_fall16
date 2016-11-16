function maskingTape( unpainted, painted, colors )

un = imread(unpainted);
final = imread(painted);
taped = un;
[height, length, dimension] = size(un);

for i = 1:height
    for n = 1:length
        if un(i, n, :) == final(i, n, :)
           taped(i, n, :) = colors;
        end
    end
end


name = [unpainted(1:end-4) '_tape.png'];
imwrite(taped, name, 'png')

end

