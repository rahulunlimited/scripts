IF NOT EXISTS(SELECT * FROM sys.schemas WHERE NAME = 'Dim')
EXEC sp_executesql N'CREATE SCHEMA Dim Authorization dbo'

IF NOT EXISTS(SELECT * FROM sys.schemas WHERE NAME = 'FACT')
EXEC sp_executesql N'CREATE SCHEMA FACT Authorization dbo'


ALTER SCHEMA DIM TRANSFER [dbo].[DimAccount]
GO
EXEC sp_rename '[Dim].[DimAccount]', 'Account'

ALTER SCHEMA DIM TRANSFER [dbo].DimCurrency
GO
EXEC sp_rename '[Dim].[DimCurrency]', 'Currency'

ALTER SCHEMA DIM TRANSFER [dbo].DimCustomer
GO
EXEC sp_rename '[Dim].[DimCustomer]', 'Customer'

ALTER SCHEMA DIM TRANSFER [dbo].DimDate
GO
EXEC sp_rename '[Dim].[DimDate]', 'Date'

ALTER SCHEMA DIM TRANSFER [dbo].DimDepartmentGroup
GO
EXEC sp_rename '[Dim].[DimDepartmentGroup]', 'DepartmentGroup'

ALTER SCHEMA DIM TRANSFER [dbo].DimEmployee
GO
EXEC sp_rename '[Dim].[DimEmployee]', 'Employee'

ALTER SCHEMA DIM TRANSFER [dbo].DimGeography
GO
EXEC sp_rename '[Dim].[DimGeography]', 'DimGeography'

ALTER SCHEMA DIM TRANSFER [dbo].DimOrganization
GO
EXEC sp_rename '[Dim].[DimOrganization]', 'Organization'

ALTER SCHEMA DIM TRANSFER [dbo].DimProduct
GO
EXEC sp_rename '[Dim].[DimProduct]', 'Product'

ALTER SCHEMA DIM TRANSFER [dbo].DimProductCategory
GO
EXEC sp_rename '[Dim].[DimProductCategory]', 'ProductCategory'

ALTER SCHEMA DIM TRANSFER [dbo].DimProductSubcategory
GO
EXEC sp_rename '[Dim].[DimProductSubcategory]', 'ProductSubcategory'

ALTER SCHEMA DIM TRANSFER [dbo].DimPromotion
GO
EXEC sp_rename '[Dim].[DimPromotion]', 'Promotion'

ALTER SCHEMA DIM TRANSFER [dbo].DimReseller
GO
EXEC sp_rename '[Dim].[DimReseller]', 'Reseller'

ALTER SCHEMA DIM TRANSFER [dbo].DimSalesReason
GO
EXEC sp_rename '[Dim].[DimSalesReason]', 'SalesReason'

ALTER SCHEMA DIM TRANSFER [dbo].DimSalesTerritory
GO
EXEC sp_rename '[Dim].[DimSalesTerritory]', 'SalesTerritory'

ALTER SCHEMA DIM TRANSFER [dbo].DimScenario
GO
EXEC sp_rename '[Dim].[DimScenario]', 'Scenario'

ALTER SCHEMA Fact TRANSFER [dbo].[FactAdditionalInternationalProductDescription]
GO
EXEC sp_rename '[Fact].[FactAdditionalInternationalProductDescription]', 'AdditionalInternationalProductDescription'

ALTER SCHEMA Fact TRANSFER [dbo].FactCallCenter
GO
EXEC sp_rename '[Fact].[FactCallCenter]', 'CallCenter'

ALTER SCHEMA Fact TRANSFER [dbo].FactCurrencyRate
GO
EXEC sp_rename '[Fact].[FactCurrencyRate]', 'CurrencyRate'

ALTER SCHEMA Fact TRANSFER [dbo].FactFinance
GO
EXEC sp_rename '[Fact].[FactFinance]', 'Finance'

ALTER SCHEMA Fact TRANSFER [dbo].FactInternetSales
GO
EXEC sp_rename '[Fact].[FactInternetSales]', 'InternetSales'

ALTER SCHEMA Fact TRANSFER [dbo].FactInternetSalesReason
GO
EXEC sp_rename '[Fact].[FactInternetSalesReason]', 'InternetSalesReason'

ALTER SCHEMA Fact TRANSFER [dbo].FactProductInventory
GO
EXEC sp_rename '[Fact].[FactProductInventory]', 'ProductInventory'

ALTER SCHEMA Fact TRANSFER [dbo].FactResellerSales
GO
EXEC sp_rename '[Fact].[FactResellerSales]', 'ResellerSales'

ALTER SCHEMA Fact TRANSFER [dbo].FactSalesQuota
GO
EXEC sp_rename '[Fact].[FactSalesQuota]', 'SalesQuota'

ALTER SCHEMA Fact TRANSFER [dbo].FactSurveyResponse
GO
EXEC sp_rename '[Fact].[FactSurveyResponse]', 'SurveyResponse'
