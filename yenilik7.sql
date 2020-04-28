create or replace procedure subjects_and_credits (idv varchar) is
co number;
sumc number;
begin
select count(ders_cod)
into co
from course_selections_2016 
where stud_id=idv;
select sum(a.credits)
into sums 
from courtse sections a, course_selections_2016 b
where stud_id=idv, a.ders_cod=b.ders_cod;
dbms_output.put_line(idv(''); 
end;
/
execute subjects_and_credits('');
