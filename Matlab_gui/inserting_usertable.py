import cx_Oracle as cx

def inp(name, state):
	state = int(state)
	name = ''.join(name)

	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()

	query = 'SELECT * FROM USERTABLE'
	c.execute(query)

	users = []
	for n in c:
		users.append(n)

	u_id = len(users) + 1

	query = 'INSERT INTO USERTABLE VALUES(\'' + `u_id` + '\',\'' + name + '\',' + `state` + ')'
	c.execute(query)
	conn.commit()

	print 'User Created'