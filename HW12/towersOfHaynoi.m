function [ output_args ] = towersOfHaynoi( num, start, dest, help )
name = ['Instructions_',start,'to',dest,'.txt' ];
fh = fopen(name, 'w+');
fline = sprintf('Instructions for moving %d bales of hay from %s to %s:', num , start, dest);
fprintf(fh, fline);
fprintf(fh, '\n\n');

proceed(num, start, help, dest, fh);
fclose('all');
line = [];

fhi = fopen(name, 'r');
while ~feof(fhi)
   lin = fgets(fhi);
   line = [line lin];
end
line = line(1:end-1);
fhi = fopen(name, 'w');
fprintf(fhi, line);
fclose('all');
end

function proceed(numi, starti, helpi, desti, fhi)
    if numi == 1
    line = sprintf('Move top bale from %s to %s.\n', starti, desti);    
    fprintf(fhi, line);
    else
    
    proceed(numi - 1, starti, desti, helpi, fhi);
    proceed(1, starti, helpi, desti, fhi);
    proceed(numi - 1, helpi, starti, desti, fhi);
    end
end