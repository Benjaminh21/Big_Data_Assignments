%Assignment 1%
%Author: Benjamin Terrill%
%Students ID: 15622143%
%Date: 31/10/2019%

%Section 1%
%Task 1%
Task1="Task 1"
filename = 'data_train';
A = xlsread(filename)
[rownum, colnum]=size(A)
%Displays 8 Columns and 305 Rows%

%Task 2%  %Come back and try to make better%
Task2="Task 2"
r = find(isnan(A(:,1)));
A(r,:)=[]
r = find(isnan(A(:,2)));
A(r,:)=[]
r = find(isnan(A(:,3)));
A(r,:)=[]
r = find(isnan(A(:,4)));
A(r,:)=[]
r = find(isnan(A(:,5)));
A(r,:)=[]
r = find(isnan(A(:,6)));
A(r,:)=[]
r = find(isnan(A(:,7)));
A(r,:)=[]
r = find(isnan(A(:,8)));
A(r,:)=[]
%Finds NaN values and then removes the entire row if one is found.

%Task 3%
Task3="Task 3"
filenameWrite = 'data_train2.xls'
xlswrite(filenameWrite,A)
[rownum, colnum]=size(A)
%Displays 8 columns and 296 rows%

%Task 4%
Task4="Task 4"
filename2 = 'data_test';
B = xlsread(filename2)
[rownum, colnum]=size(B)
%Displays 101 rows and 8 columns%

r = find(isnan(B(:,1)));
B(r,:)=[]
r = find(isnan(B(:,2)));
B(r,:)=[]
r = find(isnan(B(:,3)));
B(r,:)=[]
r = find(isnan(B(:,4)));
B(r,:)=[]
r = find(isnan(B(:,5)));
B(r,:)=[]
r = find(isnan(B(:,6)));
B(r,:)=[]
r = find(isnan(B(:,7)));
B(r,:)=[]
r = find(isnan(B(:,8)));
B(r,:)=[]

filenameWrite2 = 'data_test2.xlsx'
xlswrite(filenameWrite2,B)
[rownum, colnum]=size(B)
%Displays 96 rows and 8 columns%


%Section 2%
%Task 5%
Task5='Task 5'
filename3 = 'data_train2';
C = xlsread(filename3)

%Variance of each%  CHECK THIS ONE!!!
Variance = var(C)

%Mean of each%
Mean = mean(C,1)

%Median of each%
Median = median(C,1)

%Min of each%
Min = min(C)

%Max of each%
Max = max(C)

%Standard deviation of each%
SD = std(C,0)

%Task 6%
Task6='Task 6'
data1=xlsread(filename3,'A:A');
boxplot(data1)
xlabel('All Vehicles')
ylabel('Miles Per Gallon (MPG)')
title('Miles Per Gallon for All Vehicles')

data2=xlsread(filename3,'F:F');
boxplot(data2)
xlabel('All Vehicles')
ylabel('Acceleration')
title('Acceleration of All Vehicles')

data3=xlsread(filename3,'D:D');
boxplot(data3)
xlabel('All Vehicles')
ylabel('HorsePower')
title('HorsePower of All Vehicles')

data4=xlsread(filename3,'E:E');
boxplot(data4)
xlabel('All Vehicles')
ylabel('Weight')
title('Weight of All Vehicles')

scatter(data1, data2)
xlabel('MPG')
ylabel('Acceleration')
title('Scatter of MPG and Acceleration')

scatter(data3, data1)
xlabel('HorsePower')
ylabel('MPG')
title('Scatter of HorsePower and MPG')

scatter(data4, data3)
xlabel('Weight')
ylabel('HorsePower')
title('Scatter of Weight and HorsePower')

%Section 3%
%Task 7%

x=data2 %Independent variable - Acceleration%
y=data1 %Dependant variable - MPG%

format long
b1 = x/y %Slope of the line%

yCalc1 = b1*x
scatter(x,y)
hold on
plot(x,yCalc1)
xlabel('Accelleration')
ylabel('MPG')
grid on

tbl1 = table(x,y);
lm = fitlm(tbl1, 'linear')


y_pred = 1.0819*x+4.3040
mse = mean((y_pred-y).^2)

%Gets the average of the squared errors.%

%Task 8%

mdl = fitlm(x,y,'quadratic');
y_pred2 = predict(mdl,x);

plot(x,y,'o',x,y_pred2,'x')
legend('Data', 'Predictions')

mse2 = mean((y_pred2-y).^2)


%Task 9%

x2=data4 %Independant variable - Weight%
y2=data1 %Dependant variable - MPG%

format long
b2 = x2/y2 %Slope of the line%

yCalc3 = b2*x2
scatter(x2,y2)
hold on
plot(x,yCalc3)
xlabel('Weight')
ylabel('MPG')
grid on


tbl3 = table(x2,y2);
lm = fitlm(tbl3, 'linear')

y_pred = -0.0062*x+40.4754
mse = mean((y_pred-y).^2)

%Task 10%

mdl = fitlm(x,y,'linear');
y_pred4 = predict(mdl,x);

plot(x,y,'o',x,y_pred4,'x')
legend('Data', 'Predictions')

mse3 = mean((y_pred4-y).^2)


%Task 11%

x3=data4 %Independant variable - Weight%
y3=data3 %Dependant variable - Horsepower%

format long
b3 = x3/y3 %Slope of the line%

yCalc5 = b3*x3
scatter(x3,y3)
hold on
plot(x,yCalc5)
xlabel('Weight')
ylabel('Horsepower')
grid on

tbl5 = table(x3,y3);
lm = fitlm(tbl5, 'linear')

y_pred4 = 0.0392*x+-10.8598
mse4 = mean((y_pred4-y).^2)


%Task 10%

mdl = fitlm(x,y,'linear');
y_pred6 = predict(mdl,x);

plot(x,y,'o',x,y_pred6,'x')
legend('Data', 'Predictions')

mse5 = mean((y_pred6-y).^2)










