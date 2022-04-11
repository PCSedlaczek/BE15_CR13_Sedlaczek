CREATE TABLE location (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR (50) NOT NULL,
  address VARCHAR(100),
  zip INT(10),
  city VARCHAR(45),
  country VARCHAR(53) DEFAULT 'Austria',
  url VARCHAR (255)
);

CREATE TABLE organizer (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR (50) NOT NULL,
  description TEXT,
  location_id INT,
  contact VARCHAR (50),
  email VARCHAR (255),
  phone VARCHAR (26),
  url VARCHAR (255),
  FOREIGN KEY (location_id) REFERENCES location(id),
);

CREATE TABLE event (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR (100) NOT NULL,
  type VARCHAR (50),
  date DATE,
  start TIME,
  end TIME,
  timezone VARCHAR (5) DEFAULT 'CEST',
  lead VARCHAR (255),
  description TEXT,
  capacity INT,
  organizer_id INT,
  location_id INT,
  category SET,
  price DECIMAL (6,2),
  img VARCHAR (100),
  url VARCHAR(255),
  FOREIGN KEY (location_id) REFERENCES location(id),
  FOREIGN KEY (organizer_id) REFERENCES organizer(id)
);