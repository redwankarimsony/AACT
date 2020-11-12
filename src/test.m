
%{
MIN = min(min(distance_matrix));
[row,col] = find(distance_matrix == MIN);

r = row(1,1);
c = col(1,1);
%}

method = 'single';
metric = 'euclidean';

Z = linkage(distance_matrix,method,metric);
c = cluster(Z,'maxclust',4);