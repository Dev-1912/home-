/*  
    Object name:    trigger_yps_cg_training_shank_mk.sql
    Object type:    trigger
    Purpose:        This trigger will monitor matidev_yps_cg_training_shank
    Created by:     Matidev Kumar
    Created on:     10th May 2022
    ____________________________________________________________________
    Last modified by    |       Modified on     |   Modification history
    ____________________________________________________________________
    Matidev Kumar     |       10th May 2022    |   Initial version   
    ____________________________________________________________________
*/

-- Creating an audit table

CREATE TABLE audit_yps_cg_training_shank_mk(
                tab_name VARCHAR2(30),
             modified_by VARCHAR2(30),
             modified_on VARCHAR2(30),
          tab_operations VARCHAR2(50),
 old_current_manager_ind     CHAR(1),
 new_current_manager_ind     CHAR(1),
     old_manager_to_date     DATE,
     new_manager_to_date     DATE
);

-- Creating a trigger on matidev_yps_cg_training_shank that will write in the audit table

CREATE TRIGGER                      trigger_yps_cg_training_shank_mk
AFTER INSERT OR DELETE OR UPDATE OF current_manager_ind, manager_to_date
ON                                  matidev_yps_cg_training_shank
FOR EACH ROW 
ENABLE
DECLARE
 v_user VARCHAR2(30);
 v_date VARCHAR2(30);
BEGIN
SELECT user, TO_CHAR(sysdate, 'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date FROM dual;
IF INSERTING THEN
 INSERT INTO audit_yps_cg_training_shank_mk 
 (tab_name, modified_by, modified_on, tab_operations, old_current_manager_ind, new_current_manager_ind, old_manager_to_date, new_manager_to_date)
 VALUES ('matidev_yps_cg_training_shank', v_user, v_date, 'New record is inserted', NULL, :NEW.current_manager_ind, NULL, :NEW.manager_to_date);
ELSIF UPDATING THEN
 INSERT INTO audit_yps_cg_training_shank_mk 
 (tab_name, modified_by, modified_on, tab_operations, old_current_manager_ind, new_current_manager_ind, old_manager_to_date, new_manager_to_date)
 VALUES 
 ('matidev_yps_cg_training_shank', v_user, v_date, 'records updated',:OLD.current_manager_ind, :NEW.current_manager_ind, :OLD.manager_to_date, :NEW.manager_to_date);
ELSIF DELETING THEN
 INSERT INTO audit_yps_cg_training_shank_mk
 (tab_name, modified_by, modified_on, tab_operations, old_current_manager_ind, new_current_manager_ind, old_manager_to_date, new_manager_to_date)
 VALUES 
 ('matidev_yps_cg_training_shank', v_user, v_date, 'records deleted',:OLD.current_manager_ind, NULL, :OLD.manager_to_date, NULL);
END IF;
END;

