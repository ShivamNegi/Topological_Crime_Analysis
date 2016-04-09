import cx_Oracle as cx

def main():
	string = raw_input('user_id/password@XE')	
	conn = cx.connect(string)
	c = conn.cursor()
	createcrime(c)

def createcrime(c):
	query = """create table crime
			(c_id varchar2(20) primary key,
			state varchar2(20),
			type varchar2(20),
			year number(4),
			count number(10)
			);
			"""
	c.execute(query)
	c.commit()

if __name__ == '__main__':
	main()