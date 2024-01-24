function sum = task3b(n)
    format long
    pVector=[];

    pVector(1)=2; % if n = 1 %
    if n==1
        return
    end

    pVector(2)=3; % if n = 2 %
    if n==2
        return
    end

    pVector(3)=0;
    k=1;count=3;
    
    sum=5;
    possiblePrime=k*6-1;
    while possiblePrime<=n

        if(is_prime3(possiblePrime,pVector))
            pVector(count)=possiblePrime;
            sum=sum+possiblePrime;count=count+1;
        end

        possiblePrime=k*6+1;

        if possiblePrime>n
            return;
        end

        if(is_prime3(possiblePrime,pVector))
            pVector(count)=possiblePrime;
            sum=sum+possiblePrime;count=count+1;
        end

        k=k+1;
        possiblePrime=k*6-1;
    end 
end    