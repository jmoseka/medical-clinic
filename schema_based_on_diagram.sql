CREATE TABLE medical_histories (
id BIGSERIAL PRIMARY KEY,
admitted_at TIMESTAMP,
patient_id INT,
CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES patients(id),
status VARCHAR(150)
);

CREATE TABLE patients (
id BIGSERIAL PRIMARY KEY,
name VARCHAR(100),
date_of_birth DATE
);

CREATE TABLE treatments (
id BIGSERIAL PRIMARY KEY,
type varchar(100),
name varchar(100)
);

CREATE TABLE invoices (
id BIGSERIAL PRIMARY KEY,
total_amount dec,
generated_at timestamp,
payed_at timestamp,
medical_history_id int,

CONSTRAINT fk_history FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
);

CREATE TABLE invoice_items (
id BIGSERIAL PRIMARY KEY,
unit_price DEC,
quantity INT,
total_price DEC,
invoice_id INT,
treatment_id INT,

CONSTRAINT fk_invoice FOREIGN KEY (invoice_id) REFERENCES invoices(id),
CONSTRAINT fk_treatment FOREIGN KEY (treatment_id) REFERENCES treatments(id)
);

CREATE INDEX ON medical_histories (patient_id);
CREATE INDEX ON invoices (medical_history_id);
CREATE INDEX ON invoice_items (invoice_id);


