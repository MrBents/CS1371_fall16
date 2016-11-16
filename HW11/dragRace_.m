function results = dragRace( points, velocities, names, distance )

[r, c] = size(points);
dists = zeros(r, c);

for i = 1:r
   dists(i, :) = cumtrapz(points(i, :), velocities(i, :));
end

[rw, cw] = find(dists >= distance);

win = names{rw(1)};
time = interp1(dists(rw(1), :), points(rw(1), :), distance);
points = [points(:, 1:cw(1) - 1) ones(r, 1)*time];
acc = [];
for i = 1:r
   dvs = diff(velocities(i, 1:cw(1)))./diff(points(i, :));
   acc = [acc max(dvs)];
end

[acc, id] = max(acc);
maxAcc = names{id};

results = sprintf('The %s won the %d meter race in %0.1f seconds! The %s had the fastest acceleration at %0.1f m/s^2!',win,distance,time,maxAcc,acc);



end

