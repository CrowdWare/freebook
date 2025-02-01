
 CREATE TABLE account(
    uuid CHAR(52) NOT NULL PRIMARY KEY, 
    email varchar(250) NOT NULL, 
    publisher varchar(250) NOT NULL, 
    locale VARCHAR(2) NOT NULL,
    license char(7) NOT NULL,
    date DATETIME
);
