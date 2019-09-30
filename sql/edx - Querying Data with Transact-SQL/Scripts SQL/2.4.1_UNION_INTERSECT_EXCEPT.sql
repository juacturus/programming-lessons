--Section 2, M�dulo 4, Arquivo 1 - UNION, INTERSECT, EXCEPT

--1. Unir as tabelas Employees e Customers para verificar todos os empregados e clientes 
--(removendo as duplicatas com UNION)
SELECT FirstName, LastName
FROM SalesLT.Employees
UNION
SELECT FirstName, LastName
FROM SalesLT.Customers

--2. Repetir a consulta anterior sem a remo��o de duplicatas (UNION ALL)
SELECT FirstName, LastName
FROM SalesLT.Employees
UNION ALL
SELECT FirstName, LastName
FROM SalesLT.Customers

--3. Diferenciar clientes e empregados
--Existe algu�m que � tanto empregado quanto cliente? (1 pessoa, pela quantidade de linhas: Donna Carreras)
SELECT FirstName, LastName, 'Employees' AS Type
FROM SalesLT.Employees
UNION
SELECT FirstName, LastName, 'Customers'
FROM SalesLT.Customers

--4. Retornar apenas Empregados que tamb�m s�o Clientes
SELECT FirstName, LastName
FROM SalesLT.Employees
INTERSECT
SELECT FirstName, LastName
FROM SalesLT.Customers

--5. Retornar apenas Clientes que n�o s�o Empregados
SELECT FirstName, LastName
FROM SalesLT.Customers
EXCEPT
SELECT FirstName, LastName
FROM SalesLT.Employees