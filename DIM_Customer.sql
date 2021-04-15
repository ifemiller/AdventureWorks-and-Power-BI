--Cleaned DIM_Customers Table--
SELECT cus.CustomerKey as CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      cus.FirstName AS [First Name],
      --,[MiddleName]
      cus.LastName AS [Last Name],
	  cus.FirstName + ' ' + cus.LastName AS [Full Name], -- Combined first and last name
      --,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
      --,[Suffix]
      CASE cus.Gender   -- Renamed F/M as Female/Male
		WHEN 'M' THEN 'Male'
		WHEN 'F' THEN 'Female'
		END AS Gender,
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      cus.DateFirstPurchase AS DateFirstPurchase,
      --,[CommuteDistance]
	  geo.city AS [Customer City]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] AS cus
  LEFT JOIN DimGeography AS geo ON geo.GeographyKey = cus.GeographyKey -- Get customer city by joining geography keys
  ORDER BY
  CustomerKey ASC