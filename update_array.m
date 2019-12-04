function [ output_args ] = update_array( input , r, c )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


min_position = min(r,c);
max_position = max(r,c);

temp = merge_string(input(min_position,1), input(max_position,1));

dummy_input = input;
dummy_input(min_position,1) = temp;


[len, k] = size(input);





for i = max_position:len-1
    dummy_input(i,1) = dummy_input(1+i,1);
end

output_args = dummy_input(1:len-1,1);

end

