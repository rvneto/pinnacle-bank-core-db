CREATE TABLE account_transaction (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    account VARCHAR(6) NOT NULL,
    launch_code_acronym VARCHAR(50) NOT NULL,
    transaction_date DATE NOT NULL,
    value DECIMAL(19, 2) NOT NULL,
    username VARCHAR(100) NOT NULL,
    creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted ENUM('Y', 'N') DEFAULT 'N',
    FOREIGN KEY (account) REFERENCES account(account),
    FOREIGN KEY (launch_code_acronym) REFERENCES launch_codes(acronym),
    FOREIGN KEY (username) REFERENCES users(username)
);
