function [ output_args ] = snowflake( input_args )


 x1 = 1;
 x2 = -1;
 x3 = 0;
 y2 = -1*sqrt(3);
 y1 = 0;


hold on

% rectangle('Position',[x1,y1,x2,y2]);
line([x2 x1], [y1 y1]);
line([x1 x3], [y1 y2]);
line([x3 x2], [y2 y1]);
% line([x2 x2], [y1 y2]);

hold off

end

