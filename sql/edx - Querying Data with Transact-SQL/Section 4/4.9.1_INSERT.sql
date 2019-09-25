--Section 4, M�dulo 9, Arquivo 1 - INSERT

/*****************************************************************
							INSERT

	Neste arquivo, vamos praticar inser��es de dados em tabelas
no SQL Server. Para auxiliar nos exemplos, vamos criar uma tabela
SalesLT.CallLog
*****************************************************************/

--1. Criando tabela de Log de chamadas
CREATE TABLE SalesLT.CallLog
(
	CallID int IDENTITY PRIMARY KEY NOT NULL,
	CallTime datetime NOT NULL DEFAULT GETDATE(),
	SalesPerson nvarchar(256) NOT NULL,
	CustomerID int NOT NULL REFERENCES SalesLT.Customer(CustomerID),
	PhoneNumber nvarchar(25) NOT NULL,
	Notes nvarchar(max) NULL
);
GO

--1.1 Inserindo uma linha na tabela
INSERT INTO SalesLT.CallLog VALUES
('2015-01-01T12:30:00', 'adventure-works\pamela0', 1, '245-555-0173', 'Returning call re: enquiry about delivery');

SELECT * FROM SalesLT.CallLog;

--1.2 Inserindo uma linha se utilizando da propriedade DEFAULT da tabela
INSERT INTO SalesLT.CallLog VALUES
(DEFAULT, 'adventure-works\david8', 1, '170-555-0127', NULL);

SELECT * FROM SalesLT.CallLog;

--1.3 Inserindo uma linha explicitando as colunas
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\jillian0', 3, '279-555-0130');

SELECT * FROM SalesLT.CallLog;

--1.4 Inserindo m�ltiplas linhas
INSERT INTO SalesLT.CallLog
VALUES
(DATEADD(mi, -2, GETDATE()), 'adventure-works\jillian0', 4, '710-555-0173', NULL),
(DEFAULT, 'adventure-works\shu0', 5, '828-555-0186', 'Called to arrange deliver of order 10987')
--SELECT DATEADD(mi, -2, GETDATE()) = Seleciona a data e a hora atual e subtrai 2 minutos (mi)
SELECT * FROM SalesLT.CallLog;

--1.5 Inserindo linhas a partir de um resultado de uma query
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber, Notes)
SELECT SalesPerson, CustomerID, Phone, 'Sales promotion call'
FROM SalesLT.Customer
WHERE CompanyName = 'Big-Time Bike Store'

SELECT * FROM SalesLT.CallLog; --Duas linhas foram adicionadas (resultado da query)


/*****************************************************************
						SCOPE_IDENTITY()

	Com a fun��o SCOPE_IDENTITY() � poss�vel retornar o �ltimo 
�ndice da chave prim�ria presente na tabela
*****************************************************************/

--2. Retornando �ndice da chave prim�ria
INSERT INTO SalesLT.CallLog (SalesPerson, CustomerID, PhoneNumber)
VALUES
('adventure-works\jos�1', 10, '150-555-0127')

SELECT SCOPE_IDENTITY();

SELECT * FROM SalesLT.CallLog;

--3. Sobrescrevendo �ndice de identidade
SET IDENTITY_INSERT SalesLT.CallLog ON;

INSERT INTO SalesLT.CallLog (CallID, SalesPerson, CustomerID, PhoneNumber)
VALUES
(10, 'adventure-works\jos�1', 11, '926-555-0159')

SET IDENTITY_INSERT SalesLT.CallLog OFF;

SELECT * FROM SalesLT.CallLog