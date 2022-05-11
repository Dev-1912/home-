-- Creating an audit table

CREATE TABLE audit_yps_cg_training_shank_mk(
                  t_name VARCHAR2(30),
             modified_by VARCHAR2(30),
             modified_on VARCHAR2(30),
            t_operations VARCHAR2(50),
 old_current_manager_ind CHAR(1),
 new_current_manager_ind CHAR(1)
);

-- Creating a trigger on matidev_yps_cg_training_shank that will write in the audit table

CREATE TRIGGER             trigger_yps_cg_training_shank_mk
BEFORE INSERT OR UPDATE OF current_manager_ind, manager_to_date
ON                         matidev_yps_cg_training_shank
FOR EACH ROW 
ENABLE
DECLARE
 v_user VARCHAR2(30);
 v_date VARCHAR2(30);
BEGIN
SELECT user, TO_CHAR(sysdate, 'DD/MON/YYYY HH24:MI:SS') INTO v_user, v_date FROM dual;
IF INSERTING THEN
 INSERT INTO audit_yps_cg_training_shank_mk (t_name, modified_by, modified_on, t_operations, old_current_manager_ind, new_current_manager_ind)
 VALUES ('matidev_yps_cg_training_shank', v_user, v_date, 'New record is inserted', NULL, :NEW.current_manager_ind );
ELSIF UPDATING THEN
 INSERT INTO audit_yps_cg_training_shank_mk (t_name, modified_by, modified_on, t_operations, old_current_manager_ind, new_current_manager_ind)
 VALUES ('matidev_yps_cg_training_shank', v_user, v_date, 'current_manager_ind is changed',:OLD.current_manager_ind, :NEW.current_manager_ind );
END IF;
END;

