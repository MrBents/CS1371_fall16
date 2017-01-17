function onRepeat( in )
fhi = fopen(in, 'r');
fho = fopen([in(1:end-4) '_repeats.txt'], 'w');
text = [];

while ~feof(fhi)
   text = [text fgets(fhi)];
end

fclose(fhi);
fhi = fopen(in, 'r');

while ~feof(fhi)
   lin = fgets(fhi);
   
   if length(strfind(text, lin)) > 1
      fprintf(fho, lin);
      idxs = strfind(text, lin);
      len = length(lin);

      text(idxs:idxs + len) = []; 
      
   end
end

end

