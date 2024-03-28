%Convert the data from table to array 
IRIS=table2array(IRIS);
%Claculate the optimised k value using elbow curve
sa=[];
K=[];
for k=1:6
[idx, c, sumd]=kmeans(IRIS,k);
sa=[sa,sum(sumd)];
K=[K,k];
end

idx=kmeans(IRIS,6);
gscatter(IRIS(:,1),IRIS(:,2),idx);