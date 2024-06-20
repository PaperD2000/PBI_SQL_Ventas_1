-- Tabla DIMDate Limpia
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Fecha,
      --[DayNumberOfWeek] 
      --[EnglishDayNameOfWeek]
      [SpanishDayNameOfWeek] AS Dia,
      --[FrenchDayNameOfWeek]
      --[DayNumberOfMonth]
      --[DayNumberOfYear]
      [WeekNumberOfYear] AS Num_Semana,
      --[EnglishMonthName]
      [SpanishMonthName] AS Mes,
      --[FrenchMonthName]
      [MonthNumberOfYear] AS Num_Mes,
      [CalendarQuarter] AS CuartoAño,
      [CalendarYear] AS Año
      --[CalendarSemester]
      --[FiscalQuarter]
      --[FiscalYear]
      --[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE CalendarYear >= 2020
