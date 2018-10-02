-- cerner_2^5_2018

declare @dbName varchar(50)
set @dbName = DB_NAME()

IF NOT EXISTS (SELECT 1 FROM master.sys.databases where name = @dbName)
BEGIN 
	return
END

declare 
 @fileName VARCHAR(50),
 @filePath VARCHAR(300),
 @SQL VARCHAR(MAX)
declare @tempTable TABLE (name nvarchar(50),filePath nvarchar(300))

insert into @tempTable (name, filePath)
select top 1 name, physical_name from sys.database_files

select @fileName = name, @filePath = filePath
from @tempTable

SET @SQL = 'create database ' + @dbName + '_Snapshot ON (NAME = ''' + @fileName + ''', FILENAME = '''+ @filePath+'.ss'') AS SNAPSHOT OF ' + @dbName
EXEC (@SQL);

--RESTORE DATABASE <database name> from DATABASE_SNAPSHOT =  '<Snapshot name>'
--DROP DATABASE <Snapshot name>