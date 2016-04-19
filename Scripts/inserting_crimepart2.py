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
	print '-' * 60
	print '\t\tCRIME TABLE INSERTED.'
	print '-' * 60

def fetchingdata(path, c):
	filename = 'crimes_count_women_01n11_part2.xls'
	ra = ex.get_data(path + '/' + filename)
	flag = False # leaving the headers

	no = 0
	c_id = 1
	g_id01 = 1
	g_id11 = 37

	for row in ra:
		if flag == False:
			flag = True
		else:
			state = row[0].encode('utf-8')
			type_crime = row[1].encode('utf-8')

			query = 'INSERT INTO CRIME VALUES(\'' + str(c_id) + '\',\'' + str(g_id01) + '\',\'' + str(g_id01) + '\',\'' + state + '\',\'' + type_crime + '\',' + `2001` + ',' + `row[2]` + ')'
			c.execute(query)
			c_id += 1

			query = 'INSERT INTO CRIME VALUES(\'' + str(c_id) + '\',\'' + str(g_id11) + '\',\'' + str(g_id11) + '\',\'' + state + '\',\'' + type_crime + '\',' + `2011` + ',' + `row[3]` + ')'
			c.execute(query)
			c_id += 1

			if g_id01 == 36:
				g_id01 = 1
				g_id11 = 37

			no += 2

	print no , "Rows inserted."

if __name__ == '__main__':
	main()