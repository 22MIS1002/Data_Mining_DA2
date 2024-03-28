IRIS = table2array(IRIS);
sa = [];
K = [];
for k = 1:20
    [idx, c, sumd] = kmedoids(IRIS, k);
    sa = [sa,sum(sumd)];
    K = [K,k];
end


[idx, c, sumd] = kmedoids(IRIS, 6);
gscatter(IRIS(:,1), IRIS(:,2), idx);