CREATE TABLE account (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    agency VARCHAR(4) NOT NULL,
    account VARCHAR(6) UNIQUE NOT NULL,
    balance DECIMAL(19, 2) DEFAULT 0.00,
    customer_id BIGINT NOT NULL,
    creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
