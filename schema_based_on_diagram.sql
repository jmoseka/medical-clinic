CREATE TABLE medical_histories (
id BIGSERIAL PRIMARY KEY,
admitted_at TIMESTAMP,
patient_id INT,
CONSTRAINT fk_patient FOREIGN KEY (patient_id) REFERENCES patients(id),
status VARCHAR(150)
);

