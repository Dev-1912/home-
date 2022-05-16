/*  
    Object name:    view_matidev_yps_cg_training_shank.sql
    Object type:    view
    Purpose:        This view will fetch some data from matidev_yps_cg_training_shank             
    Created by:     Matidev Kumar
    Created on:     16th May 2022
    __________________________________________________________________________
    Last modified by    |       Modified on     |   Modification history
    __________________________________________________________________________
    Matidev Kumar     |       16th May 2022    |   Initial version   
    __________________________________________________________________________
*/

CREATE OR REPLACE VIEW view_yps_cg_training_shank_mk
AS 
SELECT                 e.emp_name, e.manager_name, m.manager_name AS manager_manager_name, e.joining_date
FROM                   matidev_yps_cg_training_shank e 
LEFT OUTER JOIN        matidev_yps_cg_training_shank m 
ON                     e.manager_name = m.emp_name
WHERE                  e.current_manager_ind = 'Y';

