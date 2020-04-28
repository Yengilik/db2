create procedure ret(idv varchar) is
declare
c number;
sumn number;
cursor 
select count(*) 
into c
from course_selections_2016 where 
stud_id=idv, qiymet_yuz<50;
sumn=c*75000;

