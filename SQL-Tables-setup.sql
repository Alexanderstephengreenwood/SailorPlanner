/*Based on the http://www.mysqltutorial.org/mysql-date/ supports */

/* let's create a table to insert our sailors personal data eand series */
CREATE TABLE IF NOT EXISTS Sailor (
  sailor_id INT NOT NULL AUTO_INCREMENT,
  firstname VARCHAR(45) NOT NULL,
  lastname VARCHAR(45) NOT NULL,
  dob VARCHAR(45) NULL,
  licence VARCHAR(45)  NOT NULL,
  mobile VARCHAR(45)  NULL,
  email VARCHAR(45)  NOT NULL,
  password VARCHAR(255)  NOT NULL,
  salt VARCHAR(255)  NOT NULL,
  series VARCHAR(45)  NOT NULL,
  admin_rights INT(1)  NULL,
  PRIMARY KEY (sailor_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* Create the events for training or racing */
CREATE TABLE SailingDay (
  event_id int(2) NOT NULL,
  event_name varchar(45) NOT NULL,
  event_date date NOT NULL,
  event_location varchar(45) NOT NULL,
  event_series varchar(45) DEFAULT NULL,
  PRIMARY KEY (event_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/* This is where we insert each availablity (Tentative, Accepted, Declined) for each sailor */
CREATE TABLE IF NOT EXISTS Availability (
  availability_id INT NOT NULL AUTO_INCREMENT,
  sailor_id INT  NOT NULL,
  event_id INT  NOT NULL,
  availability VARCHAR(45)  NULL,
  PRIMARY KEY (availability_id)
) ENGINE=InnoDB CHARSET=utf8;