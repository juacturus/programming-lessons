--Section 3, M�dulo 7, Arquivo 2 - Tabelas Tempor�rias, Vari�veis TABLE

--1. Criando tabela tempor�ria
CREATE TABLE #tmpProducts
(ProductID INTEGER,
ProductName VARCHAR(5));

--1.1 Selecionando dados da tabela tempor�ria
SELECT * FROM #tmpProducts;

--2. Criando vari�veis do tipo TABLE
DECLARE @varProducts TABLE
(ProductID INTEGER,
ProductName VARCHAR(50));

--2.1 O escopo da vari�vel � o batch do comando
SELECT * FROM @varProducts;
--Obs: SELECT e DECLARE devem ser executados juntos
--N�o � poss�vel executar o SELECT individualmente

--------------------------------------------------------------

--3. Tabelas Tempor�rias
CREATE TABLE #Colors
(Color VARCHAR(15));

INSERT INTO #Colors
SELECT DISTINCT Color FROM SalesLT.Product

SELECT * FROM #Colors

--4. Vari�veis do tipo Tabela
DECLARE @Colors AS TABLE
(Color VARCHAR(15));

INSERT INTO @Colors
SELECT DISTINCT Color FROM SalesLT.Product

--A declara��o, inser��o e sele��o devem ser executadas em uma mesma batch
SELECT * FROM @Colors