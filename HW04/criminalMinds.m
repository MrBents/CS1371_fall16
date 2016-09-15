function out  = criminalMinds( suspect_1, suspect_2, suspect_3, suspect_4 )

a = sum(abs(suspect_1 - suspect_2));
b = sum(abs(suspect_1 - suspect_3));
c = sum(abs(suspect_1 - suspect_4));
d = sum(abs(suspect_2 - suspect_3));
e = sum(abs(suspect_2 - suspect_4));
f = sum(abs(suspect_3 - suspect_4));

suspects = [ (a > 0 & b > 0 & c > 0) (a > 0 & d > 0 & e > 0) (b > 0 & d > 0 & f > 0) (c > 0 & e > 0 & f > 0)];


guilty = strfind(suspects, 1);


out = sprintf('Suspect #%d is lying.', guilty);

end

