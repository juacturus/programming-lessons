--Section 2, M�dulo 5, Arquivo 2 - LOGICAL FUNCTIONS

--1. ISNUMERIC: Retornando consulta apenas onde o Tamanho do Produto � do tipo num�rico
SELECT Name, Size FROM SalesLT.Product
WHERE ISNUMERIC(Size) = 1

--2. IIF e ISNUMERIC: Verificando se um tipo primitivo � ou n�o num�rico
SELECT 
	Name AS NomeProduto, 
	Size AS TamanhoProduto,
	IIF(ISNUMERIC(Size)=1, 'Numeric', 'Non-Numeric') AS TipoTamanho
FROM SalesLT.Product