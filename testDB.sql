CREATE TABLE sign_up(
phone varchar(20) Unique  Not Null,
OTP integer Not Null
);


CREATE TABLE account_type(
 account_type_id SERIAL PRIMARY KEY,
 name varchar(20) NOT NULL,
 description varchar(255),
 price varchar(50) DEFAULT 0, 
 validity Integer DEFAULT 0,    //shows  months 
 created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 created_by Integer,
 updated_date TIMESTAMP ,
 updated_by Integer
)

INSERT INTO account_type (name, description, price,validity,created_by)
VALUES ('Test_Account', 'for testing DB', '100', '2',1);