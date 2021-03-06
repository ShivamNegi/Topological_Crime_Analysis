import cx_Oracle as cx
import pyexcel_xls as ex

def main():
	# string = raw_input('user_id/password@XE')	
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Matlab-Crime-Analysis'
	conn = cx.connect(string)
	c = conn.cursor()
	
	ra = fetchingdata(path, c)
	conn.commit()
	print '-' * 60
	print '\t\tTOTALCRIME TABLE INSERTED.'
	print '-' * 60

def fetchingdata(path, c):
	filename = 'crimes_count_women_01_12.xls'
	ra = ex.get_data(path + '/' + filename)

	no = 0
	c_id = 353
	g_id01 = 1
	g_id11 = 37

	for row in ra:
		state = row[0].encode('utf-8')
		type_crime = row[1].encode('utf-8')
		
		query = 'INSERT INTO TOTALCRIME VALUES(\'' + state + '\',\'' + type_crime + '\',' + `2013` + ',' + `row[2]` + ')'
		c.execute(query)
			
		no += 1

	print no , "Rows inserted."

if __name__ == '__main__':
	main()