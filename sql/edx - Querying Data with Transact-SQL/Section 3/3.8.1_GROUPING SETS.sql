--Section 3, M�dulo 8, Arquivo 1 - GROUPING SETS

/*******************************************************
	SELECT <column list with aggregate(s)>
	FROM <source>
	GROUP BY
	GROUPING SETS
	(
		<column_name>, --one or more columns
		<column_name>, --one or more columns
		() --empty parenthesis if aggregating all rows
	);
*******************************************************/

-- GROUPING SETS permitem m�ltiplos agrupame
SELECT cat.ParentProductCategoryName, cat.ProductCategoryName, COUNT(prd.ProductID) AS Products
FROM SalesLT.vGetAllCategories cat
LEFT JOIN SalesLT.Product prd
ON cat.ProductCategoryID = prd.ProductCategoryID
--GROUP BY cat.ParentProductCategoryName, cat.ProductCategoryName
--GROUP BY GROUPING SETS (cat.ParentProductCategoryName, cat.ProductCategoryName, ())
--GROUP BY ROLLUP (cat.ParentProductCategoryName, cat.ProductCategoryName)
GROUP BY CUBE (cat.ParentProductCategoryName, cat.ProductCategoryName)
ORDER BY cat.ParentProductCategoryName, cat.ProductCategoryName;

/*******************************************************
					GROUP BY
	Agrupamento cl�ssico a partir das colunas agregadas 
e utilizadas no comando de sele��o. No exemplo acima, 
s�o contados a quantidade de Produtos por Categoria 
Principal e Categoria Espec�fica
*******************************************************/

/*******************************************************
				  GROUPING SETS
	Agrupamento que considera, de forma separada, as 
colunas agregadas. No exemplo acima, temos:

	- Uma primeira linha contendo <NULL> para ambas as 
colunas, indicando a quantidade total do agrupamento
	- Um agrupamento pela segunda categoria, indicando
a quantidade total agrupada para esta coluna
	- Um agrupamento pela primeira categoria, indicando
a quantidade total agrupada para esta coluna
*******************************************************/

/*******************************************************
				  GROUP BY ROLLUP
	Nesse agrupamento, temos uma primeira linha com a 
quantidade total agrupada em ambas as categorias. Na
sequ�ncia, antes de cada detalhadamento agrupado 
(semelhante ao GROUP BY), temos uma linha que indica
a quantidade agrupada da coluna-m�e (primeira categoria)
*******************************************************/

/*******************************************************
				  GROUP BY ROLLUP
	Nesse agrupamento, ainda temos uma primeira linha com
o total geral, seguido de um agrupamento pela segunda
categoria. Ap�s, cada categoria pai � agrupada, retornando
seu respectivo total seguido de um agrupamento de ambas
as categorias
*******************************************************/
