import cx_Oracle as cx

def main():
	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()
	c.execute('select * from names')
	for row in c:
		print row

if __name__ == '__main__':
	main()