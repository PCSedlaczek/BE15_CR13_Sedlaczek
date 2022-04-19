CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR (30) NOT NULL
);

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
  img VARCHAR (100),
  url VARCHAR (255),
  FOREIGN KEY (location_id) REFERENCES location(id),
);

CREATE TABLE event (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  subtitle VARCHAR (100),
  type SET,
  category_id INT,
  price DECIMAL (6,2),
  capacity INT,
  organizer_id INT,
  location_id INT,
  date DATE NOT NULL,
  start TIME,
  end TIME,
  lead VARCHAR (255),
  description TEXT,
  img VARCHAR (100),
  url VARCHAR(255),
  FOREIGN KEY (organizer_id) REFERENCES organizer(id)
  FOREIGN KEY (location_id) REFERENCES location(id),
  FOREIGN KEY (category_id) REFERENCES category(id)
);