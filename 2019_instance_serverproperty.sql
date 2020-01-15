SELECT
CAST(GETDATE() AS datetime2) AS CollectionDate					,--datetime2; 
CAST(@@SERVERNAME AS nvarchar(128)) AS ServerName				,--nvarchar(128); @@Servername sometimes might be different than SERVERPROPERTY('ServerName')
SERVERPROPERTY('BuildClrVersion') AS BuildClrVersion 				,--nvarchar(128); Version of the Microsoft.NET Framework common language runtime (CLR) that was used while building the instance of SQL Server.
SERVERPROPERTY('Collation') AS Collation					,--nvarchar(128); Name of the default collation for the server.
SERVERPROPERTY('CollationID') AS CollationID					,--int; ID of the SQL Server collation.
SERVERPROPERTY('ComparisonStyle') AS ComparisonStyle				,--int; Windows comparison style of the collation.
SERVERPROPERTY('ComputerNamePhysicalNetBIOS') AS ComputerNamePhysicalNetBIOS 	,--nvarchar(128); NetBIOS name of the local computer on which the instance of SQL Server is currently running.
SERVERPROPERTY('Edition') AS Edition						,--nvarchar(128); Installed product edition of the instance of SQL Server. Use the value of this property to determine the features and the limits, such as Compute Capacity Limits by Edition of SQL Server. 64-bit versions of the Database Engine append (64-bit) to the SERVERPROPERTY(version.
SERVERPROPERTY('EditionID') AS EditionID					,--bigint; EditionID represents the installed product edition of the instance of SQL Server. Use the value of this property to determine features and limits, such as Compute Capacity Limits by Edition of SQL Server.
SERVERPROPERTY('EngineEdition') AS EngineEdition				,--int; Database Engine edition of the instance of SQL Server installed on the server.
SERVERPROPERTY('HadrManagerStatus') AS HadrManagerStatus			,-- ; Applies to: SQL Server 2012 (11.x) and later. Indicates whether the Always On availability groups manager has started.
SERVERPROPERTY('InstanceDefaultDataPath') AS InstanceDefaultDataPath		,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Name of the default path to the instance data files.
SERVERPROPERTY('InstanceDefaultLogPath') AS InstanceDefaultLogPath		,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Name of the default path to the instance log files.
SERVERPROPERTY('InstanceName') AS InstanceName					,--nvarchar(128); Name of the instance to which the user is connected.
SERVERPROPERTY('IsAdvancedAnalyticsInstalled') AS IsAdvancedAnalyticsInstalled	,-- ; Returns 1 if the Advanced Analytics feature was installed during setup; 0 if Advanced Analytics was not installed.
SERVERPROPERTY('IsClustered') AS IsClustered					,--int; Server instance is configured in a failover cluster.
SERVERPROPERTY('IsFullTextInstalled') AS IsFullTextInstalled			,--int; The full-text and semantic indexing components are installed on the current instance of SQL Server.
SERVERPROPERTY('IsHadrEnabled') AS IsHadrEnabled				,--int; Applies to: SQL Server 2012 (11.x) and later. Always On availability groups is enabled on this server instance.
SERVERPROPERTY('IsIntegratedSecurityOnly') AS IsIntegratedSecurityOnly		,--int; Server is in integrated security mode.
SERVERPROPERTY('IsLocalDB') AS IsLocalDB					,-- ; Applies to: SQL Server 2012 (11.x) and later. Server is an instance of SQL Server Express LocalDB.
SERVERPROPERTY('IsPolyBaseInstalled') AS IsPolyBaseInstalled			,--int; Applies to: SQL Server 2019 (15.x). Returns whether the server instance has the PolyBase feature installed.
SERVERPROPERTY('IsSingleUser') AS IsSingleUser					,--int; Server is in single-user mode.
SERVERPROPERTY('IsXTPSupported') AS IsXTPSupported				,--int; Applies to: SQL Server (SQL Server 2014 (12.x) and later), SQL Database. Server supports In-Memory OLTP.
SERVERPROPERTY('LCID') AS LCID							,--int; Windows locale identifier (LCID) of the collation.
SERVERPROPERTY('LicenseType') AS LicenseType					,--nvarchar(128); Unused. License information is not preserved or maintained by the SQL Server product. Always returns DISABLED.
SERVERPROPERTY('MachineName') AS MachineName					,--nvarchar(128); Windows computer name on which the server instance is running.
SERVERPROPERTY('NumLicenses') AS NumLicenses					,--int; Unused. License information is not preserved or maintained by the SQL Server product. Always returns NULL.
SERVERPROPERTY('ProcessID') AS ProcessID					,--int; Process ID of the SQL Server service. ProcessID is useful in identifying which Sqlservr.exe belongs to this instance.
SERVERPROPERTY('ProductBuild') AS ProductBuild					,-- ; Applies to: SQL Server 2014 (12.x) beginning October, 2015.The build number.
SERVERPROPERTY('ProductBuildType') AS ProductBuildType				,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Type of build of the current build.
SERVERPROPERTY('ProductLevel') AS ProductLevel					,--nvarchar(128); Level of the version of the instance of SQL Server.
SERVERPROPERTY('ProductMajorVersion') AS ProductMajorVersion			,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. The major version.
SERVERPROPERTY('ProductMinorVersion') AS ProductMinorVersion			,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. The minor version.
SERVERPROPERTY('ProductUpdateLevel') AS ProductUpdateLevel			,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. Update level of the current build. CU indicates a cumulative update.
SERVERPROPERTY('ProductUpdateReference') AS ProductUpdateReference		,-- ; Applies to: SQL Server 2012 (11.x) through current version in updates beginning in late 2015. KB article for that release.
SERVERPROPERTY('ProductVersion') AS ProductVersion 				,--nvarchar(128); Version of the instance of SQL Server, in the form of 'major.minor.build.revision'.
SERVERPROPERTY('ResourceLastUpdateDateTime') AS ResourceLastUpdateDateTime	,--datetime ; Returns the date and time that the Resource database was last updated.
SERVERPROPERTY('ResourceVersion') AS ResourceVersion				,--nvarchar(128); Returns the version Resource database.
SERVERPROPERTY('ServerName') AS ServerName					,--nvarchar(128); Both the Windows server and instance information associated with a specified instance of SQL Server.
SERVERPROPERTY('SqlCharSet') AS SqlCharSet					,--tinyint; The SQL character set ID from the collation ID.
SERVERPROPERTY('SqlCharSetName') AS SqlCharSetName				,--nvarchar(128); The SQL character set name from the collation.
SERVERPROPERTY('SqlSortOrder') AS SqlSortOrder					,--tinyint; The SQL sort order ID from the collation
SERVERPROPERTY('SqlSortOrderName') AS SqlSortOrderName				,--nvarchar(128); The SQL sort order name from the collation.
SERVERPROPERTY('FilestreamShareName') AS FilestreamShareName			,-- ; The name of the share used by FILESTREAM.
SERVERPROPERTY('FilestreamConfiguredLevel') AS FilestreamConfiguredLevel 	,-- ; The configured level of FILESTREAM access. For more information, see filestream access level.
SERVERPROPERTY('FilestreamEffectiveLevel') AS FilestreamEffectiveLevel		-- ; The effective level of FILESTREAM access. This value can be different than the FilestreamConfiguredLevel if the level has changed and either an instance restart or a computer restart is pending. For more information, see filestream access level.