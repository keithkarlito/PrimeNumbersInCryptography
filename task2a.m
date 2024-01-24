function [result] = task2a(n)
%ISNUMBERPRIMEDEMO tells us if the number is a prime
if(n==2 || n==3) 
    result = true;
    return
end

if(mod(n,2)==0) 
    result = false;
    return
end

    for i=2:sqrt(n)
        if mod(n, i) == 0 && i~=n
            result = false;
            return
        end
    end
    result = true;
end
