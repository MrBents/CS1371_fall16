function length = microscope( img, scale )
tic;
start = round(toc * 1000);

img = imread(img);
[h, l, ~] = size(img);
starth = 0;
finh = 0;
for i = 1:h
    for n = 2:l
        current = img(i, n,:);
        before = img(i, n - 1,:);
        
        if all(~(before == 0)) && all(current == 0)
            starth = n;
        end
        
        if all(before == 0) && all(~(current == 0))
            finh = n;
            break
        end
    end
end

startv = 0;
finv = 0;

for i = 1:l
    for n = 2:h
        current = img(n, i,:);
        before = img(n  - 1, i,:);
        
        if all(~(before == 0)) && all(current == 0)
            startv = n;
        end
        
        if all(before == 0) && all(~(current == 0))
            finv = n;
            break
        end
    end
end

lh = finh - starth;
lv = finv - startv;

ml = max(lh, lv);

length = round([(h/ml)*scale, (l/ml)*scale]);

en = round(toc * 1000);

en - start


end

