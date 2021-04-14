--Script shows user permissions
SELECT DISTINCT 
	pr.principal_id, 
	pr.name AS [UserName], 
	pr.type_desc AS [User_or_Role], 
	pr.authentication_type_desc AS [Auth_Type], 
	pe.state_desc,
	isnull(pe.permission_name, '') permission, 
	pe.class_desc, 
	pr.type,
	s.name AS SchemaName,
	o.[name] AS 'Object' 
FROM sys.database_principals AS pr 
LEFT JOIN sys.database_permissions AS pe ON pe.grantee_principal_id = pr.principal_id
LEFT JOIN sys.objects AS o on (o.object_id = pe.major_id)
LEFT JOIN sys.schemas s ON s.schema_id = o.schema_id
where 1 = 1
and (pr.name not like 'db_%') 
and pr.name not in ('guest', 'public', 'sys')
ORDER BY UserName
