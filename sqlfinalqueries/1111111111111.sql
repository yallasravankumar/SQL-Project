load data infile 'studentdata.csv'
into table studentdata
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
load data infile 'studenteducationdata.csv'
into table studenteducationdata
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
load data infile 'entrance results.csv'
into table entranceresults
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
load data infile 'parentdetails.csv'
into table parentdetails
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
