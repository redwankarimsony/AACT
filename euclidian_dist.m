function [ output_args ] = euclidian_dist( data1, data2, col )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    
    squared_sum = 0;
    for i = 1:col
        squared_sum = squared_sum + (data1(i)-data2(i))^2;
    end
    
    output_args = sqrt(squared_sum);
end

