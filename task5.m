function pMultiple=task5(n,m)
    
    pMultiple=n;
    for k=m:sqrt(n)

        if(k~=2 && k~=3 && mod(k,6)~=1 && mod(k,6)~=5)
            continue
        end

        if mod(n,k)==0
            % k is left node %
            pMultiple=n/k;
            % pmultiple is right node %

            if(is_prime5(pMultiple))
                return %returns largest prime% 
            end

            pMultiple=task5(pMultiple,k);
            return

        end
    end
end