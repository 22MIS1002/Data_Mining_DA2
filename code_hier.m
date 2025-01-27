%Step 1--Import Dataset

%Step 2--Take only the sepal_width & petal_width columns(4 & 5)
IRIS=IRIS(:,2:4);
%Step 3--Perform Data Preprocessing
%Checking null value is present or not
sum(ismissing(IRIS))
%Standardization
IRIS.sepal_width=(IRIS.sepal_width-mean(IRIS.sepal_width))/std(IRIS.sepal_width);
IRIS.petal_width=(IRIS.petal_width-mean(IRIS.petal_width))/std(IRIS.petal_width);
%Convert the data from table to array 
Customers=table2array(Customers);
treefigure1=linkage(Customers,'ward');
g=unique(treefigure1(:,3));
m=sort(g);
mk=(m>=1);
m=m(mk);
figure;
pause(5);
for i=1:length(m)
subplot(1,2,1);
H=dendrogram(treefigure1,'ColorThreshold',m(i));
set(H,'LineWidth',3)
c=cluster(treefigure1,'cutoff',m(i),'Criterion','distance');
subplot(1,2,2);
gscatter(Customers(:,1),Customers(:,2),c);
if(i==1)
pause(1);
else
    pause(0.6);
end
if(i~=length(m))
clf
end
end