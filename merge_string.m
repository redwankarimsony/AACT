function [ output ] = merge_string( str1, str2 )
    temp = strcat( '(', str1 );
    temp = strcat( temp, '+' );
    temp = strcat( temp, str2 );
    temp = strcat( temp, ')' );
    output = temp;   
end

