Use Master
exec sp_msForEachDb ' use [?]
select db_name() as [Databast Name], r.[name] as [Role], p.[name] as [Member Name],
	p.[default_schema_name] as [Schema],p.[principal_id] as [Principal Id]
 from  
    sys.database_role_members m 
 join 
    sys.database_principals r on m.role_principal_id = r.principal_id 
 join 
    sys.database_principals p on m.member_principal_id = p.principal_id'
