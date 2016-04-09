import cx_Oracle as cx
import pyexcel_xls as ex

def main():
	# string = raw_input('user_id/password@XE')	
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Topological_Crime_Analysis/Crime_data'
	conn = cx.connect(string)
	c = conn.cursor()
	
	ra = fetchingdata(path, c)
	conn.commit()

def fetchingdata(path, c):
	filename = 'crime_count_women_2013.xls'
	ra = ex.get_data(path + '/' + filename)
	flag = False # leaving the headers

	c_id = currc_id(c, 'crime')
	
	no = 0

	for row in ra:
		if flag == False:
			flag = True
		else:
			state = row[0].encode('utf-8')
			type_crime = row[1].encode('utf-8')
			count_arr = []# row[2]
			year_arr = [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012]

			for i in range(2, 14):				
				count_arr = count_arr.appen(ra[i])

			
			if(state == 'Total (All-India)'):
				continue
			for i in range(12):
				query = 'INSERT INTO CRIME VALUES(\'' + str(c_id) + '\',\'' + state + '\',\'' + type_crime + '\',' + `year[i]` + ',' + `count[i]` + ')'
				c.execute(query)
				no += 1
				c_id += 1

	print no , "Rows inserted."


def curr_id(c, table):
	c.execute('Select max(c_id) from', table)

	for out in c:
		c_id = out

	c_id = c_id[0]

	return c_id + 1
	# because the c_id will start from + 1


if __name__ == '__main__':
	main()