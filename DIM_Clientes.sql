-- Tabla DIMCustomer Limpia
SELECT 
	  c.customerkey AS CustomerKey,
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      c.firstname AS FirstName, 
      --,[MiddleName]
      c.lastname AS LastName,
	  c.firstname + ' ' + c.lastname AS FullName,
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
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
      c.datefirstpurchase AS DateFirstPurchase,
      --,[CommuteDistance]
	  g.city AS CustomerCity --Join en CustomerCity  de la tabla Geography 
  FROM dbo.dimcustomer AS c LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey
  ORDER BY CustomerKey ASC --Lista ordenada por CustomerKey
