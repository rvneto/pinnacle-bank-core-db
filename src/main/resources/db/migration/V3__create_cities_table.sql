-- Tabela cities
CREATE TABLE cities (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    ibge VARCHAR(8),
    state_id BIGINT NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id)
);