function prime = is_prime3(n,pVector)
    prime = true;
    count = 3;

    while pVector(count)<=sqrt(n) && pVector(count)~=0
        if(mod(n,pVector(count))==0)
            prime = false;
            return
        end
        count = count+1;
    end
    
end