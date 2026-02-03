# Hospital Database

## Project Summary
This project involves creating a relational database in MySQL. The purpose of the database is to store and retrieve data on hospitals, patients, doctors, and prescriptions. The project describes how to create the database tables, load data into the tables, and query the database to extract the required information.

## Project Files
This project contains the following files:

- **Planning files:**
    - `pseudocode.txt` – A human-readable version of the logic used to create the database tables, load data into the tables, and query the database.
    - `erd.png` – The entity relationship diagram describing the database tables and how they are related.

- **SQL files:**
    - `tables.sql` – The MySQL script for creating the database tables.
    - `load_data.sql` – The MySQL script for loading data from corresponding files into the tables.
    - `queries.sql` – The MySQL script containing queries used to extract information from the database.

- **Data files:**  
  These files contain the data used to populate the corresponding tables:
    - `doctors.csv`
    - `hospitals.csv`
    - `patients.csv`
    - `prescriptions.csv`

- `hospital.database.sql` – A script to recreate the entire database.

## How to Use the Files
To recreate the database in MySQL, there are two options:

1. Execute the `tables.sql` script, followed by the `load_data.sql` script.
2. Execute the `hospital.database.sql` script.

The database can then be queried as described below.

## SQL Queries
The `queries.sql` file contains the following six queries, which can be applied to the database once it has been created:

1. Extract a list of doctors based at a particular hospital by specifying the `hospital_id`, hospital name, hospital type, or hospital size.
2. Extract a list of prescriptions for a particular patient, ordered by prescription date, by specifying the `patient_id` or patient name.
3. Extract a list of prescriptions prescribed by a particular doctor by specifying the `doctor_id` or doctor name.
4. Add a new patient to the database.
5. Identify the doctor who has issued the highest number of prescriptions.
6. Extract a list of doctors working at the hospital with the largest size.
