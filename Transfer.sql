
--First, dump the source database to a file.
--
--
--

1-
select * into sportner.skill_level table
from postgres.skill_level table;
2-
pg_dump -t skill_level postgres | psql sportner;

3-

SELECT tgrelid::regclass
     , tgname
     , pg_get_triggerdef(oid)
     , pg_get_functiondef(tgfoid)
FROM   pg_trigger
WHERE  tgrelid = 'public.skill_level'::regclass;
--COPY persons
--FROM 'C:\person.csv' DELIMITER ',' CSV HEADER;
 4-

 pg_dump -C -t skill_level postgres | skill_level -U sportner;

 5- pg_dump sportner > C:/Users/sara/Desktop/enteghal3.sql;
 psql -d newdb -f db.sql

 6-pg_dump -U postgres -O sportner sportner.sql;
--psql -d <postgres> <C:/Users/sara/Desktop/enteghal2.sql>;

--maghsad targetdb
--psql -U postgres -d sportner -f postgres.sql 

7-pg_dump postgres > C:/Users/sara/Desktop/enteghal3.sql;
--COPY enteghal3
--FROM 'C:/Users/sara/Desktop/enteghal3.sql' DELIMITER ',' CSV HEADER;

$ pg_dump -U <postgres_user_name> db_name > db_name1.sql`

8- COPY [ BINARY ] skill_level
    FROM { 'filename' | STDIN }
    [ [USING] DELIMITERS 'delimiter_character' ]
    [ WITH NULL AS 'null_string' ]

nemifahmam chie

9--- Forecast.copy_to '/tmp/forecast.csv'
COPY (SELECT "skill_level".* FROM "postgres")
--TO 'C:\Users\sara\Desktop\e.csv'
WITH DELIMITER ';' CSV HEADER;

10- Oh, I see.
Well, if you know where your binaries are located, just prefix the path to "pg_dump" and "psql" in my example above and it should work...
So "pg_dump" -> "C:\Program Files\Postgresql\bin\pg_dump" 
(the actual path is probably different!)

11- pg_dump olddb -t table | psql newdb