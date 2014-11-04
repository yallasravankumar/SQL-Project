# Querying all data in a table
select * from studentdata;
select * from parentdetails;
select * from studenteducationdata;
select * from entranceresults;


# Querying the structure of the table
describe studentdata;
describe parentdetails;
describe studenteducationdata;
describe entranceresults;

# Simple Query
# Find student ID, student name and student's GPA 
# whose GPA is greater than 3.6

select 	rollnumber,firstname,gpa
from 	studentdata
where 	gpa < 3.6;

# Let us do a 'cross product' of college and student
# Let us see how the output looks like

select	*
from	studentdata,entranceresults
where	studentdata.rollnumber = entranceresults.rollnumber;

# Simple Joinsapply
# What colleges and majors did each of the student apply to?
select firstname,entrancetest,entrancepercentile
from studentdata,entranceresults
where studentdata.rollnumber = entranceresults.rollnumber;

# Using aliases for tables
select firstname,fathername,location
from studentdata s, parentdetails p
where s.rollnumber = p.rollnumber;

select firstname, specialization,attendance
from studentdata s,studenteducationdata se
where s.rollnumber =  se.rollnumber;

# Distinct values
select  distinct firstname, specialization
from studentdata s,studenteducationdata se
where s.rollnumber = se.rollnumber;

select rollnumber,firstname,gpa
from studentdata
where firstname like "C%";

