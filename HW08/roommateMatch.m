function str = roommateMatch( fl1, fl2 )
% This function indicates the similitude between two students

% initializing file handlers
student1 = fopen(fl1);
student2 = fopen(fl2);

% getting student 1 name
[~ , name1] = strtok(fgetl(student1), ' ');

% getting student 1 earliest class time
pattern = '\ [0-9]?[0-9]:[0-5][0-9]';
second_line_1 = fgetl(student1);
time_1 = strtrim(second_line_1(regexp(second_line_1, pattern):end));

% getting student 1 sleeping preferences
ind_1 = 0;
for idx = 1:4
   if length(strfind(fgetl(student1), 'X')) > 0
       ind_1 = idx;
   end
end

% getting student 1 food preferences
pattern = '[a-zA-Z]+$'; 
seventh_line_1 = fgetl(student1);
f_p = seventh_line_1(regexp(seventh_line_1, pattern):end);

% getting student 1 gibberish
whatever = fgetl(student1);
chars_1 = [];
while(~feof(student1))
    line = strtrim(fgetl(student1));
    chars_1 = [chars_1 line];
end

% getting student 2 name
[~ , name2] = strtok(fgetl(student2), ' ');

% getting student 2 earliest class time
pattern = '\ [0-9]?[0-9]:[0-5][0-9]';
second_line_2 = fgetl(student2);
time_2 = strtrim(second_line_2(regexp(second_line_2, pattern):end));

% getting student 2 sleeping preferences
ind_2 = 0;
for idx = 1:4
   if length(strfind(fgetl(student2), 'X')) > 0
       ind_2 = idx;
   end
end

% getting student 2 food preferences
pattern = '[a-zA-Z]+$'; 
seventh_line_2 = fgetl(student2);
f_p = seventh_line_2(regexp(seventh_line_2, pattern):end);

% getting student 2 gibberish
whatever = fgetl(student2);
chars_2 = [];
while(~feof(student2))
    line = strtrim(fgetl(student2));
    chars_2 = [chars_2 line];
end

% doing calculations

difference = timeDiff(time_1, time_2);
score = round((1 - (difference/12)) * 20);

dife = abs(ind_1 - ind_2);
switch dife
    case 0
        score = [score 20];
    case 1
        score = [score 10];
    otherwise
        score = [score 0];
end

char_diff = min(length(chars_1), length(chars_2))/max(length(chars_1), length(chars_2));
score = [score round(char_diff * 20)];

score = round((sum(score)./60)*100);

str = sprintf('%s and %s have a %d%% roommate compatibility score.', strtrim(name1), strtrim(name2), score);




end

