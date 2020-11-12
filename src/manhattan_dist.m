function [ output_args ] = manhattan_dist(  data1, data2, col )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    squared_sum = 0;
    for i = 1:col
        squared_sum = squared_sum + abs(data1(i)-data2(i));
    end
    
    output_args = squared_sum;

end

