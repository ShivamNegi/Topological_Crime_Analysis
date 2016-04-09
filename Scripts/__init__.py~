import cx_Oracle as cx


def main():
	tablenames = ['Crime', 'Population', 'Police', 'Literacy', 'Mishap', 'Group']
	string = raw_input('user_id/password@XE')

	conn = cx.connect(string)
	c = conn.cursor()

	droptables(c, tablenames)

	createcrime(c)
	createpopulation(c)
	createpolice(c)
	createliteracy(c)
	createmishap(c)
	creategroup(c)

	conn.commit()


def droptables(c, tablenames):
	for name in tablenames:
		try:
			c.execute('drop table ' + name)
			print name, 'table deleted.'
		except:
			print name, 'table does not exist.'


def createcrime(c):
	query = '''
			create table crime(
			c_id varchar2(20) primary key,
			state varchar2(20),
			type varchar2(20),
			year number(4),
			count number(10))
			'''
	c.execute(query)

def createpopulation(c):
	query = '''			
			'''
def createpolice(c):
	query = '''
			'''
	c.execute(query)

def createliteracy(c):
	query = '''
			'''
	c.execute(query)

def createmishap(c):
	query = '''
			'''
	c.execute(query)

def creategroup(c):
	query = '''
			'''
	c.execute(query)


if __name__ == '__main__':
	main()