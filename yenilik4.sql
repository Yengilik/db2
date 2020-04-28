create procedure gpa(id_v varchar) is
cursor st is
select * from  course_selections_2016;
begin 
  for s in st
  loop
    if s.ders_cod is null
       then
         DBMS_OUTPUT.PUT_LINE(s.stud_id);
    end if;
  end loop;
end;
/