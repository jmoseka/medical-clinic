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

