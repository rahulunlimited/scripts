
SELECT DISTINCT 
	pr.principal_id, 
	pr.name AS [UserName], 
	pr.type_desc AS [User_or_Role], 
	pr.authentication_type_desc AS [Auth_Type], 
	pe.state_desc,
	pe.permission_name, 
	pe.class_desc, 
	pr.type,
	o.[name] AS 'Object' 
FROM sys.database_principals AS pr 
LEFT JOIN sys.database_permissions AS pe ON pe.grantee_principal_id = pr.principal_id
LEFT JOIN sys.objects AS o on (o.object_id = pe.major_id)
WHERE pr.type not in ('R')
--R is database role
