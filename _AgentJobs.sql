select * from msdb.dbo.sysjobs JOBS
left join msdb.dbo.systargetservers TARGETS on TARGETS.server_id = JOBS.originating_server_id
left join msdb.dbo.sysoperators OPERS on OPERS.id = JOBS.notify_email_operator_id
left join sys.server_principals OWNERS on OWNERS.sid = JOBS.owner_sid
left join msdb.dbo.syscategories CATEGORIES on CATEGORIES.category_id = JOBS.category_id;