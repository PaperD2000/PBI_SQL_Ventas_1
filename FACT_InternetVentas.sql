SELECT 
	  [ProductKey],
      [OrderDateKey],
      [DueDateKey],
      [ShipDateKey],
      [CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      [SalesOrderNumber],
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
      [SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM [dbo].[FactInternetSales]
  WHERE LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) -4 --Asegurarnos que estamos mostrando los ultimos 4 años 
  ORDER BY OrderDateKey ASC
