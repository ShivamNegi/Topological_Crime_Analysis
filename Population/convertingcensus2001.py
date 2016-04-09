f = open('census01', 'r')

for line in f.readlines():
	line = line.split('|')
	line[3] = line[3][:len(line[3]) - 2]
	print line

f.close()