function[d] = policedata(year)
d =  xlsread('~/Documents/Topological_Crime_Analysis/Police/testing.xls');
if year == 2011
    d = d(1:end,1);
else
    if year == 2001
        d = d(1:end,2);
    end
end
end