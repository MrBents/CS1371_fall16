function  results = dragRace(times, velocity,carro,distance)
%finding distances

%loop through every car
f_time = [];
f_acc = [];

for ind = 1:length(carro)
    n_times = [];
    n_velocities = [];
    len1 = times(ind,:);
    len2 = velocity(ind,:);

% finding a vector of times
timesOne = times(ind,1:end);
for i = 1:length(len1)
    n_times = [n_times timesOne(i)];
end
% finding a vector of velocities
velocitiesOne = velocity(ind,1:end);
for i = 1:length(len2)
    n_velocities = [n_velocities velocitiesOne(i)];
end
% finding distances
distances = cumtrapz(n_times,n_velocities);
%finding time
time = interp1(distances,n_times,distance);
n_times = [n_times(n_times<time),time];
n_velocities = n_velocities(1:length(n_times));
%finding acceleration
acceleration = diff(n_velocities)./diff(n_times);
f_time = [f_time time];
f_acc = [f_acc acceleration];
end % final acce and time
[acce, pos_a] = max(f_acc);
[time, pos_t] = min(f_time);
winner = carro{pos_t};
fastest_car = carro{mod(pos_a, 5)};
%results
results = sprintf('The %s won the %d meter race in %0.1f seconds! The %s had the fastest acceleration at %0.1f m/s^2!',winner,distance,time,fastest_car,acce);
end
