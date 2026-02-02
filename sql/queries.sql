# SQL Queries to extra data from database


# Query 1 - Print a list of all doctors based at a particular hospital

# View created for joining of hospital and doctors tables called hospitals_doctors which can be used in queries 
CREATE VIEW hospitals_doctors AS 
SELECT doctor_name, hospitals.hospital_id, hospital_name, hospital_address, size, type, accreditation_status FROM doctors INNER JOIN hospitals ON doctors.hospital_id = hospitals.hospital_id
;

# Example queries using hospitals_doctors view
SELECT doctor_name FROM hospitals_doctors WHERE accreditation_status = 'Not Accredited'; # Search based on hospital accreditation status
SELECT doctor_name FROM hospitals_doctors WHERE hospital_name = 'Walker Inc Hospital'; # Search based on hospital name 
SELECT doctor_name FROM hospitals_doctors WHERE hospital_id = 1; # Search based on hospital_id
SELECT doctor_name FROM hospitals_doctors WHERE type = 'Specialty'; # Search based on hospital type
SELECT doctor_name FROM hospitals_doctors WHERE size > 100; # Search based on hospital size


# Query 2 - Print a list of all prescriptions for a particular patient, ordered by the prescription date

# View created for joining of patients and prescriptions tables called patients_prescriptions which can be used in queries 
CREATE VIEW patients_prescriptions AS 
SELECT patient_name, patients.patient_id, prescription_id, medication, prescription_date FROM patients INNER JOIN prescriptions ON patients.patient_id = prescriptions.patient_id ORDER BY prescription_date;

# Example queries using patients_prescriptions view 
SELECT * FROM patients_prescriptions WHERE patient_name = 'Thomas Daugherty'; # Search based on patient name
SELECT * FROM patients_prescriptions WHERE patient_id = 589; # Search based on patient_id


# Query 3 - Print a list of all prescriptions that a particular doctor has prescribed

# View created for joining doctors and prescriptions tables called doctors_prescriptions which can be used in queries 
CREATE VIEW doctors_prescriptions AS 
SELECT doctor_name, doctors.doctor_id, prescription_id, medication, prescription_date, patient_id FROM doctors INNER JOIN prescriptions ON doctors.doctor_id = prescriptions.doctor_id;

# Example queries using doctors_prescriptions view 
SELECT * FROM doctors_prescriptions WHERE doctor_name= 'Dr. Cindy Pugh'; # Search based on doctor name
SELECT * FROM doctors_prescriptions WHERE doctor_id= 99; # Search based on doctor id 

# Query 4 - Add a new patient to the database, including being registered with one of the doctors

# New patient added to patients table assigned to doctor 42
INSERT INTO patients (patient_name, patient_dob, patient_address, patient_role, doctor_id) VALUES ('Bob Jones', '1980-01-01', '10 Church Street, Tableville, PA 12345', 'Patient', 42);

# Query 5 - Identify which doctor has made the most prescriptions

# Using the doctors_prescriptions view, count the number of rows per doctor. This equals the number of prescriptions per doctor. Order by prescription count to find the doctor with the most prescriptions.
SELECT doctor_name, COUNT(*) AS prescription_count FROM doctors_prescriptions GROUP BY doctor_name ORDER BY prescription_count;


# Query 6 - Print a list of all doctors at the hospital with biggest size (number of beds).

SELECT * FROM hospitals_doctors ORDER BY size; # Identify hospital_id of biggest hospital
SELECT doctor_name FROM hospitals_doctors WHERE hospital_id = 11; # Show list of doctors at the biggest hospital
