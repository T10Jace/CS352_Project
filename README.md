# Medical Management System
Website Title: MediQuest 
    - A Medical Management System using MySQL, Php and Bootstrap


Video Demo : [Add Video Here]

## Github Repository
  https://github.com/T10Jace/CS352_Project

## Need to work on:
1. Apply a dashboard representing different cancer statistics
2. Ability to accept the appointment by the doctor to acknowledge the patient that their appointment has been approved.
3. Fix header (navigation bar) to match on all pages
4. Fix Footer on Doctors page
5. The password should be encrypted and the password field shouldn't be displayed in the admin panel.
6. Bug fix - Bill payment receipt contains multiple record if the patient has associated with the same doctor multiple times.
7. Addition of more fields in the prescription statement to make it more specific one.
8. Addition of more details on payment - such as date of the payment made, amount paid, etc.
9. Implementation of export button in admin module to export all details to an excel sheet.


## Prerequisites
1. Install XAMPP web server: https://www.apachefriends.org/download.html
2. Any Editor (We are using Visual Studio Code) https://code.visualstudio.com/download
3. Any web browser with latest version (Preferably Microsoft Edge or Google Chrome)

## Languages and Technologies used
1. HTML5/CSS
2. JavaScript (to create dynamically updating content)
3. Bootstrap (An HTML, CSS, and JS library) https://getbootstrap.com/
4. XAMPP (A web server by Apache Friends) https://www.apachefriends.org/download.html
5. Php
6. MySQL (An RDBMS that uses SQL) * https://www.mysql.com/products/workbench/ (optional)
7. TCPDF (to generate PDFs)

## Database


## Steps to run the project in your machine
1. Download and install XAMPP in your machine
2. Clone or download the repository
3. Extract all the files and move it to the 'htdocs' folder of your XAMPP directory.
4. Start the Apache and Mysql in your XAMPP control panel.
5. Open your web browser and type 'localhost/phpmyadmin'
6. In phpmyadmin page, create a new database from the left panel and name it as 'mediquestdb'
7. Import the file 'mediquestdb.sql' inside your newly created database and click ok. (Should be located in the database folder ex: )
8. Open a new tab and type 'localhost/foldername' in the url of your browser (Most Likely 'localhost/CS352_Project/MediQuest/index.php')
9. You should now have a local website running with a database!
    
### SOFTWARES USED
  - XAMPP was installed on the Ubuntu 19.04 machine and APACHE2 Server and MySQL were initialized. And, files were built locally inside 'This PC/Windows(C:)/xampp/htdocs/MediQuest
  - Sublime Text 3.2 was used as a text editor.
  - Microsoft Edge Version 122.0.2365.80 was used to run the project (localhost/CS352_Project/MediQuest was used as the url).
  

### Starting Apache And MySQL in XAMPP:
  The XAMPP Control Panel allows you to manually start and stop Apache and MySQL. To start Apache or MySQL manually, click the ‘Start’ button under ‘Actions’.
  
  
<p align="center"><img src="https://user-images.githubusercontent.com/36665975/59350977-fcc68900-8d3a-11e9-9450-e5c478497caa.png"></img></p>

### COMMON ISSUES:
 **XAMPP Connectivity Issues:**
    If you are having issues with MySQL working with XAMPP, it may be a problem with an unavailable port.
    Sometimes ports are already connected to other services so here is how to fix this issue:
      - Open XAMPP
      - Press 'Config' beside MySQL
      - This should pop us a file called 'my.ini', click on that
      - This should open up the text file, now scroll you need to find the variable 'port' (Should be about 20 lines from the top)
      - It will look something like 'port=xxxx' (xxxx is just whatever port number it is assigned to on your machine (the default is typically 3306))
      - Change the port number to preferably one digit above or below your current port. (Example: If my current port shows 'port=3306', I would change that to 'port=3307')
      - ** There is also a second 'port' variable (typically within 10 lines below the first 'port' variable) which must also be changed to match the other variable

## GETTING INTO THE PROJECT:
This system has a ‘Home’ page from where the patient, doctor & administrator can login into their accounts by toggling the tabs accordingly. Fig 1.1 shows the ‘Home’ page of our project.

![image](INSERT IMAGE HERE)

'Doctors' Page (Fig 1.2) which allows users to see each doctor in a card/grid format where each card shows the respective doctor's headshot, name, specialty and links to their social platforms.

![image](INSERT IMAGE HERE)

'About Us' page (Fig 1.2)  allows us to get some more information about the quality and the services of the hospital.

![image](INSERT IMAGE HERE)

‘Contact’ page allows users to provide feedback or queries about the services of the hospital. Fig 1.3 shows the ‘Contact’ page.

![image](INSERT IMAGE HERE)

### Home Page:

The ‘Home’ page consists of 3 modules:
1. Patient Module
2. Doctor Module
3. Admin Module

### Patient Module:

  &nbsp; &nbsp; &nbsp; This module allows patients to create their account, book an appointment to see a doctor and see their appointment history.
  The registration page(in the home page itself) asks patients to enter their First Name, Last Name, Email ID, Contact Number, Password and radio buttons to select their gender.
  
![image](INSERT IMAGE HERE)

Once the patient has created his/her own account after clicking the ‘Register’ button, then he will be redirected to his/her Dashboard(Fig 1.5).

![image](INSERT IMAGE HERE)

The Dashboard page allows patients to perform two operations:

**1. Book his/her appointment:**

  &nbsp; &nbsp; &nbsp; Here, the patients can able to book their appointments to see a doctor. The appointment form(Fig 1.6) requires patients to select the doctor that they want to see, Date and Time that they want to meet with the doctor. The consultancy fee will be shown accordingly to the patient as it was already determined by the doctor.

![image](INSERT IMAGE HERE)

After clicking on the ‘Create new entry’ button, the patient will receive an alert that acknowledges the successful appointment of the patient.(See Fig 1.7) 

![image](INSERT IMAGE HERE)

**2. View patients’ Appointment History:**

  &nbsp; &nbsp; &nbsp; Here, the patient can see their appointment history which contains Doctor Name, Consultancy Fee, Appointment Date and Time.(See Fig 1.8).
	
![image](INSERT IMAGE HERE)

Once the patient has logged out of his account, if he wants to go into his account again, he can login his account, instead of register his account again. Fig 1.9 shows the login page.
Clicking on ‘Login’ button will redirect the patient to his dashboard page which we have seen earlier (Fig 1.5)

![image](INSERT IMAGE HERE)

Patients are able to delete their appointments.
 
![image](INSERT IMAGE HERE)
    
If the patient deletes the last record (for doctor Sheryl Dickson), then a label "deleted by you" will be displayed in the column 'Current Status' and the action will change to cancel state.
  
![image](INSERT IMAGE HERE)

**3. View patients' Prescriptions:**

  &nbsp; &nbsp; &nbsp; Here, the patient can see their prescription history which contains Doctor Name, Appointment ID and Date and Time, Patient Disease/Illness, Patient Allergies, Patient Prescriptions/Appointment Notes, and the Patients' bill payment.(See Fig 1.10).
	
![image](INSERT IMAGE HERE)

Once the patient has logged out of his account, if he wants to go into his account again, he can login his account, instead of register his account again. Fig 1.9 shows the login page.
Clicking on ‘Login’ button will redirect the patient to his dashboard page which we have seen earlier (Fig 1.5)

![image](INSERT IMAGE HERE)

This is how the patient module works. On the whole, this module allows patients to register their account or login their account(if he/she has one), book an appointment and view his/her appointment history.  


### Doctor Module:

  &nbsp; &nbsp; &nbsp; The doctors can login into their account which can be done by toggling the tab from ‘Patient’ to ‘Doctor’. Fig 1.11 shows the login form for a doctor. Registration of a doctor account can be done only by admin. We will discuss more about this in Admin Module.
  
![image](INSERT IMAGE HERE)

Once the doctor clicking the ‘Login’ button, they will be redirected to their own dashboard which is shown in Fig 1.12

![image](INSERT IMAGE HERE)

In this page, the doctor can see their respective appointments which has been booked by the patients. Fig 1.13 shows the appointment of the doctor ‘Sheryl Dickson’ which has been booked by the patient ‘Alia Bhatt’ (Fig 1.6). This means that the doctor ‘Sheryl Dickson’ will have an appointment with the patient ‘Alia Bhatt’ on 03/21/2024 (March 21, 2024) at 10:00AM. 

![image](INSERT IMAGE HERE)

Doctors are also able to delete their appointments. If we login to the doctor Sheryl Dickson's account and view her appointment details, then it will look like this:
  
 ![image](INSERT IMAGE HERE)

In real-time, the doctors will have thousands of appointments. It will be easier for a doctor to search for appointment in the case of more appointments. To make it easier, we have a ‘Search’ box in the navigation bar (See Fig 1.13) which allows doctors to search for a patient by their contact number.
&nbsp; &nbsp; &nbsp; Once everything is done, the doctor can logout of their account. Thus, in general, a doctor can login into his/her account, view their appointments and search for a patient.


### Admin Module:
   
   &nbsp; &nbsp; &nbsp; This module is the heart of our project where an admin can see the list of all patients, Doctors, and appointments. As well as the feedback/queries received from the ‘Contact’ page. The admin is also the only person(s) with the access to add/remove doctors. 
  &nbsp; &nbsp; &nbsp; Log-in to the admin account can be done by toggling into the 'Receptionist' tab of the Home page. Fig 1.14 shows the login page for admin.
  &nbsp; &nbsp; &nbsp; `username`: admin, `password`: admin123

![image](INSERT IMAGE HERE)

On clicking the ‘Login’ button, the admin will be redirected to his/her dashboard as shown in 
Fig 1.15.

![image](INSERT IMAGE HERE)

This module allows admin to perform six major operations:

**1. View the list of all patients registered:**

  &nbsp; &nbsp; &nbsp; Admin are able to view all the patients registered. This includes the patients’ ID(Primary Key), First Name, Last Name, Gender, Email, Contact Number, and Password. (See Fig 1.16). As like in doctor module, admin can also search for a patient by their contact number in the search box.
  
![image](INSERT IMAGE HERE)
  
**2. View the list of all doctors registered:**

  &nbsp; &nbsp; &nbsp; Details of the doctors can also be viewed by the admin. This details include the Doctors' Name, Specialization, Email, Password, and fees(How much a patient pays for each visit), as shown in Fig 1.17. Searching for a doctor can be done by using the doctor’s Email ID in the search box.

![image](INSERT IMAGE HERE)

**3. View the Appointment lists:**

  &nbsp; &nbsp; &nbsp; Admin can also able to see the entire details of the appointment that shows the appointment details of the patients with their respective doctors. This includes the Appointment ID(Primary Key), Patient ID(Foreign Key), Patient First Name, Last Name, Gender, Email and Contact Number, Doctor’s Name, Consultancy Fee, Appointment Date, Appointment Time, and Appointment Status. (See Fig 1.18) 
  
![image](INSERT IMAGE HERE)

**4. View the Prescription lists:**

  &nbsp; &nbsp; &nbsp; Admin can also able to see a list of Prescription information that shows a patient's prescription details from their respective doctors. This includes the Doctor Name, Patient ID(Foreign Key), Appointment ID(Foreign Key), Patient First Name, Patient Last Name, Appointment Date, Appointment Time, Patient Disease/Illness, Patient Allergies, and Prescription. (See Fig 1.19) 
  
![image](INSERT IMAGE HERE)
  
**5. Add/Remove Doctor:**

  &nbsp; &nbsp; &nbsp; Admin alone can add a new doctor since anyone can register as a doctor if we put this section on the home page. This form asks Doctor’s Name, Email ID, Password and his/her Consultancy Fees.(See Fig 1.20)
  
![image](INSERT IMAGE HERE)
  
  After adding a new doctor, if we check the doctor’s list, we will see the details of new doctor is added to the list as shown in the Fig 1.21
  
![image](INSERT IMAGE HERE)
  
**6. View User’s feedback/Queries from the 'Contact' Page:**

  &nbsp; &nbsp; &nbsp; Admin is allowed to view the feedback/Query that has been given by the user in the ‘Contact’ page (Refer Fig 1.3). This includes the User’s Name, Email Id, Contact Number and the message(Feedback/ Query) as shown in the Fig 1.22.
  
![image](INSERT IMAGE HERE)

  Admin can also use the search bar above to filter feedback queries through searching by a user's unique 'Contact' field.
  
  ![image](INSERT IMAGE HERE)

## Updates


  

## Database

  In this project, we use MySQL connecting with XAMPP through php, which requires using phpmyadmin () for accessing the database.

  However, due to how our class uses MySQL, we wrote the database's SQL scripts in MySQL workbench and then downloaded the files 
  and added them into a folder called 'databases'.

  This folder contains 3 main files: 
  
  1. ClearDB.sql - Run this script to clear or 'drop' the database and it's tables.
  2. CreateDB.sql - Run this script to ONLY create the databse and begin using it.
  3. LoadDB.sql - Run this script to ONLY create tables for the database. (ALL TABLES WILL BE NULL/EMPTY).
  4. mediquestdb.sql - Run This script to create the tables AND fill the tables with data.

  This website has a backend which uses the following MySQL database tables:  

  **1. Admin Table:**
    
    - Username
    - Password


  **2. Appointment Table:**

    - Patient ID (FK)
    - Appointment ID (PK)
    - First Name
    - Last Name
    - Gender
    - Email
    - Contact
    - Doctor
    - Doctor Fees
    - Appointment Date
    - Appointment Time
    - User Status
    - Doctor Status


  **3. Contact Table:**

    - Name
    - Email
    - Contact
    - Message


  **4. Doctors Table:**

    - Username
    - Password
    - Email
    - Specialty
    - Doctor Fees


  **5. Patients Table:**

    - Patient ID (PK)
    - First Name
    - Last Name
    - Gender
    - Email
    - Contact
    - Password1
    - Password2 (Must match Password1)


  **6. Prescriptions Table:**

    - Doctor
    - Patient ID (FK)
    - Appointment ID (FK)
    - First Name
    - Last Name
    - Appointment Date
    - Appointment Time
    - Disease
    - Allergy
    - Prescription

