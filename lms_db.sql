
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

CREATE TABLE Hired_Candidate (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    last_name VARCHAR(100) NOT NULL,
    email_id VARCHAR(255) NOT NULL UNIQUE,
    hired_city VARCHAR(100) NOT NULL,
    degree VARCHAR(100) NOT NULL,
    hired_date DATE NOT NULL,
    mobile_number VARCHAR(15) NOT NULL,
    permanent_pincode VARCHAR(10) NOT NULL,
    hired_lab VARCHAR(100) NOT NULL,
    attitude VARCHAR(255),
    communication_remark VARCHAR(255),
    knowledge_remark VARCHAR(255),
    aggregate_remark VARCHAR(255),
    status ENUM('Pending', 'Accepted', 'Rejected') DEFAULT 'Pending',
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user INT NOT NULL,  -- Foreign Key referencing User_Details
    FOREIGN KEY (creator_user) REFERENCES User_Details(Id)
);


