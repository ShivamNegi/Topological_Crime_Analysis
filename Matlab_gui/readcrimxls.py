import cx_Oracle as cx

string = 'system/breakwindows@XE'
conn = cx.connect(string)
c = conn.cursor()

query = 'SELECT * FROM CRIME order by c_id'
c.execute(query)

ra = []

for n in c:
	ra.append(n)

print ra
