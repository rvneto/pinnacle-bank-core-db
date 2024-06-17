CREATE TABLE client (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    city_id BIGINT NOT NULL,
    birth_date DATE,
    active ENUM('Y', 'N') DEFAULT 'Y',
    document VARCHAR(20) NOT NULL,
    float_pass_on INT,
    creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (city_id) REFERENCES cities(id),
    CHECK (active IN ('Y', 'N'))
);