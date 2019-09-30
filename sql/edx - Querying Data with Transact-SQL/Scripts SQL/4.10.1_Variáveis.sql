--Section 4, M�dulo 10, Arquivo 1 - Vari�vies

/*****************************************************************
							DECLARE

	O comando DECLARE � utilizado para a cria��o de vari�veis no
SQL Server. Existem diferentes formas de atribuir um valor a uma
vari�vel por�m, em todo caso, a sintaxe de declara��o � dada por:

				DECLARE @variable_name DATATYPE
*****************************************************************/

--1. Declarando uma vari�vel
DECLARE @City VARCHAR(20) = 'Toronto'
--SET @City = 'Bellevue'

--GO; As vari�veis s�o definidas dentro do escpo da batch e, portanto, com o comando GO, a query abaixo n�o reconhecer� a vari�vel criada acima

SELECT c.FirstName + ' ' + c.LastName AS Name, a.AddressLine1 AS Address, a.City
FROM SalesLT.Customer c
INNER JOIN SalesLT.CustomerAddress ca
ON c.CustomerID = ca.CustomerID
INNER JOIN SalesLT.Address a
ON ca.AddressID = a.AddressID
WHERE a.City = @City

--2. Atribuindo valores � vari�vel atrav�s de um SELECT
DECLARE @Result MONEY
SELECT @Result = MAX(TotalDue)
FROM SalesLT.SalesOrderHeader

PRINT @Result