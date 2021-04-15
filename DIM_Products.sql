--Cleaned DIM_Products Table --
SELECT p.[ProductKey],
      p.[ProductAlternateKey] AS ProductItemCode,
      --,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode],
      p.[EnglishProductName] AS [Product Name],
	  psub.EnglishProductSubcategoryName AS [Sub Category], -- Joined from Sub Category Table
	  pcat.EnglishProductCategoryName AS [Product Catgory],
    --  ,[SpanishProductName]
    --  ,[FrenchProductName]
     -- ,[StandardCost]
     -- ,[FinishedGoodsFlag]
      p.[Color] AS [Product Color],
      --,[SafetyStockLevel]
     -- ,[ReorderPoint]
      --,[ListPrice]
     p.[Size] AS [Product Size],
     -- ,[SizeRange]
     -- ,[Weight]
     -- ,[DaysToManufacture]
      p.[ProductLine] AS [Product Line],
      --,[DealerPrice]
     -- ,[Class]
     -- ,[Style]
      p.[ModelName] AS [Product Model Name],
     -- ,[LargePhoto]
      p.[EnglishDescription] AS [Product Description],
     -- ,[FrenchDescription]
     -- ,[ChineseDescription]
     -- ,[ArabicDescription]
     -- ,[HebrewDescription]
     -- ,[ThaiDescription]
     -- ,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
    --  ,[StartDate]
     -- ,[EndDate]
     -- ,[Status]
	ISNULL(p.Status, 'Outdated') AS [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  LEFT JOIN DimProductSubcategory AS psub ON psub.ProductSubcategoryKey = p.ProductSubcategoryKey
  LEFT JOIN DimProductCategory AS pcat ON psub.ProductCategoryKey = pcat.ProductCategoryKey
  ORDER BY
  p.ProductKey ASC