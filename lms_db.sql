
CREATE TABLE User_Details (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
    verified BOOLEAN DEFAULT FALSE,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100) NOT NULL
);

