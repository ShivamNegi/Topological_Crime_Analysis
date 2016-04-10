import cx_Oracle as cx

def main():
	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()

	createliteracy(c)
	conn.commit()

	createpopulation(c)
	conn.commit()

	createpolice(c)
	conn.commit()

	createcrime(c)
	conn.commit()

	createmishap(c)
	conn.commit()

	creategrouping(c)
	conn.commit()

	print '-' * 60
	print '\t\tALL TABLES CREATED.'
	print '-' * 60


def createcrime(c):
	query = '''
			create table crime(
			c_id varchar2(20) primary key,
			p_id varchar2(20),
			pol_id varchar2(20),
			state varchar2(30),
			type varchar2(200),
			year number(4),
			count number(10),
			foreign key (p_id) references population,
			foreign key (pol_id) references police
			)
			'''
	c.execute(query)
	print 'Crime table created.'


def createpopulation(c):
	query = '''
			create table population(
			p_id varchar2(20) primary key,
			state varchar2(30) not null,
			year number(4) not null,
			sex_ratio_m_f numeric(4) default 1000,
			count numeric(10),
			change_factor numeric(4, 2),
			foreign key(state, year) references literacy
			)			
			'''
	c.execute(query)
	print 'Population table created.'


def createpolice(c):
	query = '''
			create table police(
			pol_id varchar2(20) primary key,
			p_id varchar2(20),
			state varchar2(30),
			year number(4),
			per_100sq_km number(6, 2),
			strength numeric(6),
			foreign key (p_id) references population
			)
			'''
	c.execute(query)
	print 'Police table created.'


def createliteracy(c):
	query = '''
			create table literacy(
			state varchar2(30) ,
			year number(4) ,
			percent numeric(5, 2),
			primary key(state, year)
			)
			'''
	c.execute(query)
	print 'literacy table created.'


def createmishap(c):
	query = '''
			create table mishap(
			id_e varchar2(10) primary key,
			year number(4) not null,
			description varchar(50))
			'''
	c.execute(query)
	print 'Mishap table created.'


def creategrouping(c):
	query = '''
			create table grouping(
			gp_name varchar(20) primary key,
			pol_id varchar2(20),
			p_id varchar2(20),
			c_id varchar2(20),
			id_e varchar2(10),
			state varchar2(30) not null,
			year number(4) not null,
			foreign key (id_e) references mishap,	
			foreign key(p_id) references population,
			foreign key(state, year) references literacy,
			foreign key(pol_id) references police,
			foreign key(c_id) references crime)
			'''
	c.execute(query)	
	print 'Grouping table created.'
	

if __name__ == '__main__':
	main()