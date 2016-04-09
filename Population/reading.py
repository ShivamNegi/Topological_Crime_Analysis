import csv

f = open('census01', 'r')

with open('something.csv', 'w+', newline='') as csvfile:
   	spamwriter = csv.writer(csvfile, delimiter=' ',
        	                    quotechar='|', quoting=csv.QUOTE_MINIMAL)
   	spamwriter.writerow(['teach','shivam was here'])

f.close()
