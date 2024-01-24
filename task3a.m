function nthPrime = task3a(n)
    
    pVector=[];
    pVector(1:n)=0;

    pVector(1)=2; % if n = 1 %
    if n==1
        return
    end

    pVector(2)=3; % if n = 2 %
    if n==2
        return
    end

    k=1;
    count=3;

    while count<=n
        possiblePrime=k*6-1; % as every prime is in this form %

        if(is_prime3(possiblePrime,pVector))
            pVector(count)=possiblePrime;
            count=count+1;
        end

        
        if count>n
            break;
        end

        possiblePrime=k*6+1;

        if(is_prime3(possiblePrime,pVector))
            pVector(count)=possiblePrime;
            count=count+1;
        end

        k=k+1;

    end

    nthPrime=pVector(n);

end