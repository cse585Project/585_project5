L = 1024;
M = 1024;

xmin = -4;
xmax = 4;
ymin = 0;
ymax = 8;

Imax = 0;
I = zeros(L,M);

num = 10000000;
P = [0,0.35,0.35,0.3];

% init x,y
x = 0;
y = 0;

for i=1:num
    r = rand();
    sum = P(1);
    k = 1;
    while sum < r
        k = k+1;
        sum = sum + P(k);
    end
    [x,y] = w(x,y,k);
    if (xmin <= x) && (x <= xmax) && (ymin <= y) && (y <= ymax)
        l = floor(L * (x-xmin) / (xmax-xmin))+1;
        m = floor(M * (y-ymin) / (ymax-ymin))+1;
        I(l,m) = I(l,m) + 1;
        Imax = max(Imax, I(l,m));
    end
end

I(I>0)=1;
I = ~I;
I = rot90(I,1);
imshow(I,[]);