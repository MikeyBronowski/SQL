select * from sys.dm_resource_governor_resource_pools RP
JOIN sys.dm_resource_governor_workload_groups WG on WG.pool_id = RP.pool_id