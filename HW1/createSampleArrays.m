%% ################### 1st Part: ################## 
%% 1st x1[n] sample array:
x1 = zeros(1,201);
for i = 101:120
    x1(i) = 1;
end
for i = 121:140
    x1(i) = 5;
end
%% 1st x2[n] sample array:
x2 = zeros(1,201);
for i = 1:106
    if i < 101
        x2(i) = 101 - i;
    else
        x2(i) = i - 101;
    end
end

%% X axis time values
xData = zeros(1,201);
xData2 = zeros(1,401);
for i = 1:201
    xData(i) = i - 101;
end
for i = 1:401
    xData2(i) = i - 201;
end
%% Convolve and plot the results:
result1 = convolve(x1, 201, 101, x1, 201, 101);
result2 = convolve(x2, 201, 1, x2, 201, 1);
result3 = convolve(x1, 201, 101, x2, 201, 1);
%% 1st - x1[n] plot
figure
figure1 = stem(x1);
figure1.XData = xData;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]')
%% 1st - x2[n] plot
figure
figure2 = stem(x2);
figure2.XData = xData;
xlabel('time(t)')
ylabel('x[t]')
title('x2[n]')
%% 1st - x1[n]*x1[n] plot
figure
figure3 = stem(result1);
figure3.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]*x1[n]')
%% 1st - x2[n]*x2[n] plot
figure
figure4 = stem(result2);
figure4.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x2[n]*x2[n]')
%% 1st - x1[n]*x2[n] plot
figure
figure5 = stem(result3);
figure5.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]*x2[n]')

%% ################### 2nd Part: ################## 
%% 2nd x1[n] sample array :
x1 = zeros(1,201);
for i = 98:103
    x1(i) = 1;
end
%% 2nd x2[n] sample array:
x2 = zeros(1,201);
x2(111) = -14;
x2(91) = 7;
%% Convolve and plot the results:
result1 = convolve(x1, 201, 101, x1, 201, 101);
result2 = convolve(x2, 201, 1, x2, 201, 1);
result3 = convolve(x1, 201, 101, x2, 201, 1);
%% 2nd - x1[n] plot
figure
figure1 = stem(x1);
figure1.XData = xData;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]')
%% 2nd - x2[n] plot
figure
figure2 = stem(x2);
figure2.XData = xData;
xlabel('time(t)')
ylabel('x[t]')
title('x2[n]')
%% 2nd - x1[n]*x1[n] plot
figure
figure3 = stem(result1);
figure3.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]*x1[n]')
%% 2nd - x2[n]*x2[n] plot
figure
figure4 = stem(result2);
figure4.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x2[n]*x2[n]')
%% 2nd - x1[n]*x2[n] plot
figure
figure5 = stem(result3);
figure5.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]*x2[n]')

%%  ################### 3rd Part: ################## 
%% 3rd x1[n] sample array :
x1 = zeros(1,201);
counter = 25;
for i = 76:101
    x1(i) = 10*exp(-counter);
    counter = counter - 1;
end
counter = 1;
for i = 102:126
    x1(i) = 10*exp(-counter);
    counter = counter + 1;
end
%% 3rd x2[n] sample array:
x2 = zeros(1,201);
x2(98) = 4;
x2(101) = -8;
x2(104) = 4;
%% Convolve and plot the results:
result1 = convolve(x1, 201, 101, x1, 201, 101);
result2 = convolve(x2, 201, 1, x2, 201, 1);
result3 = convolve(x1, 201, 101, x2, 201, 1);
%% 3rd - x1[n] plot
figure
figure1 = stem(x1);
figure1.XData = xData;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]')
%% 3rd - x2[n] plot
figure
figure2 = stem(x2);
figure2.XData = xData;
xlabel('time(t)')
ylabel('x[t]')
title('x2[n]')
%% 3rd - x1[n]*x1[n] plot
figure
figure3 = stem(result1);
figure3.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]*x1[n]')
%% 3rd - x2[n]*x2[n] plot
figure
figure4 = stem(result2);
figure4.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x2[n]*x2[n]')
%% 3rd - x1[n]*x2[n] plot
figure
figure5 = stem(result3);
figure5.XData = xData2;
xlabel('time(t)')
ylabel('x[t]')
title('x1[n]*x2[n]')