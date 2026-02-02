# TABLE CREATION

#Hospitals table 
CREATE TABLE hospitals # Name table hospitals
(
hospital_id INT unsigned NOT NULL AUTO_INCREMENT, # Unique ID for hospital
hospital_name VARCHAR(150) NOT NULL, # Name of hospital
hospital_address VARCHAR(150) NOT NULL, # Address of hospital
size INT unsigned  NOT NULL, # Size of hospital
type VARCHAR(150) NOT NULL, # Type of hospital
accreditation_status VARCHAR(15) NOT NULL, #Accreditation status of hospital
PRIMARY KEY (hospital_id) # Make hospital_id primary key
);

#Doctors table
CREATE TABLE doctors # Name the table 'doctors'
( 
doctor_id INT unsigned NOT NULL AUTO_INCREMENT, # Unique ID for the doctor
doctor_name VARCHAR(150) NOT NULL, # Name of doctor
doctor_dob DATE NOT NULL, # Date of birth of doctor
doctor_address VARCHAR(150) NOT NULL, # Address of doctor
doctor_role VARCHAR(150) NOT NULL, # Role of doctor
hospital_id INT unsigned NOT NULL, # Hospital of doctor
PRIMARY KEY (doctor_id), # Make the doctor_id the primary key
FOREIGN KEY (hospital_id) REFERENCES hospitals(hospital_id) # Make the hospital_id from the hospitals table the foreign key
);

#Patients table
CREATE TABLE patients # Name table patients
( 
patient_id INT unsigned NOT NULL AUTO_INCREMENT, # Unique ID for patient
patient_name VARCHAR(150) NOT NULL, # Name of patient
patient_dob DATE NOT NULL, # DOB of patient
patient_address VARCHAR(150) NOT NULL, # Address of patient
patient_role VARCHAR(150) NOT NULL, # Role of patient
doctor_id INT unsigned NOT NULL, # Doctor of patient
PRIMARY KEY (patient_id), # Make patient_id primary key
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) # Make doctor_id from doctors table foreign key
);

#Prescriptions table
CREATE TABLE prescriptions # Name table prescriptions
( 
prescription_id INT unsigned NOT NULL AUTO_INCREMENT, # Unique ID for prescriptions
patient_id INT unsigned NOT NULL, # patient_id of prescription
doctor_id INT unsigned NOT NULL, # doctor_id of prescription
medication VARCHAR(150) NOT NULL, # Medication name of prescription
prescription_date DATE NOT NULL, # Date of prescription
PRIMARY KEY (prescription_id), # Make prescritpion_id primary key
FOREIGN KEY (patient_id) REFERENCES patients(patient_id), # Make patient_id from patients table foreign key
FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id) # Make doctor_id from doctors table foreign key
);
