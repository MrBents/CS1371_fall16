function [ future ] = scheduler( current, info )

task_list = strsplit(info , ',');

dates = char(task_list(2:3:end)');


% dates = dates(isstrprop(dates(1), 'digit'));
times = task_list(3:3:end)';
date1 = str2num(dates(1, :));
date2 = str2num(dates(2, :));

% HR Event 1
[hr1_1tot, hr1_2tot]  = strtok(times(1, :), '-');
hr1_2tot = char(hr1_2tot);
hr1_2tot = hr1_2tot(2:end);

[hr1_1, min1_1] = strtok(hr1_1tot, ':');
min1_1 = char(min1_1);
min1_1 = min1_1(2:end);
mins1_1 = (str2num(char(hr1_1)) * 60) + str2num(min1_1);

[hr1_2, min1_2] = strtok(hr1_2tot, ':');
min1_2 = char(min1_2);
min1_2 = min1_2(2:end);
mins1_2 = (str2num(char(hr1_2)) * 60) + str2num(min1_2);

% HR event 2

[hr2_1tot, hr2_2tot]  = strtok(times(2, :), '-');
hr2_2tot = char(hr2_2tot);
hr2_2tot = hr2_2tot(2:end);

[hr2_1, min2_1] = strtok(hr2_1tot, ':');
min2_1 = char(min2_1);
min2_1 = min2_1(2:end);
mins2_1 = (str2num(char(hr2_1)) * 60) + str2num(min2_1);

[hr2_2, min2_2] = strtok(hr2_2tot, ':');
min2_2 = char(min2_2);
min2_2 = min2_2(2:end);
mins2_2 = (str2num(char(hr2_2)) * 60) + str2num(min2_2);

min_rat = 48./(24 * 60);

mins1_1 = mins1_1 * min_rat; 
mins1_2 = mins1_2 * min_rat; 
mins2_1 = mins2_1 * min_rat; 
mins2_2 = mins2_2 * min_rat; 

current((mins1_1:(mins1_2 - 1))  + 1, date1) = 0;
current((mins2_1:(mins2_2 - 1))  + 1, date2) = 0;

future = current;

end

