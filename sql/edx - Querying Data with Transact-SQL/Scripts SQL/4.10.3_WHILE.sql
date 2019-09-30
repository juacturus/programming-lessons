--Section 4, M�dulo 10, Arquivo 3 - WHILE

/*****************************************************************
					WHILE - BEGIN - END

	Os loopings em SQL geralmente n�o s�o t�o aplic�veis, visto que
estamos interessados em opera��es baseadas em "sets" e n�o linha
a linha. Comandos que rodam em batch de uma �nica vez s�o mais
eficientes do que programas que iteram atrav�s de inst�ncias

				WHILE <condition>
				BEGIN
					<comandos>
				END
*****************************************************************/

--0. Criando tabela de exemplo

IF OBJECT_ID('SalesLT.DemoTable') IS NOT NULL
	BEGIN
	DROP TABLE SalesLT.DemoTable
	END
GO


CREATE TABLE SalesLT.DemoTable
(ID INT IDENTITY(1,1),
Description Varchar(20),
CONSTRAINT [PK_DemoTable] PRIMARY KEY CLUSTERED(ID) 
)
GO

--1. Exemplo WHILE
DECLARE @Counter INT = 1

WHILE @Counter <= 5
BEGIN
	INSERT SalesLT.DemoTable(Description)
	VALUES ('ROW ' + CONVERT(VARCHAR(5), @Counter))
	SET @Counter = @Counter + 1
END

SELECT * FROM SalesLT.DemoTable