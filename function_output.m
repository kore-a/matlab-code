
function[timeclock,x,y,xdot,ydot]= function_output(time,timestep,x,y) %time is in seconds, x & y is within 8x8.
distance=0;
count=1;
xdot=[];
ydot=[];
timeclock=[];
for i=0:timestep:time
    timeclock(count)=i;
    count=count+1;
    x=[x randi([0 8])];
    y=[y randi([0 8])];
    distanc_x=distance+sqrt((x(count)-x(count-1))^2+(y(count)-y(count-1))^2);
    distance_y
    xdot=distance_y/time; 
    ydotdistance_x/time;
end

end
% %% change velocity to time, make time steps 0.1 seconds, make time steps a variable that 
% would pass to the function. 
% condition: once the x and y are outside the 8*8 parameter change it back inside to 8*8.
% use to the random number function scale, multiplied by by 0.1
% xdot= change in location/time (for x)

