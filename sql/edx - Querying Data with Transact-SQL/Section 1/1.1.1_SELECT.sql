--Section 1, M�dulo 1, Arquivo 1 - O comando SELECT

--1. Selecione todos os dados da tabela SalesLT.Product
SELECT * FROM SalesLT.Product;

--2. Selecione apenas as colunas ProductNumber, Color, ListPrice, StandardCost e Size da tabela SalesLT.Product
SELECT ProductNumber, Color, ListPrice, StandardCost, Size FROM SalesLT.Product;

--3. Selecione as mesmas colunas do item 2, por�m com um c�lculo de subtra��o entre ListPrice e StandardCost
--d� um "allias" a essa coluna: Margin
SELECT ProductNumber, Color, (ListPrice-StandardCost) AS Margin, Size FROM SalesLT.Product

