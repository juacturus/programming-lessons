--Section 4, M�dulo 10, Arquivo 2 - Condicionais

/*****************************************************************
					IF - BEGIN - END

	� poss�vel utilizar condicionais no SQL a partir dos comandos
IF, BEGIN e END. Abaixo, alguns exemplos de como aplicar a sintaxe
*****************************************************************/

--1. Comunicando resultado do Update atrav�s de condicionais
UPDATE SalesLT.Product
SET DiscontinuedDate=getdate()
WHERE ProductID=1;

IF @@ROWCOUNT<1
BEGIN
	PRINT 'Product was not found'
END
ELSE
BEGIN
	PRINT 'Product Updated'
END