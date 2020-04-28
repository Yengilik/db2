procedure ret(idv varchar) is
  c number;
 sumn number;
 select count(*) 
 into c
 from course_selections_2016
 where 
 stud_id=idv, qiymet_yuz<50;
 sumn=c*75000;
begin 
   DBMS_OUTPUT.PUT_LINE(sumn);
end;
/
