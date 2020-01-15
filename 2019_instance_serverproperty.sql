SELECT
CAST(GETDATE() AS datetime2) AS CollectionDate															,--datetime2; 
CAST(@@SERVERNAME AS nvarchar(128)) AS ServerNameVar													,--nvarchar(128); @@Servername sometimes might be different than SERVERPROPERTY('ServerName')
CAST(SERVERPROPERTY('BuildClrVersion') AS nvarchar(128)) AS BuildClrVersion								,--nvarchar(128); Version of the Microsoft.NET Framework common language runtime (CLR) that was used while building the instance of SQL Server.
CAST(SERVERPROPERTY('Collation') AS nvarchar(128)) AS Collation											,--nvarchar(128); Name of the default collation for the server.
CAST(SERVERPROPERTY('CollationID') AS int) AS CollationID												,--int; ID of the SQL Server collation.
CAST(SERVERPROPERTY('ComparisonStyle') AS int) AS ComparisonStyle										,--int; Windows comparison style of the collation.
CAST(SERVERPROPERTY('ComputerNamePhysicalNetBIOS') AS nvarchar(128)) AS ComputerNamePhysicalNetBIOS 	,--nvarchar(128); NetBIOS name of the local computer on which the instance of SQL Server is currently running.
CAST(SERVERPROPERTY('Edition') AS nvarchar(128)) AS Edition												,--nvarchar(128); Installed product edition of the instance of SQL Server. Use the value of this property to determine the features and the limits, such as Compute Capacity Limits by Edition of SQL Server. 64-bit versions of the Database Engine append (64-bit) to the SERVERPROPERTY(version.
CAST(SERVERPROPERTY('EditionID') AS bigint) AS EditionID												,--bigint; EditionID represents the installed product edition of the instance of SQL Server. Use the value of this property to determine features and limits, such as Compute Capacity Limits by Edition of SQL Server.
CAST(SERVERPROPERTY('EngineEdition') AS int) AS EngineEdition											,--int; Database Engine edition of the instance of SQL Server installed on the server.
CAST(SERVERPROPERTY('HadrManagerStatus') AS int) AS HadrManagerStatus									,-- ; Applies to: SQL Server 2012 (11.x) and later. Indicates whether the Always On availability groups manager has started.
CAST(SERVERPROPERTY('InstanceDefaultDataPath') AS nvarchar(1024)) AS InstanceDefaultDataPath			,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Name of the default path to the instance data files.
CAST(SERVERPROPERTY('InstanceDefaultLogPath') AS nvarchar(1024)) AS InstanceDefaultLogPath				,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Name of the default path to the instance log files.
CAST(SERVERPROPERTY('InstanceName') AS nvarchar(128)) AS InstanceName									,--nvarchar(128); Name of the instance to which the user is connected.
CAST(SERVERPROPERTY('IsAdvancedAnalyticsInstalled') AS int) AS IsAdvancedAnalyticsInstalled				,-- ; Returns 1 if the Advanced Analytics feature was installed during setup; 0 if Advanced Analytics was not installed.
CAST(SERVERPROPERTY('IsClustered') AS int) AS IsClustered												,--int; Server instance is configured in a failover cluster.
CAST(SERVERPROPERTY('IsFullTextInstalled') AS int) AS IsFullTextInstalled								,--int; The full-text and semantic indexing components are installed on the current instance of SQL Server.
CAST(SERVERPROPERTY('IsHadrEnabled') AS int) AS IsHadrEnabled											,--int; Applies to: SQL Server 2012 (11.x) and later. Always On availability groups is enabled on this server instance.
CAST(SERVERPROPERTY('IsIntegratedSecurityOnly') AS int) AS IsIntegratedSecurityOnly						,--int; Server is in integrated security mode.
CAST(SERVERPROPERTY('IsLocalDB') AS int) AS IsLocalDB													,-- ; Applies to: SQL Server 2012 (11.x) and later. Server is an instance of SQL Server Express LocalDB.
CAST(SERVERPROPERTY('IsPolyBaseInstalled') AS int) AS IsPolyBaseInstalled								,--int; Applies to: SQL Server 2019 (15.x). Returns whether the server instance has the PolyBase feature installed.
CAST(SERVERPROPERTY('IsSingleUser') AS int) AS IsSingleUser												,--int; Server is in single-user mode.
CAST(SERVERPROPERTY('IsXTPSupported') AS int) AS IsXTPSupported											,--int; Applies to: SQL Server (SQL Server 2014 (12.x) and later), SQL Database. Server supports In-Memory OLTP.
CAST(SERVERPROPERTY('LCID') AS int) AS LCID																,--int; Windows locale identifier (LCID) of the collation.
CAST(SERVERPROPERTY('LicenseType') AS nvarchar(128)) AS LicenseType										,--nvarchar(128); Unused. License information is not preserved or maintained by the SQL Server product. Always returns DISABLED.
CAST(SERVERPROPERTY('MachineName') AS nvarchar(128)) AS MachineName										,--nvarchar(128); Windows computer name on which the server instance is running.
CAST(SERVERPROPERTY('NumLicenses') AS int) AS NumLicenses												,--int; Unused. License information is not preserved or maintained by the SQL Server product. Always returns NULL.
CAST(SERVERPROPERTY('ProcessID') AS int) AS ProcessID													,--int; Process ID of the SQL Server service. ProcessID is useful in identifying which Sqlservr.exe belongs to this instance.
CAST(SERVERPROPERTY('ProductBuild') AS int) AS ProductBuild												,-- ; Applies to: SQL Server 2014 (12.x) beginning October, 2015.The build number.
CAST(SERVERPROPERTY('ProductBuildType') AS nvarchar(128)) AS ProductBuildType							,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Type of build of the current build.
CAST(SERVERPROPERTY('ProductLevel') AS nvarchar(128)) AS ProductLevel									,--nvarchar(128); Level of the version of the instance of SQL Server.
CAST(SERVERPROPERTY('ProductMajorVersion') AS int) AS ProductMajorVersion								,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. The major version.
CAST(SERVERPROPERTY('ProductMinorVersion') AS int) AS ProductMinorVersion								,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. The minor version.
CAST(SERVERPROPERTY('ProductUpdateLevel') AS nvarchar(128)) AS ProductUpdateLevel						,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Update level of the current build. CU indicates a cumulative update.
CAST(SERVERPROPERTY('ProductUpdateReference') AS nvarchar(128)) AS ProductUpdateReference				,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. KB article for that release.
CAST(SERVERPROPERTY('ProductVersion') AS nvarchar(128)) AS ProductVersion 								,--nvarchar(128); Version of the instance of SQL Server, in the form of 'major.minor.build.revision'.
CAST(SERVERPROPERTY('ResourceLastUpdateDateTime') AS datetime) AS ResourceLastUpdateDateTime			,--datetime ; Returns the date and time that the Resource database was last updated.
CAST(SERVERPROPERTY('ResourceVersion') AS nvarchar(128)) AS ResourceVersion								,--nvarchar(128); Returns the version Resource database.
CAST(SERVERPROPERTY('ServerName') AS nvarchar(128)) AS ServerName										,--nvarchar(128); Both the Windows server and instance information associated with a specified instance of SQL Server.
CAST(SERVERPROPERTY('SqlCharSet') AS tinyint) AS SqlCharSet												,--tinyint; The SQL character set ID from the collation ID.
CAST(SERVERPROPERTY('SqlCharSetName') AS nvarchar(128)) AS SqlCharSetName								,--nvarchar(128); The SQL character set name from the collation.
CAST(SERVERPROPERTY('SqlSortOrder') AS tinyint) AS SqlSortOrder											,--tinyint; The SQL sort order ID from the collation
CAST(SERVERPROPERTY('SqlSortOrderName') AS nvarchar(128)) AS SqlSortOrderName							,--nvarchar(128); The SQL sort order name from the collation.
CAST(SERVERPROPERTY('FilestreamShareName') AS nvarchar(128)) AS FilestreamShareName					,-- ; The name of the share used by FILESTREAM.
CAST(SERVERPROPERTY('FilestreamConfiguredLevel') AS int) AS FilestreamConfiguredLevel 		,-- ; The configured level of FILESTREAM access. For more information, see filestream access level.
CAST(SERVERPROPERTY('FilestreamEffectiveLevel') AS int) AS FilestreamEffectiveLevel			-- ; The effective level of FILESTREAM access. This value can be different than the FilestreamConfiguredLevel if the level has changed and either an instance restart or a computer restart is pending. For more information, see filestream access level.
