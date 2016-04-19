function[] = literacy(state)

    years = (2001:10:2011);
    data = xlsread('/home/negi/Documents/Matlab-Crime-Analysis/1951-2011_literacy_rates.xls');
    
    states = {' Andhra Pradesh',' Arunachal Pradesh',...
    ' Assam',...
    ' Bihar',...
    ' Chhattisgarh',...
    ' Goa',...
    ' Gujarat',...
    ' Haryana',...
    ' Himachal Pradesh',...
    ' Jammu and Kashmir',...
    ' Jharkhand',...
    ' Karnataka',...
    ' Kerala',...
    ' Madhya Pradesh',...
    ' Maharashtra',...
    ' Manipur',...
    ' Meghalaya',...
    ' Mizoram',...
    ' Nagaland',...
    ' Orissa',...
    ' Punjab',...
    ' Rajasthan',...
    ' Sikkim',...
    ' Tamil Nadu',...
    ' Tripura',...
    ' Uttar Pradesh',...
    ' Uttarakhand',...
    ' West Bengal',...
    ' Andaman and Nicobar Islands',...
    ' Chandigarh',...
    ' Dadra and Nagar Haveli',...
    ' Daman and Diu',...
    ' Delhi',...
    ' Lakshadweep',...
    ' Puducherry'};

    lit = data(state, 6:7);
    
    figure (1)
    hFig = figure(1);
    set(hFig, 'Position', [620 420 800 600])
    bar(lit);
    xlabel('\bf Year','FontSize', 15);
    ylabel('\bf Percentage', 'FontSize', 15);
    title(strcat('Literacy in',states(state)), 'FontSize', 18);
    set(gca, 'XTick', 6:7, 'XTickLabel', years, 'XTickLabelRotation', 45);
    grid on
                
end