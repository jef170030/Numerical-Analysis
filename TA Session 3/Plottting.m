%covers plot
clear
x=1:10;
y=x.^2;
figure %the first plot figure does not need a figure command
plot(x,y, '-o')

x=linspace(1,10); %makes the plot smoother since you have 100 equally 
%spaced points between 1-10. linspace(a,b) gives 100 equally spaced points
%between a-b.

y=x.^2;
figure %second plot needs figure command
plot(x,y, 'o')

%create a new figure and plot a function of your choice.
%experiment with color, markers, line style, name your new vector y2
x=0:pi/20:2*pi;
y2=sin(x);
figure
plot(x,y2,'-dg')

%for plot decor, go to help; type plot; click "plot - 2-D line plot"
%on hw try and use different markers for different plots

y3=20*sin(x)
hold on %keeps my sin graph on a plot
plot (x,y3)
hold off %everything after this will be on a new plot

title('sample line plots') %how to add a title
xlabel('x')
ylabel('sinx')
legend('my sin graph','ta sin graph')

