import cx_Oracle as cx


def main():
	tablenames = ['Crime', 'Population', 'Police', 'Literacy', 'Mishap', 'Grouping', 'usertable', 'totalcrime']
	# string = raw_input('user_id/password@XE: ')
	string = 'system/breakwindows@XE'

	conn = cx.connect(string)
	c = conn.cursor()

	droptables(c, tablenames)
	conn.commit()

	print '-' * 60
	print '\t\tALL TABLES DROPPED.'
	print '-' * 60


def droptables(c, tablenames):
	for name in tablenames:
		try:
			c.execute('drop table ' + name + ' cascade constraints')
			print name, 'table deleted.'
		except:
			print name, 'table does not exist.'

if __name__ == '__main__':
	main()
