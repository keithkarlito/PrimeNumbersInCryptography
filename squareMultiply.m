function result = squareMultiply(base,exponent,modulus)
    % Difficult to do base^exponent, especially %
    %      when dealing with large numbers      %    
    
    % Binary Exponentiation %
    % Allows to quickly compute large positive % 
    %        integer powers of a number.       %
    
    bin = dec2bin(exponent);
    result = base;

    for k= 2:size(bin,2)

        %square
        result=mod(result^2,modulus);

        %multiply
        if bin(k)=='1'
            result=mod(result*base,modulus);
        end 

    end
end