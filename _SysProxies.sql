select * from msdb.dbo.sysproxies PROXY
	join master.sys.credentials CREDS on PROXY.credential_id = CREDS.credential_id
	join msdb.dbo.sysproxysubsystem PROXYSUBSYS on PROXYSUBSYS.proxy_id = PROXY.proxy_id
	join msdb.dbo.syssubsystems SUBSYS on SUBSYS.subsystem_id = PROXYSUBSYS.subsystem_id;