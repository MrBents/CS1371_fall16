function clockFaces(time,time_difference)
subplot(1,2,1)
% Actual time values
time = num2str(time);
[hours_1,minutes_1] = strtok(time,':');
minutes_1 = minutes_1(2:end);

% clock 1
%Creating framework
tht = linspace(0,2*pi);
r = 1;
x = r*cos(tht);
y = r*sin(tht);
subplot(1,2,1)
plot(x,y,'k-')
axis square
axis off
hold on 
%adding the center
plot(0,0,'ko')
hold on

% adding current minutes
tht = linspace(pi/2,(5*pi/2),61);
r = 0.7;
x = r*cos(tht);
y = r*sin(tht);
plot([0 x(61-str2num(minutes_1))],[0 y(61-str2num(minutes_1))],'r-');
hold on

%adding the hours
tht = linspace(pi/2,(5*pi/2),13);
r = 0.9;
x = r*cos(tht);
y = r*sin(tht);
%creating vector with hours
hour = 12;
%adding
for i = 1:12
    if i== (13-str2num(hours_1)) % adding current hours
    x_1 = 0.5*cos(tht);
    y_1 = 0.5*sin(tht);
    plot([0 x_1(i)], [0 y_1(i)],'b-')
    text(x(i),y(i),num2str(hour),'HorizontalAlignment','center')
    hour = hour-1;
    else
text(x(i),y(i),num2str(hour),'HorizontalAlignment','center')
hour = hour-1;
    end
end
title('Current Time')

% clock 2

% new time values
hours_2 = str2num(hours_1) + str2num(time_difference);
if hours_2>12
    while hours_2>12
    hours_2 = hours_2-12;
    end
elseif hours_2 < 0
    while hours_2<0
    hours_2 = hours_2+12;
    end    
elseif hours_2 == 0
    hours_2 = 12;
end

%Creating framework
tht = linspace(0,2*pi);
r = 1;
x = r*cos(tht);
y = r*sin(tht);
subplot(1,2,2)
plot(x,y,'k-')
axis square
axis off
hold on 
%adding the center
plot(0,0,'ko')
hold on

% adding current minutes
tht = linspace(pi/2,(5*pi/2),61);
r = 0.7;
x = r*cos(tht);
y = r*sin(tht);
plot([0 x(61-str2num(minutes_1))],[0 y(61-str2num(minutes_1))],'r-');
hold on

%adding the hours
tht = linspace(pi/2,(5*pi/2),13);
r = 0.9;
x = r*cos(tht);
y = r*sin(tht);
%creating vector with hours
hour = 12;
%adding
for i = 1:12
    if i== (13-(hours_2)) % adding current hours
    x_1 = 0.5*cos(tht);
    y_1 = 0.5*sin(tht);
    plot([0 x_1(i)], [0 y_1(i)],'b-')
    text(x(i),y(i),num2str(hour),'HorizontalAlignment','center')
    hour = hour-1;
    else
text(x(i),y(i),num2str(hour),'HorizontalAlignment','center')
hour = hour-1;
    end
end
title('Destination Time')

end
