function [ output_args ] = text_file_read( input_args )


fileID = fopen(input_args);
C = textscan(fileID, '%s');
fclose(fileID);
celldisp(C);
output_args = C; 


end

