--Section 1, M�dulo 1, Arquivo 2 - Tipos Primitivos: CAST, CONVERT

--1. Selecione as colunas ProductID e Name da tabela Product
SELECT ProductID, Name FROM SalesLT.Product

--2. Fa�a uma sele��o concatenada com "ProductID: Name" e d� um "allias" a essa coluna: ProductName
SELECT ProductID + ': ' + Name FROM SalesLT.Product

--3. Convertendo o t�pico 2 acima com CAST
--https://docs.microsoft.com/pt-br/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-2017
SELECT ProductID, Name,
	CAST(ProductID AS VARCHAR) + ': ' + Name AS ProductName
FROM SalesLT.Product

--4. Convertendo o t�pico 2 acima com CONVERT
SELECT CONVERT(VARCHAR, ProductID) + ': ' + Name 
FROM SalesLT.Product

--5. Converta a coluna SellStartDate em uma data padr�o e em uma data formato ISO8601 (126)


--6. Seria poss�vel converter a coluna Size para Inteiro?


--7. Converta a coluna Size para Inteiro utilizando TRY_CAST


--8. Retorne a coluna ListPrice no formato 'R$ ListPrice'
