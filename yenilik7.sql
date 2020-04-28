create or replace procedure subjects_and_credits (idv varchar) is

co number;
sumc number;
select count(ders_cod)
into co
from course_selections_2016 
where stud_id=idv;
select sum(courtse_sections.credits)
into sums 
from courtse sections a, course_selections_2016
where stud_id=idv;