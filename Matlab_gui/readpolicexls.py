import cx_Oracle as cx
from pyexcel_xls import save_data
from ordereddict import OrderedDict

data = OrderedDict()
string = 'system/breakwindows@XE'
conn = cx.connect(string)
c = conn.cursor()

query = 'SELECT STATE, STRENGTH FROM POLICE WHERE YEAR = 2001'
c.execute(query)

ra = []

# Fetching data from oracle
for n in c:
	ra.append(n)


#Converting tuple to list
for i in range(len(ra)):
	ra[i] = list(ra[i])


query = 'SELECT STRENGTH FROM POLICE WHERE YEAR = 2011'
c.execute(query)

# Fetchin data from oracle
for key, n in enumerate(c):
	ra[key].append(n[0])

data.update({"Sheet 1": ra})
save_data("/home/negi/Documents/Topological_Crime_Analysis/Police/testing.xls", data)
