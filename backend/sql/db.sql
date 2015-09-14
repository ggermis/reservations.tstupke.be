CREATE TABLE `accounts` (
  _id INT(11) NOT NULL AUTO_INCREMENT,
  _name VARCHAR(255) NOT NULL,
  _password VARCHAR(255) NOT NULL,
  _email VARCHAR(255) NOT NULL,
  _role VARCHAR(255) NOT NULL,
  _token VARCHAR(255) DEFAULT NULL,
  _created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  _active TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS reservations (
  _id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  _entity VARCHAR(255) NOT NULL,
  _nr_of_people INT NOT NULL,
  _name VARCHAR(255) NOT NULL,
  _address VARCHAR(255) NOT NULL,
  _email VARCHAR(255) NOT NULL,
  _phone VARCHAR(255) NOT NULL,
  _arrival DATE NOT NULL,
  _departure DATE NOT NULL,
  _remarks TEXT,
  _created TIMESTAMP NOT NULL,
  _agreed BOOLEAN DEFAULT FALSE,
  _email_sent BOOLEAN DEFAULT FALSE,
  _status VARCHAR(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARACTER SET=utf8;