-- Tabla DIM_Product Limpia
SELECT 
	   p.[ProductKey],
       p.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      --,[SpanishProductName]
       p.[EnglishProductName] AS [Product Name],
	   ps.EnglishProductSubcategoryName AS [Sub Category],
	   pc.EnglishProductCategoryName AS [Product Category],
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
       p.[Color] AS [Product Color],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
       p.[Size] AS [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
       p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
       p.[ModelName] AS [Product Model Name],
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	   ISNULL (p.Status, 'Outdated') AS [Product Status]
  FROM [dbo].[DimProduct] AS p
	   LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
	   LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC
