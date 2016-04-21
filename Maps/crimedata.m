function[a] = crimedata(type,year)
d = xlsread('crimes_count_women_01_12.xls');
start = 36*(type-1) + 1;
ending = 36*(type-1) + 35;
a = d(start:ending,year);
end