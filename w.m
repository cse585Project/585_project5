function [xp,yp] = w(x,y,k)
%W Summary of this function goes here
%   Detailed explanation goes here
if k == 1
    res = [0,0;0,0.16]*[x;y];
elseif k == 2
    res = [0.2,-0.26;0.23,0.22]*[x;y]+[0;1.6];
elseif k == 3
    res = [-0.15,0.28;0.26,0.24]*[x;y]+[0;0.44];
else
    res = [0.85,0.04;-0.04,0.85]*[x;y]+[0;1.6];
end

xp = res(1);
yp = res(2);


end

