/*  
    Object name:    dml_matidev_yps_cg_training_shank.sql
    Object type:    table
    Purpose:        To perform dml operations on the table
    Created by:     Matidev Kumar
    Created on:     9th May 2022
    ____________________________________________________________________________________________
    Last modified by    |       Modified on     |   Modification history
    ____________________________________________________________________________________________
    Matidev Kumar     |       9th May 2022    |   Initial version   
    Matidev Kumar     |       16th May 2022    |   updated old records and added 2 new records 
    ____________________________________________________________________________________________
*/

--initial data on 9th MAY 2022
INSERT INTO matidev_yps_cg_training_shank VALUES ('Satyam Rout', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Satyam Rout', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Arjunjyoti Saha', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Arjunjyoti Saha', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Abhijit Bengani', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Abhijit Bengani', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Nipun Jain', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Nipun Jain', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Kshitij Pal', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Kshitij Pal', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Abhishek Kumar', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Abhishek Kumar', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Akshat Agarwal', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Akshat Agarwal', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Arpita Kanungoe', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Arpita Kanungoe', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Seema', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Seema', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Matidev Kumar', 'Nawrin Sayed', '19-AUG-2021', '19-AUG-2021', '30-APR-2022','N');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Matidev Kumar', 'Shashank Jain', '19-AUG-2021', '01-MAY-2022', NULL,'Y');

--updated data on 16th MAY 2022
UPDATE matidev_yps_cg_training_shank SET manager_ind = NULL WHERE emp_name NOT IN ('Shashank Jain', 'Nawrin Sayed');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Shashank Jain', 'Shiva', '01-JAN-2022', '01-JAN-2022', NULL,'Y','Y');
INSERT INTO matidev_yps_cg_training_shank VALUES ('Nawrin Sayed', 'Shrini', '01-JAN-2021', '01-JAN-2021', NULL,'Y','Y');
