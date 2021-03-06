from pyexcel_xls import save_data
from ordereddict import OrderedDict

filename = 'census2001'
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
	line.remove(line[3])
	line.remove(line[3])
	line.remove(line[0])
	line.insert(0, state)
	line[1] = line[1].replace(',', '')
	line = line[:4]	
	k.append(line)

f.close()

data.update({"Sheet 1": k})
save_data("population_census2001.xls", data)
