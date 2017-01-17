function [ output_args ] = noOffense( in, cells )
fhi = fopen(in, 'r');
fho = fopen([in(1:end-4) '_counted.txt'], 'w');
count = 0;

while ~feof(fhi)
   lin = fgets(fhi);
   fprintf(fho, lin);
   [~, len] = size(cells);
   for i = 1:len
      l = length(strfind(lin, cells{1, i}));
      count = count + l;
   end
end
s = sprintf('\nThis file contains %d offensive words.', count);
fprintf(fho, s);
fclose('all');

end

