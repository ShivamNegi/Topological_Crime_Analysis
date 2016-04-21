import drop_tables
import create_tables
import inserting_literacy1951_2011
import inserting_population01
import inserting_population11
import inserting_police01
import inserting_police11
import inserting_crimepart1
import inserting_crimepart2
import inserting_totalcrime
# import inserting_totalcrime13


drop_tables.main()
create_tables.main()
inserting_literacy1951_2011.main()
inserting_population01.main()
inserting_population11.main()
inserting_police01.main()
inserting_police11.main()
inserting_crimepart1.main()
inserting_crimepart2.main()
inserting_totalcrime.main()
# inserting_totalcrime13.main()

print '*' * 60
print '\t\tDATABASE CONFIGURED.'
print '*' * 60