function[d] = policedata(year)
if year == 2011
    d =  xlsread('police_strength_state_2011.xls');
else
    if year == 2001
        d = xlsread('police_2001_strength.xls');
    end
end
d = d(1:end,1);
end