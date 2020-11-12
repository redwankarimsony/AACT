close all; clear; clc;
intensity_file = 'intensity_matrix.txt';
id_ref_file = 'id_ref.txt';
identifier_file = 'identifier.txt';


%% reading the text file
ID_Ref = text_file_read( id_ref_file );
ID_Ref = ID_Ref{1,1};
identifiers = text_file_read( identifier_file );
identifiers = identifiers{1,1};
%reading the intensity matrix file
dataRaw = dlmread(intensity_file);


%% mode selection
mode = 1; %sigle link
%mode = 2; %complete link
%mode = 3; %average link




%% calculating the distance matrix
distance_matrix = calc_distance(dataRaw);







%% clustering
no_of_clusters = 5;
[row col] = size(distance_matrix);
for i=row:-1:no_of_clusters+1
    
    % calculating the min distance index
    MIN = min(min(distance_matrix));
    [row,col] = find(distance_matrix == MIN); 
    r = row(1,1);
    c = col(1,1);
    
    ID_Ref = update_array(ID_Ref, r , c);
    identifiers = update_array(identifiers, r , c);
    distance_matrix = update_matrix(distance_matrix, r, c, mode);
    
end






