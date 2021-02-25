/* Question 1*/
SELECT first_name "First Name",  last_name "Last Name" 
	FROM employees;
/*Question 2 */
SELECT DISTINCT department_id 
	FROM employees;
/* Question 3 */
SELECT * 
	FROM employees 
	ORDER BY first_name DESC;
/*Question 4*/
SELECT first_name, last_name, salary, salary*.15 PF 
	FROM employees;
/*Question 5*/
SELECT employee_id, first_name, last_name, salary 
    FROM employees 
    ORDER BY salary;
/*Question 6*/
SELECT SUM(salary) 
     FROM employees;
/*Question 7*/
SELECT MAX(salary), MIN(salary) 
     FROM employees;
/*Question 8*/
SELECT AVG(salary), COUNT(*) 
     FROM employees;
/*Question 9*/
SELECT COUNT(*) 
    FROM employees;
/*Question 10*/
SELECT COUNT(DISTINCT job_id) 
FROM employees;
/*Question 11*/
SELECT UPPER(first_name) 
   FROM employees;
/*Question 12*/
SELECT SUBSTRING(first_name,1,3) 
     FROM employees;
/*Question 13*/
SELECT TRIM(first_name) 
    FROM employees;
/*Question 14*/
SELECT first_name,last_name, LENGTH(first_name)+LENGTH(last_name)  'Length of  Names' 
    FROM employees;
/*Question 15*/
SELECT * 
   FROM employees 
   WHERE  first_name REGEXP  '[0-9]';
/*Question 16*/
SELECT first_name, last_name, salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000;
/*Question 17*/
SELECT first_name, last_name, department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY  department_id  ASC;
/*Question 18*/
SELECT first_name, last_name, salary, department_id
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000 
AND department_id IN (30, 100);
/*Question 19*/
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE YEAR(hire_date)  LIKE '1987%';
/*Question 20*/
SELECT first_name
FROM employees
WHERE first_name LIKE '%b%'
AND first_name LIKE '%c%';
/*Question 21*/
SELECT last_name, job_id, salary
FROM employees
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
AND salary NOT IN (4500,10000, 15000);
/*Question 22*/
SELECT last_name FROM employees WHERE last_name LIKE '______';
/*Question 23*/
SELECT last_name FROM employees WHERE last_name LIKE '__e%';
/*Question 24*/
SELECT job_id, GROUP_CONCAT(employee_id, ' ')  'Employees ID' 
FROM employees GROUP BY job_id;
/*Question 25*/
UPDATE employees 
SET phone_number = REPLACE(phone_number, '124', '999') 
WHERE phone_number LIKE '%124%';
/*Question 26*/
SELECT * 
FROM employees
WHERE LENGTH(first_name) >= 8;
/*Question 27*/
UPDATE employees SET email = CONCAT(email, '@example.com');
/*Question 28*/
SELECT RIGHT(phone_number, 4) as 'Ph.No.' FROM employees;
/*Question 29*/
SELECT location_id, street_address, 
SUBSTRING_INDEX(REPLACE(REPLACE(REPLACE(street_address,',',' '),')',' '),'(',' '),' ',-1) 
AS 'Last--word-of-street_address' 
FROM locations;
/*Question 30*/
SELECT * FROM locations
WHERE LENGTH(street_address) <= (SELECT  MIN(LENGTH(street_address)) 
FROM locations);
/*Question 31*/
SELECT job_title, SUBSTR(job_title,1, INSTR(job_title, ' ')-1)
FROM jobs;
/*Question 32*/
SELECT first_name, last_name FROM employees WHERE INSTR(last_name,'C') > 2;
/*Question 33*/
SELECT first_name "Name",
LENGTH(first_name) "Length"
FROM employees
WHERE first_name LIKE 'J%'
OR first_name LIKE 'M%'
OR first_name LIKE 'A%'
ORDER BY first_name ;
/*Question 34*/
SELECT first_name,
LPAD(salary, 10, '$') SALARY
FROM employees;
/*Question 35*/
SELECT left(first_name, 8),
REPEAT('$', FLOOR(salary/1000)) 
'SALARY($)', salary
FROM employees
ORDER BY salary DESC;
/*Question 36*/
SELECT employee_id,first_name,last_name,hire_date 
FROM employees 
WHERE POSITION("07" IN DATE_FORMAT(hire_date, '%d %m %Y'))>0;
