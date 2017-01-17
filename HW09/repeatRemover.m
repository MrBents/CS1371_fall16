function repeatRemover(in)

fhi = fopen(in, 'r');
nameo = [in(1:end -4) '_fixed.txt'];
fho = fopen(nameo, 'w');
list = [];

while ~feof(fhi)
   lin = fgets(fhi);
   if length(strfind(list, lin)) < 1
       fprintf(fho, lin);
       list = [list lin];
   end
end
       
end