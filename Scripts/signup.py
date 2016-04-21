import cx_Oracle as cx

def main():
	string = 'system/breakwindows@XE'
	conn = cx.connect(string)
	c = conn.cursor()


if __name__ == '__main__':
	main()