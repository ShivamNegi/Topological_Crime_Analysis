import cx_Oracle as cx
import pyexcel_xls as ex

def main():
	# string = raw_input('user_id/password@XE')	
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Topological_Crime_Analysis/Population'
	conn = cx.connect(string)
	c = conn.cursor()
	
	fetchingdata(path, c)
	conn.commit()

def fetchingdata(path, c):
	filename = 'population_census2001.xls'
	ra = ex.get_data(path + '/' + filename)
	flag = False # leaving the headers
	p_id = 1
	no = 0

	for row in ra:
		if flag == False:
			flag = True
		else:
			state = row[0].encode('utf-8')
			population = int(row[1])
			change_factor = float(row[2])
			sex_ratio = int(row[3])
			year = 2001			
			query = 'INSERT INTO POPULATION VALUES(\'' + str(p_id) + '\',\'' + state + '\',' + `year` + ',' + `sex_ratio` + ',' + `population` + ',' + `change_factor` + ')'
			c.execute(query)
			no += 1
			p_id += 1
	print no , "Rows inserted."

if __name__ == '__main__':
	main()