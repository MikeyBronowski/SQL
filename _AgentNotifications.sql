SELECT
CAST(GETDATE() AS datetime2) AS CollectionDate,
CAST(@@SERVERNAME AS nvarchar(128)) AS ServerName,
*
from msdb.dbo.sysnotifications;