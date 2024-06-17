CREATE TABLE launch_codes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    acronym VARCHAR(5) NOT NULL UNIQUE,
    description VARCHAR(255) NOT NULL,
    operation ENUM('C', 'D') NOT NULL CHECK (operation IN ('C', 'D'))
);
