function[d] = literacydata(year)
d = xlsread('1951-2011_literacy_rates.xls');
d = d(1:end,year);
end