#LOADING DATA TO TABLES 

# Load data from hospitals.csv file to hospitals table
LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/data_files/hospitals.csv' INTO TABLE hospitals FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (hospital_id, hospital_name, hospital_address, size, type, accreditation_status)  
;

# Load data from doctors.csv file  to doctors table 
LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/data_files/doctors.csv' INTO TABLE doctors FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (doctor_id, doctor_name, doctor_dob, doctor_address, doctor_role, hospital_id)
;

# Load data from patients.csv file into patients table
LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/data_files/patients.csv' INTO TABLE patients FIELDS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 LINES (patient_id, patient_name, patient_dob, patient_address, patient_role, doctor_id) 
;

# Load data from prescriptions.csv file into prescriptions table
LOAD DATA LOCAL INFILE '~/assessments/hpdm206Z/assessment1/data_files/prescriptions.csv' INTO TABLE prescriptions FIELDS TERMINATED BY ',' IGNORE 1 LINES (prescription_id, patient_id, doctor_id, medication, prescription_date) 
;
