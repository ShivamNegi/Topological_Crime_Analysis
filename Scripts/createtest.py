import cx_Oracle as cx

def main():
	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()
	query = '''create table crime(
			c_id varchar2(20) primary key,
			state varchar2(20),
			type varchar2(20),
			year number(4),
			count number(10))
			'''
	c.execute(query)
	conn.commit()

if __name__ == '__main__':
	main()