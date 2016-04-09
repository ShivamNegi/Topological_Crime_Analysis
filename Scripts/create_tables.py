import cx_Oracle as cx

def main():
	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()

	createliteracy(c)
	conn.commit()

	createpolice(c)
	conn.commit()

	createcrime(c)
	conn.commit()

	createpopulation(c)
	conn.commit()

	createmishap(c)
	conn.commit()

	creategrouping(c)
	conn.commit()


def createcrime(c):
	query = '''
			create table crime(
			c_id varchar2(20) primary key,
			p_id varchar2(20),
			state varchar2(20),
			type varchar2(200),
			year number(4),
			count number(10),
			foreign key (p_id) references population
			)
			'''
	print 'Crime table created.'
	c.execute(query)


def createpopulation(c):
	query = '''
			create table population(
			p_id varchar2(20) primary key,
			state varchar2(20) not null,
			year number(4) not null,
			sex_ratio_m_f numeric(6, 2) default 1000,
			count_million numeric(5, 2),
			change_factor numeric(3, 1),
			foreign key(state, year) references literacy,
			foreign key(state, year) references police
			)			
			'''
	print 'Population table created.'
	c.execute(query)


def createpolice(c):
	query = '''
			create table police(
			state varchar2(20),
			year number(4),
			per_100_km number(4),
			count_thousand numeric(5, 2),
			primary key(state, year)
			)
			'''
	print 'Police table created.'
	c.execute(query)


def createliteracy(c):
	query = '''
			create table literacy(
			state varchar2(20) ,
			year number(4) ,
			percent numeric(4, 2),
			primary key(state, year)
			)
			'''
	print 'literacy table created.'
	c.execute(query)


def createmishap(c):
	query = '''
			create table mishap(
			id_e varchar2(10) primary key,
			year number(4) not null,
			description varchar(50))
			'''
	print 'Mishap table created.'
	c.execute(query)


def creategrouping(c):
	query = '''
			create table grouping(
			gp_name varchar(20) primary key,
			p_id varchar2(20),
			c_id varchar2(20),
			id_e varchar2(10),
			state varchar2(20) not null,
			year number(4) not null,
			type varchar2(20) not null,
			foreign key (id_e) references mishap,	
			foreign key(p_id) references population,
			foreign key(state, year) references literacy,
			foreign key(state, year) references police,
			foreign key(c_id) references crime)
			'''
	print 'Grouping table created.'
	c.execute(query)	
	

if __name__ == '__main__':
	main()
