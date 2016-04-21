import cx_Oracle as cx

def logme(name):
	name = ''.join(name)

	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()

	query = 'SELECT * FROM USERTABLE'
	c.execute(query)

	users = []
	for n in c:
		users.append(n)

	for user in users:
		if user[1] == name:
			return 1
	return 0
