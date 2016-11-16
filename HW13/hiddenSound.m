function out = hiddenSound( img )

img = imread(img);
left = img(:,:,1);
right = img(:,:,2);
scale = img(:,:,3);

mask = scale == 0;

left = double(left(~mask));
right = double(right(~mask));
scale = double(scale(~mask));

left = round(((left - 128)./128).*(scale./256), 4);
right = round(((right - 128)./128).*(scale./256), 4);

left = reshape(left, [], 1);
right = reshape(right, [], 1);

out = [left, right];

end

