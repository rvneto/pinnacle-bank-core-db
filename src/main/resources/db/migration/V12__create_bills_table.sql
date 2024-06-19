CREATE TABLE bills (
    id SERIAL PRIMARY KEY,
    branch VARCHAR(4) NOT NULL,
    customer_id INT REFERENCES customers(id),
    barcode VARCHAR(44) NOT NULL,
    issue_date DATE,
    due_date DATE,
    payment_date DATE,
    invoice_amount NUMERIC(15, 2),
    discount_amount NUMERIC(15, 2),
    interest_amount NUMERIC(15, 2),
    fine_amount NUMERIC(15, 2),
    status VARCHAR(20) DEFAULT 'CREATED' CHECK (status IN ('CREATED', 'REGISTERED', 'DOWNLOADED', 'CANCELED', 'PROTESTED')),
    creation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted CHAR(1) DEFAULT 'N' CHECK (deleted IN ('Y', 'N'))
);
