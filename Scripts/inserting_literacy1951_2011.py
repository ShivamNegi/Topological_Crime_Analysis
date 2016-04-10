import cx_Oracle as cx
import pyexcel_xls as ex

def main():
	# string = raw_input('user_id/password@XE')	
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Topological_Crime_Analysis/Literacy'
	conn = cx.connect(string)
	c = conn.cursor()
	
	ra = fetchingdata(path, c)
	conn.commit()
	print '-' * 60
	print '\t\tLITERACY TABLE INSERTED.'
	print '-' * 60

def fetchingdata(path, c):
	filename = '1951-2011_literacy_rates.xls'
	ra = ex.get_data(path + '/' + filename)
	flag = 0 
	no = 0

	for row in ra:
		if flag < 4 or flag > 38:
			pass
		else:
			state = row[1].encode('utf-8')
			count_arr = []
			year_arr = [1951, 1961, 1971, 1981, 1991, 2001, 2011]
			for i in range(2, 9):
				count_arr.append(row[i])	
			
			for i in range(7):
				query = 'INSERT INTO LITERACY VALUES(\'' + state + '\',' + `year_arr[i]` + ',' + `count_arr[i]` + ')'
				c.execute(query)
				no += 1
		flag += 1


	print no , "Rows inserted."

if __name__ == '__main__':
	main()
