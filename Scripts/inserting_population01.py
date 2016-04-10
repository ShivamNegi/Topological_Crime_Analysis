import cx_Oracle as cx
import pyexcel_xls as ex

def main():
	# string = raw_input('user_id/password@XE')	
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Topological_Crime_Analysis/Population'
	conn = cx.connect(string)
	c = conn.cursor()
	
	ra = fetchingdata(path, c)
	conn.commit()

def fetchingdata(path, c):
	filename = 'population_census2001.xls'
	ra = ex.get_data(path + '/' + filename)
	flag = False # leaving the headers
	c_id = 1
	no = 0

	for row in ra:
		if flag == False:
			flag = True
		else:
			state = row[0].encode('utf-8')
			count_million = row[1] / 1000000.0
			chage_factor = row[2]
			sex_ratio = row[3]			
			year = 2013
			
			query = 'INSERT INTO CRIME VALUES(\'' + str(c_id) + '\',\'' + state + '\',\'' + type_crime + '\',' + `year` + ',' + `count` + ')'
			c.execute(query)
			no += 1
			c_id += 1

	print no , "Rows inserted."

if __name__ == '__main__':
	main()