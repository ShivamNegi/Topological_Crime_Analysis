from pyexcel_xls import save_data
from ordereddict import OrderedDict

filename = 'census11'
f = open(filename, 'r')

data = OrderedDict()


k = []
for line in f.readlines():
	line = line.split()
	state = ''
	flag = False

	for word in line:				
		if word.isalpha() and not (word == 'State' or word == 'UT'):
			if flag:
				state = state + ' ' + word
			else:
				state = word
				flag = True
	# print state

	# removing sl no
	line.remove(line[0])

	# removing name of state
	for i in range(state.count(' ')):
		line.remove(line[0])

	line.remove(line[1])
	line.remove(line[3])
	line.remove(line[3])
	line.remove(line[0])
	line.insert(0, state)
	line[1] = line[1].replace(',', '')
	line = line[:4]
	print line

	k.append(line)

f.close()

data.update({"Sheet 1": k})
data.update({"Sheet 2": [["row 1", "row 2", "row 3","row 4"]]})
save_data("population_census2011.xls", data)
