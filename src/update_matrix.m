function[output] = update_matrix(input, r, c, mode)
    
    min_position = min(r,c);
    max_position = max(r,c);
    
    [row col] = size(input);
    
    for m = 1:row
        if mode==1
            if m~=min_position
                temp = min(input(m,min_position), input(m,max_position));
                input(m, min_position) = temp;
                input(min_position, m) = temp;
            end
        end
       
    end
    
    if max_position == row
        input = input(1:row-1,1:row-1);
    else
        input = input([1:max_position-1, max_position+1:row], [1:max_position-1, max_position+1:row]);
    end

    output = input;
    
end