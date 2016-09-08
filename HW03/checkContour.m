function [ result ] = checkContour( vec1, vec2 )
% Compares the contour of two vectors
% Usage: checkContour(vector1, vector2) : returns boolean

% Getting differences between indices
diff1 = diff(vec1);
% Turning increases to 1 and decreases to NaN
second1 = (diff1 + abs(diff1))./2;
contour1 = second1./second1;
% Turning NaN to 0's
contour1(isnan(contour1))=0;

% Getting differences between indices
diff2 = diff(vec2);
% Turning increases to 1 and decreases to NaN
second2 = (diff2 + abs(diff2))./2;
contour2 = second2./second2;
% Turning NaN to 0's
contour2(isnan(contour2))=0;

result = isequal(contour1, contour2);

end

