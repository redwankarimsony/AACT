function[out]= calc_distance(dataIn)
    
    %set power for using minkowski distance
    power = 3;
    [row, col] = size(dataIn);
    
    temp = zeros(row, col);
    
    for i = 1:row
        for j = i:row
            temp(i,j) = euclidian_dist(dataIn(i,:), dataIn(j,:), col);
            %temp(i,j) = minkowski_dist( dataIn(i,:), dataIn(j,:), col, power );
            temp(j,i) = temp(i,j);
        end
    end
    
    %max in the matrix
    mx = max(max(temp));
    
    for i = 1:row
        temp(i,i) = 5*mx;
    end
    
    out = temp;
    
    
    
end