-- CRUD sql

-- insert
insert
  into guestbook
values (guestbook_seq.nextval, '마이콜', '라면엔 구공탄~', '1234', sysdate);

-- delete
delete
  from guestbook
 where no = 2
   and password = '1234';
  
commit;

-- select
  select no, 
         name, 
	     content, 
	     password, 
	     to_char(reg_date, 'yyyy-mm-dd hh:mi:ss' )
    from guestbook
order by reg_date desc;  
  	   	   