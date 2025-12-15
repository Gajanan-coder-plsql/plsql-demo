--------------------------------------------------------
--  File created - Monday-December-15-2025   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure PROC_STUD_RECORD
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "HR"."PROC_STUD_RECORD" IS
--declare
    TYPE t1 IS TABLE OF hr.emp3%rowtype  INDEX BY BINARY_INTEGER;
    v_t t1;
 BEGIN
SELECT * BULK COLLECT INTO v_t FROM hr.emp3;
for i in v_t.first..v_t.last loop
dbms_output.put_line(v_t(i).first_name||' '||v_t(i).last_name);
end loop;
--end;
END proc_stud_record;

/
