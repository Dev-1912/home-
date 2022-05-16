/*  
    Object name:    ddl_matidev_yps_cg_training_shank.sql
    Object type:    table
    Purpose:        This table will hold the details of all past and present managers
                    of the user
    Created by:     Matidev Kumar
    Created on:     9th May 2022
    __________________________________________________________________________
    Last modified by    |       Modified on     |   Modification history
    __________________________________________________________________________
    Matidev Kumar     |       9th May 2022    |   Initial version   
    Matidev Kumar     |       16th May 2022   |  Alter table added a column
    __________________________________________________________________________
*/

--initial creation
CREATE TABLE matidev_yps_cg_training_shank
(emp_name            VARCHAR2(50) NOT NULL,
 manager_name        VARCHAR2(50),
 joining_date        DATE,
 manager_from_date   DATE,
 manager_to_date     DATE,
 current_manager_ind CHAR(1)
);

--updation on 16th may 2022
ALTER  TABLE  matidev_yps_cg_training_shank
  ADD         manager_ind CHAR(1);