
function[timeclock,x,y,xdot,ydot]= function_output(time,timestep,x,y) %time is in seconds, x & y is within 8x8.
count=1;
xdot=[];
ydot=[];
timeclock=[];
for i=0:timestep:time
    timeclock(count)=i;
    count=count+1;
    x=[x randi([0 8])];
    y=[y randi([0 8])];
    distance_x= dist(x);
    distance_y= dist(y);
    xdot=distance_y/time; 
    ydot=distance_x/time;
end
plot(x,y)
end

% %% 
% add condition: once the x and y are outside the 8*8 parameter change it back inside to 8*8.
% use the random number function scale, multiplied by by 0.1

