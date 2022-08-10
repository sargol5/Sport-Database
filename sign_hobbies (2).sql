SELECT dblink_connect('host=localhost user=postgres password=1234 dbname=postgres');

select * from  dblink('dbname=postgres host=localhost 
		user=postgres password=1234', 'SELECT * from sign_up')
		AS DATA(phone CHARACTER VARYING,otp integer );
INSERT INTO hobbies select * from  dblink('dbname=postgres host=localhost 
		user=postgres password=1234', 'SELECT * from hobbies')
		AS data(hobbies_id integer ,name_of_hobby character VARYING,description character VARYING,created_date timestamp, 
				created_by integer, updated_date timestamp, updated_by integer);
SELECT dblink_disconnect();