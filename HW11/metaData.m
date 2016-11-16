function  metaData( fil )

[~, ~, fh] = xlsread(fil);

[rows, cols] = size(fh);

N = ceil((cols - 1)/2);
xs = [fh{2:end, 1}];
xl = fh{1, 1};
for i = 2:cols
  
   subplot(2, N, i-1);
   ys = [fh{2:end, i}];
   ylabel(fh{1, i});
   xlabel(xl);
   ds = diff(ys)./diff(xs);
   in = [0];
   sum = 0;
   for n = 2:length(xs)
       integral = trapz(xs(n-1:n), ys(n-1:n));
       sum = sum + integral;
       in = [in sum];
   end
   hold on
   plot(xs, ys, 'k-');
   plot(xs(1:end-1), ds, 'b-');
   plot(xs(1:end), in, 'g-');
   hold off
end


end

