function [ output_args ] = memeGenerator( top, bot, name, color )
tic;
start = round(toc * 1000);
img = imread(name);
top = str2img(top, color);
bot = str2img(bot, color);
nimg = img;

[stdheight, stdlength, ~] = size(img);

[height_top_txt, length_top_txt, ~] = size(top);
[height_bot_txt, length_bot_txt, ~] = size(bot);

rat1 = round((stdlength/length_top_txt)*height_top_txt);
rat2 = round((stdlength/length_bot_txt)*height_bot_txt);

top = imresize(top, [rat1 stdlength] , 'nearest');
bot = imresize(bot, [rat2 stdlength] , 'nearest');

[height_top_txt, length_top_txt, ~] = size(top);
[height_bot_txt, length_bot_txt, ~] = size(bot);



% Adding top
for i = 1:height_top_txt
    for n = 1:length_top_txt
        if all(top(i, n, :) == 0)
           top(i, n, :) = img(i, n, :);
        end
        nimg(i, n, :) = top(i, n, :);
    end
end

% Adding bottom
for i = 1:height_bot_txt
    for n = 1:length_bot_txt
        if all(bot(i, n, :) == 0)
           bot(i, n, :) = img(stdheight - height_bot_txt + i,  stdlength - length_bot_txt + n, :);
        end
        nimg(stdheight - height_bot_txt + i , stdlength - length_bot_txt + n, : ) = bot(i, n, :);
    end
end

% imshow(nimg)
name = [name(1:end-4), '_meme.png'];
imwrite(nimg, name, 'png' );

en = round(toc * 1000);

en - start
end

