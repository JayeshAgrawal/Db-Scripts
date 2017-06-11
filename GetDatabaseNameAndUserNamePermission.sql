USE MASTER
GO 

SELECT SL.dbname AS 'Database Name',SL.name AS 'User Name',SP.type_desc AS 'Login Type', 
SL.denylogin, SL.hasaccess, SL.isntname, SL.isntname, SL.isntgroup, SL.isntuser, SL.sysadmin,
SL.securityadmin, SL.serveradmin, SL.setupadmin, SL.processadmin, SL.diskadmin, SL.diskadmin, 
SL.dbcreator, SL.bulkadmin FROM sys.server_principals AS SP 
INNER JOIN sys.syslogins AS SL ON SP.SID = SL.SID 