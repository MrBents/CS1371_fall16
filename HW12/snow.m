function koch(level)
% KOCH(LEVEL) Draw the Koch curve fractal. LEVEL denotes the number
% of iterations to perform.
%    Example: 
%       koch(5);

% This file was generated by students as a partial fulfillment 
% for the requirements of the course "Classical Mathematical
% Theorems and their Visualisation on the Computer", Winter term
% 2002/2003, Stuttgart University.	
	
% Author : Dagmar Scherzinger, Carsten Reisser
% Date   : Dec 2002
% Version: 1.0

if nargin ~= 1
	error(['One input argument is required. Please type ' ... 
				 '''help koch'' for usage information.']);
end

xl = zeros(10,1);
xr = xl;
yl = xl;
yr = yl;
xr(level) = 1;
r = sqrt(1/3^2 - 1/6^2);
clf;
set(gca,'FontSize',14);
set(gcf,'Color',[1,1,1]);
hold on;
subkoch(xl,xr,yl,yr,level,r);
title('Koch Curve');
text(0.5,-0.05,(['Number of iterations: ' num2str(level)]), ...
		 'HorizontalAlign','center','FontSize',12); 
hold off;
axis equal; axis tight; axis off;

%------------------------------------------------------------
function subkoch(xl,xr,yl,yr,level,r)
%Zeichne eine Linie auf der niedrigsten Level der Rekursion
if (level<2)
    plot([xl(1) xr(1)],[-yl(1) -yr(1)],'k-') 
    return
end
%Verzweige in niedrigere Stufen
level=level-1;
%Linker Zweig
xl(level)=xl(level+1);
yl(level)=yl(level+1);
xr(level)=1/3*xr(level+1)+2/3*xl(level+1);
yr(level)=1/3*yr(level+1)+2/3*yl(level+1);
subkoch(xl,xr,yl,yr,level,r);
%Mittlerer linker Zweig
xl(level)=xr(level);
yl(level)=yr(level);
xr(level)=.5*xr(level+1)+.5*xl(level+1)-r*(yl(level+1)-yr(level+1));
yr(level)=.5*yr(level+1)+.5*yl(level+1)+r*(xl(level+1)-xr(level+1));
subkoch(xl,xr,yl,yr,level,r);
%Mittlerer rechter Zweig
xl(level)=xr(level);
yl(level)=yr(level);
xr(level)=2/3*xr(level+1)+1/3*xl(level+1);
yr(level)=2/3*yr(level+1)+1/3*yl(level+1);
subkoch(xl,xr,yl,yr,level,r);
%Rechter Zweig
xl(level)=xr(level);
yl(level)=yr(level);
xr(level)=xr(level+1);
yr(level)=yr(level+1);
subkoch(xl,xr,yl,yr,level,r);
level=level+1;
return;