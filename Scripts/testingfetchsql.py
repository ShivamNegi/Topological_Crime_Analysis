import cx_Oracle as cx
import pyexcel_xls as ex


def main():
	string = 'system/breakwindows@XE'
	path = '/home/negi/Documents/Topological_Crime_Analysis/Crime_data'
	conn = cx.connect(string)
	c = conn.cursor()