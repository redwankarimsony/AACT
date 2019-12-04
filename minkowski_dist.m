function [ output_args ] = minkowski_dist( data1, data2, col, p )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    p_powered_sum = 0;
    for i = 1:col
        p_powered_sum = p_powered_sum + (data1(i)-data2(i));
    end
    
    output_args = (p_powered_sum)^(1/p);


end

