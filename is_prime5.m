function prime = is_prime5(n)
    % Miller Rabin Primality Test %
    
    prime=true;

    % If even return false %
    if mod(n,2)==0
        prime=false;return
    end

    d=n-1;
    m=0;

    while mod(d,2)==0
        d=d/2;
        m=m+1;
    end
    % 2^m + d = n-1 %

    a=[2,3,5,7,11];
    %Enough to check n < 2,152,302,898,747%
    
    for k=1:5

        for s=0:m-1
            % If a(k)^((2^s)*d) mod n ~= 1  OR  %
            %    a(k)^((2^s)*d) mod n ~=-1      %
            % for ALL 0 <= s < m: n is composite% 

            result=squareMultiply(a(k),(2^s)*d,n);
            
            if(result~=n-1 && result~=1)
                prime=false;
            else
                prime=true;
                break;
            end
        end

        if(~prime)
            return
        end
    end
end


