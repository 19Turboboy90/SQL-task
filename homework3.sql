--1. �������� ������ ���� �����������, � ������� ����� ����� ������ 10
--����.

SELECT
    *
FROM
    employees
WHERE
    length(first_name) > 10;

--2. �������� ������ ���� �����������, �������� ������� ������ 1000.

SELECT
    *
FROM
    employees
WHERE
    mod(salary, 1000) = 0;
 
--3. �������� ���������� ����� � ������ 3� ������� ����� �����������
--������ ����������, ���� ��� ����� ����������� � �������
--���.���.���� .

SELECT
    phone_number,
    substr(phone_number, 1, 3)
FROM
    employees
WHERE
    phone_number LIKE '___.___.____';

--4. �������� ������ ���� �����������, � ������� ��������� ����� � �����
--����� 'm' � ����� ����� ������ 5��.

SELECT
    *
FROM
    employees
WHERE
    first_name LIKE '%m'
    AND length(first_name) > 5;

--5. �������� ���� ��������� �������.

SELECT
    next_day(sysdate, 'friday')
FROM
    dual;

--6. �������� ������ ���� �����������, ������� �������� � ��������
--������ 12 ��� � 6�� ������� (150 �������).

SELECT
    *
FROM
    employees
WHERE
    months_between(sysdate, hire_date) > 150;

--7. �������� ���������� �����, ������� � �������� PHONE_NUMBER ��� '.' �� '-'.

SELECT
    phone_number,
    replace(phone_number, '.', '-')
FROM
    employees;

--8. �������� ���, email, job_id ��� ���� ���������� � �������:
--STEVEN sking Ad_Pres

SELECT
    upper(first_name),
    lower(email),
    initcap(job_id)
FROM
    employees;

--9. �������� ���������� � ����� ��������� � ��� �/�, �� ���������
--������ || , � ����� ����: Steven24000

SELECT
    concat(first_name, salary)
FROM
    employees;

--10.�������� ���������� � ���� ����� ���������� �� ������,
--���������� ���� ����� �� ������ �� ������ � ������ ��� ����
--����� �� ������.

SELECT 
    hire_date,
    round(hire_date, 'MM'),
    round(hire_date, 'YYYY')
FROM
    employees;

--11.�������� ���������� � ����� � ������� ���� ����������. ���
--������ �������� �� 10 �������� � ���� ����� ����� ������ 10, ��
--���������� �� 10 �������� ������ $. ������� ������ �������� �� 15
--�������� � ���� ����� ������� ������ 15, �� ����� ��������
--������� ������� ������ ! ������� ����������.

SELECT
    rpad(first_name, 10, '$'),
    lpad(last_name, 15, '!')
FROM
    employees;

--12.�������� ��� ���������� � ������� ������ ����� �a� � ��� �����.

SELECT
    first_name,
    instr(first_name, 'a', 1, 2)
FROM
    employees;

--13.�������� �� ����� ����� '!!!HELLO!! MY FRIEND!!!!!!!!' � ��� �� �����, ��
--��� ������� ��������������� ���� � ������ � ����� ������.

SELECT
    '!!!HELLO!! MY FRIEND!!!!!!!!',
    TRIM('!' FROM '!!!HELLO!! MY FRIEND!!!!!!!!')
FROM
    dual;

--14.�������� ���������� �:
--? �/� ���������,
--? �/� ���������� �� ����������� 3.1415 ,
--? ���������� �� ������ �������� ������� ����������� �/�-��,
--? ����� ���������� ����� �� ����������� �/�.

SELECT
    salary,
    salary * 3.1415,
    round(salary * 3.1415),
    trunc(salary * 3.1415, - 3)/1000
FROM
    employees;

--15.�������� ���������� �:
--? ���� ����� ���������� �� ������,
--? ����, ������� ���� ����� ��� ����, ����� �������� ���������� ��
--������,
--? ���� ���������� ��� � ������ �������� ���������� �� ������.

SELECT
    hire_date,
    add_months(hire_date, 6),
    last_day(hire_date)
FROM
    employees;