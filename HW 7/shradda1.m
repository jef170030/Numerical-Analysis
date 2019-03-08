clear
clc

i=0:20; %i is between 0 and 20
x1 = 5*cos((i*pi)/20); %Chebyshev nodes are spaced at this interval
f1 = 1./(1+x1.^2); %the rest of the program stays the exact same as the 
%first problem so I removed the rest of the comments

poly = polyfit(x1, f1, 20);

x2 = linspace(-5, 5, 41); 
f2 = 1./(1+x2.^2); 
ypoly = polyval(poly, x2); 


figure
plot(x1,f1,'--cyan','LineWidth', 1.5)
hold on
plot(x2,ypoly,':green', 'LineWidth',1.5)
legend('f1','poly')

format shortG;
format compact;

table(x2',f2',ypoly',f2'-ypoly','VariableNames',{'x1','y1','f1','FitError'})


%Explanation
%In this situation, we now have nodes spaced by 5cos((i*pi)/20). And then
%we compare the values from f(x)=1/(1+x^2) to the values we get for the
%interpolating polynomial.As we can see from the plot and the error values,
%the Chebyshev nodes are a much better way to find an interpolating
%polynomial for the function.