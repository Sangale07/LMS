
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

CREATE TABLE Fellowship_Candidate (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cic_id VARCHAR(255), 
    first_name VARCHAR(100),
    middle_name VARCHAR(100),
    last_name VARCHAR(100),
    email_id VARCHAR(255),
    hired_city VARCHAR(100),
    degree VARCHAR(100),
    hired_date DATE,
    mobile_number VARCHAR(15),
    permanent_pincode VARCHAR(10),
    hired_lab VARCHAR(100),
    attitude TEXT,
    communication_remark TEXT,
    knowledge_remark TEXT,
    aggregate_remark TEXT,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100),
    birth_date DATE,
    is_birth_date_verified BOOLEAN,
    parent_name VARCHAR(255),
    parent_occupation VARCHAR(255),
    parents_mobile_number VARCHAR(15),
    parents_annual_salary DECIMAL(15, 2),
    local_address TEXT,
    permanent_address TEXT,
    photo_path VARCHAR(255),
    joining_date DATE,
    candidate_status VARCHAR(50),
    personal_information TEXT,
    bank_information TEXT,
    educational_information TEXT,
    document_status VARCHAR(50),
    remark TEXT
);

CREATE TABLE Candidate_Bank_Details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    candidate_id INT,
    name VARCHAR(255),
    account_number VARCHAR(20),
    is_account_num_verified BOOLEAN,
    ifsc_code VARCHAR(11),
    is_ifsc_code_verified BOOLEAN,
    pan_number VARCHAR(10),
    is_pan_number_verified BOOLEAN,
    aadhaar_num VARCHAR(12),
    is_aadhaar_num_verified BOOLEAN,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);

CREATE TABLE Candidate_Qualification (
    id INT AUTO_INCREMENT PRIMARY KEY,
    candidate_id INT,
    diploma VARCHAR(255),
    degree_name VARCHAR(255),
    is_degree_name_verified BOOLEAN,
    employee_discipline VARCHAR(255),
    is_employee_discipline_verified BOOLEAN,
    passing_year INT,
    is_passing_year_verified BOOLEAN,
    aggr_per DECIMAL(5,2),
    is_aggr_per_verified BOOLEAN,
    final_year_per DECIMAL(5,2),
    is_final_year_per_verified BOOLEAN,
    training_institute VARCHAR(255),
    is_training_institute_verified BOOLEAN,
    training_duration_month INT,
    is_training_duration_month_verified BOOLEAN,
    other_training VARCHAR(255),
    is_other_training_verified BOOLEAN,
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);

CREATE TABLE Candidate_Documents (
    id INT AUTO_INCREMENT PRIMARY KEY,
    candidate_id INT,
    doc_type VARCHAR(255),
    doc_path VARCHAR(255),
    status ENUM('Pending', 'Received'),
    creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    creator_user VARCHAR(100)
);



