function[r, g, b] = getcolor(data)
m = max(data);
r = zeros(1,35);
g = zeros(1,35);
b = zeros(1,35);

for i = 1:35
    if(data(i)/m >0.9)
        r(i) = 0;
        g(i) = 51 / 255;
        b(i) = 102 / 255;
    elseif(data(i)/m>0.7)
        r(i) = 0;
        g(i) = 102 / 255;
        b(i) = 204/ 255;
    elseif(data(i)/m>0.5)
        r(i) = 51 / 255;
        g(i) = 153 / 255;
        b(i) = 1;
    else
        r(i) = 153 / 255;
        g(i) = 204/255;
        b(i) = 1;
    end
    
end
end