function out = reviewReviewer(text_fil, plus, minus)
text_fil_st = '';
nextline = '';

fhandler = fopen(text_fil,'r');


while ischar(nextline)
    nextline = fgets(fhandler);
    if ~ischar(nextline)
        break
    end
    nextline = strtrim(nextline);
    text_fil_st = [text_fil_st nextline ' '];
    
end
text_fil_st = lower(text_fil_st);
mask = (text_fil_st == ',' | text_fil_st == '.' | text_fil_st == ';' | text_fil_st == '?' | text_fil_st == '!'  | text_fil_st == ':' | text_fil_st == '''');
text_fil_st = text_fil_st(~mask);
text_fil_st = strtrim(text_fil_st);
fclose(fhandler);
 
text_filstr = [' ' text_fil_st ' '];
idx = strfind(text_filstr,' ');
 
da_count = 0;
actcount = 0;
word = '';
minus = [minus ' '];
plus = [plus ' '];
for i = 1:length(idx) - 1
    word = text_filstr(idx(i)+1:idx(i+1)-1);
    actfind = strfind(minus, word);
    da_find = strfind(plus, word);
    if length(da_find) == 1 && plus(da_find - 1) == ' ' && plus(da_find + length(word)) == ' '
        da_count = da_count+1;
    elseif length(actfind) == 1 && minus(actfind - 1) == ' ' && minus(actfind + length(word)) == ' '
        actcount = actcount+1;
    end
end
fhandler2 = fopen(text_fil,'r');
da_name = fgets(fhandler2);
fclose(fhandler2);
da_name = da_name(1:end-9);

 
 
if da_count > actcount
    out = sprintf('The reviewer gave a 4 star review of the %s.',da_name);
elseif da_count == actcount
    out = sprintf('The reviewer gave a 3 star review of the %s.',da_name);
elseif da_count < actcount
    out = sprintf('The reviewer gave a 2 star review of the %s.',da_name);
end
if da_count > 2 .* actcount
    out = sprintf('The reviewer gave a 5 star review of the %s.',da_name);
end
if 2 .* da_count < actcount
    out = sprintf('The reviewer gave a 1 star review of the %s.',da_name);
end
 
    
        
 
 
 
    
 
 
end