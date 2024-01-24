function task4a(n)

   x = 1:1:n;
   y = primeCountFunction(n);
   
   h=plot(x,y);

   h.LineWidth = 1.5;

   h.Color = [128/255 0/255 128/255];

   grid on
   xlabel('x'); ylabel('π(x)');

   title('Prime Counting Function ( n = 100 )')
end
