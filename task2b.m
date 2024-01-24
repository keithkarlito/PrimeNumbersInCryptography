function [result] = task2b(n)
    result = [];
    counter = 3;
    primeNumber= 5;
    result(1)=2;
    result(2)=3;
    while size(result)<n
        if isNumberPrime(primeNumber)
            result(counter) = primeNumber;
            counter= counter+1;
        end
        primeNumber= primeNumber+2;
    end
end
