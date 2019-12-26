use bank;
select database();

#Exercise 3-1
select emp_id, fname, lname
from employee
order by lname, fname;

select count(emp_id) total
from employee;

# Exercise 3-2
select account_id, cust_id, avail_balance
from account
where 
	status = 'ACTIVE' and 
    avail_balance > 2500
order by avail_balance desc;

# Exercise 3-3

select distinct open_emp_id
from account;

# Exercise 3-4

select p.product_cd, a.cust_id, a.avail_balance
from product p inner join account a 
	on p.product_cd = a.product_cd
where p.product_type_cd = 'ACCOUNT'
order by p.product_cd, a.cust_id;
