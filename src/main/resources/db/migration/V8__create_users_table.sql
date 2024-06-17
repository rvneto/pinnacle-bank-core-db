CREATE TABLE users (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    user_level_id BIGINT NOT NULL,
    deleted ENUM('Y', 'N') DEFAULT 'N',
    FOREIGN KEY (user_level_id) REFERENCES users_levels(id)
);
