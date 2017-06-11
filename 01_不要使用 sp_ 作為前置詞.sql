/*=========================================================

	德瑞克：SQL Server 學習筆記
	http://sharedderrick.blogspot.com/

=========================================================*/

/* 命名預存程序
建議您不要使用 sp_ 作為前置詞，來建立任何預存程序。
SQL Server 會使用 sp_ 前置詞來指定系統預存程序。

您選擇的名稱可能與某些未來的系統程序產生衝突。

如果您的應用程式使用非資料結構合格的名稱參照，而您擁有的程序名稱和系統程序名稱相衝突，您的應用程式就會中斷，因為名稱會聯結到系統程序而非您的程序。

與系統預存程序的名稱相同、非限定或是在 dbo 結構描述中的使用者自訂預存程序，將永遠不會執行，反而會永遠執行系統預存程序

以 sp_ 字元開頭的系統預存程序。
它們實際上是儲存在資源資料庫中，但在邏輯上會出現在 Microsoft SQL Server 執行個體中每個系統和使用者自訂資料庫的 sys 結構描述中。
系統預存程序可以從任何資料庫中執行，不必完整限定預存程序的名稱。
*/

/*=========================================================*/

/* sp_who (Transact-SQL) 
提供 Microsoft SQL Server Database Engine 執行個體中有關目前使用者、工作階段和處理序的資訊。
您可以篩選資訊，只傳回屬於特定使用者或屬於特定工作階段的非閒置處理序。
*/
USE Northwind_Dev
GO
EXEC sp_who
GO

/*=========================================================*/

-- 建立與與系統預存程序的名稱相同的使用者自訂預存程序

CREATE PROC sp_who
AS
	SELECT LastName, City
	FROM dbo.Employees
GO

-- 永遠執行系統預存程序
EXEC sp_who
GO

-- 永遠不會執行使用者自訂預存程序
EXEC Northwind_Dev.dbo.sp_who
GO