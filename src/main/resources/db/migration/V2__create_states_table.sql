-- Tabela states
CREATE TABLE states (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    acronym VARCHAR(2),
    country_id BIGINT NOT NULL,
    FOREIGN KEY (country_id) REFERENCES countries(id)
);


