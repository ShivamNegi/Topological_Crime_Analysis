function[c] = getcolor(data)
m = max(data);
c = zeros(1,35);

for i = 1:35
    if(data(i)/m >0.9)
        c(i) = 1;
    elseif(data(i)/m>0.7)
        c(i) = 0.8;
    elseif(data(i)/m>0.5)
        c(i) = 0.6;
    else
        c(i) = 0.2;
    end
    
end
end