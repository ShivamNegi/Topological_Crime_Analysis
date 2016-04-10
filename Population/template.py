from pyexcel_xls import save_data
from ordereddict import OrderedDict

data = OrderedDict()

f = open('census01', 'r')

k = []
for (i, line) in enumerate(f.readlines()):
	line = line.split('|')
	line[2] = line[2]
	line[3] = line[3][:len(line[3]) - 2]
	line[1] = line[1].replace(',', '')
	k.append(line)

data.update({"Sheet 1": k})
data.update({"Sheet 2": [["row 1", "row 2", "row 3","row 4"]]})
save_data("your_file.xls", data)

f.close()
