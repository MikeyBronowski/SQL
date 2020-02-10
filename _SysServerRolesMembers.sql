select * from sys.server_principals SP
join sys.server_role_members SRM on SP.principal_id = SRM.role_principal_id
join sys.server_principals M on M.principal_id = SRM.member_principal_id;