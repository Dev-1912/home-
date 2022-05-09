/*  
    Object name:    ddl_matidev_yps_cg_training_shank.sql
    Object type:    table
    Purpose:        This table will hold the details of all past and present managers
                    of the user
    Created by:     Matidev Kumar
    Created on:     9th May 2022
    ____________________________________________________________________
    Last modified by    |       Modified on     |   Modification history
    ____________________________________________________________________
    Matidev Kumar     |       9th May 2022    |   Initial version   
    ____________________________________________________________________
*/
CREATE TABLE matidev_yps_cg_training_shank
(emp_name           VARCHAR2(50) NOT NULL,
 manager_name       VARCHAR2(50),
 joining_date       DATE,
 manager_from_date  DATE,
 manager_to_date    DATE
);