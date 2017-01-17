function [ output_args ] = pokemonGO( imgwp, imgwop, pkdx )
tic;
start = round(toc * 1000);

wpok = imread(imgwp);
wopok = imread(imgwop);
wnew = wpok;
fin = wopok;
poke = [];
pokk = [];

[h, l, s] = size(wpok);
common = imresize(imread('pokeball.png'), [NaN, l/5]);
uncommon = imresize(imread('greatball.png'), [NaN, l/5]);
rare = imresize(imread('ultraball.png'), [NaN, l/5]);
legendary = imresize(imread('masterball.png'), [NaN, l/5]);

for i = 1:h
    for n = 1:l
        if wpok(i, n, :) == wopok(i, n, :)
           wnew(i, n, :) = 0;
        else
           wnew(i, n, :) = wpok(i, n, :);
        end
    end
end

segy = h/5;
segx = l/5;

for n = [0, segy, 2*segy, 3*segy, 4*segy]
    for i = [0, segx, 2*segx, 3*segx, 4*segx]
    
        % Getting desired cuadrant and looking for pokemon
        descr = pokedex(wnew(n + 1:n+segy,i + 1:i + segx, :), pkdx );
    
    if ~strcmp(descr,'No pokemon detected.')
       pokk = [pokk, wnew(n + 1:n+segy,i + 1:i + segx, :)];
       [name, desc] = strtok(descr, ',');
       for k = 1:length(pkdx)
           % Checking for pokemon in pokedex
           if strcmp(name, pkdx(k).pokemon) 
              % Assigning pokeball according to rarity
              switch pkdx(k).rarity
                  case 'common'
                      img = common;
                  case 'uncommon'
                      img = uncommon;
                  case 'rare'
                      img = rare;
                  case 'legendary'
                      img = legendary;
              end
              poke = [poke imresize(pkdx(k).image, [100 100])];
              break
          end
       end
       
       for k = 1:segx
           for j = 1:segy
               if ~(img(k, j, 1) == 0 && img(k, j, 2) == 255 && img(k, j, 3) == 0)
                fin(k + n, j + i, :) = img(k, j, :);
               end
           end
       end
       
%        imshow(wnew(n:n+segy,i:i + segx, :))
    end
       
   end 
end


name1 = [imgwop(1:end-4) '_captured.png'];
name2 = [imgwop(1:end-4) '_pokedex.png'];

imwrite(fin, name1, 'png');
imwrite(poke, name2, 'png');

en = round(toc * 1000);

en - start

end

