CREATE TABLE titles
(
	isbn VARCHAR(20) NOT NULL,
    title VARCHAR(100),
    editionNumber INT,
    copyright VARCHAR(4),
    publisherId INT,
    imageFile VARCHAR(100),
    price DOUBLE,
    summary VARCHAR(200),
PRIMARY KEY(isbn));