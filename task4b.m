function task4b()
    
    n=1000000;

    x=1:1:n;
    pi=primeCountFunction(n);
    lnx=log(x);
    
    h=semilogx(x,(pi)./(x./lnx));
    hold on
    semilogx(x,ones(1,n))
    
    h.LineWidth = 1.5;

    h.Color = [128/255 0/255 128/255];
    xlabel('x'); ylabel('π(x) / ( x / ln(x) )');

    title('Prime Number Theorem')
    hold off
    grid on
   

end