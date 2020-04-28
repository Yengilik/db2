declare
 res number;
function loading (idv number) 
return number
is 
begin 
 select sum(hour_num)
 into res
 from courtse_sections
 where emp_id=idv;
 return res;
end;
begin
 dbms_output.put_line(loading(10)); 
end;
/