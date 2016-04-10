import cx_Oracle as cx
import pyexcel_xls as ex

def main():
	# string = raw_input('user_id/password@XE')	
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Topological_Crime_Analysis/Police'
	conn = cx.connect(string)
	c = conn.cursor()
	
	fetchingdata(path, c)
	conn.commit()
	print '-' * 60
	print '\t\tPOLICE TABLE INSERTED.'
	print '-' * 60

def fetchingdata(path, c):
	filename = 'police_strength_state_2011_xls.xls'
	ra = ex.get_data(path + '/' + filename)
	flag = False # leaving the headers
	p_id = 36
	pol_id = 36
	no = 0

	for row in ra:
		if flag == False:
			flag = True
		else:
			state = row[0].encode('utf-8')
			strength = int(row[1])
			per100 = float(row[2])
			year = 2011			
			query = 'INSERT INTO POLICE VALUES(\'' + str(pol_id) + '\',\'' + str(p_id) + '\',\''+ state + '\',' + `year` + ',' + `per100` +  ',' + `strength` +')'
			c.execute(query)
			no += 1
			p_id += 1
			pol_id += 1
	print no , "Rows inserted."

if __name__ == '__main__':
	main()