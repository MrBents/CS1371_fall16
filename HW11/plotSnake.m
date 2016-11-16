function plotSnake( mat )

[height, length] = size(mat);

amount = sum(sum(mat>=1));
[rs, cols] = find(mat>=1);

xs = [];
ys = [];

[yf, xf] = find(mat == -1);

for i = 1:amount
    xs = [xs cols(i)];
    ys = [ys rs(i)*(-1)];   
end

 x1 = 1;
 x2 = length;
 y1 = -1*height;
 y2 = -1;


hold on

% rectangle('Position',[x1,y1,x2,y2]);
line([x1 x2], [y1 y1]);
line([x1 x2], [y2 y2]);
line([x1 x1], [y1 y2]);
line([x2 x2], [y1 y2]);

plot(xs(end), ys(end), 'gs-', 'MarkerFaceColor', 'g', 'MarkerEdgeColor','g', 'MarkerSize', 8);
plot(xf, (-1)*yf, 'rs-', 'MarkerFaceColor', 'r', 'MarkerEdgeColor','r', 'MarkerSize', 8);
plot(xs(1:end-1), ys(1:end-1), 'bs', 'MarkerFaceColor', 'b', 'MarkerEdgeColor','b', 'MarkerSize', 8);
title('snek');
axis([0 length+1 -1*height-1 0])
axis off
axis equal 
hold off