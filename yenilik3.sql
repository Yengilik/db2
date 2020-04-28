create procedure gpa(id_v varchar) is
declare
sumgpa number;
c number;
begin
cursor gpac is
select sum(QIYMET_YUZ) from course_selections_2016
into sumgpa
where stud_id=id_v;
select count(QIYMET_YUZ) from course_selections_2016
into c
where stud_id=id_v;

DBMS_OUTPUT.PUT_LINE(sumgpa/c);
end;
/
