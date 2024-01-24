function primeCountVector = primeCountFunction(n)
    primeCountVector=[];
    primeCountVector(1,n)=0;
    count=0;
    
    for k=1:n
        if isprime(k)
            count=count+1;
        end
        primeCountVector(k)=count;
    end
    
    return
end