/*Script shows permissions on Schema for Users and Roles */
SELECT pr.principal_id, pr.name, pr.type_desc,   
    pr.authentication_type_desc, pe.state_desc   
	,SCHEMA_NAME(pe.major_id) AS SchemaName
	,pe.PERMISSION_NAME
	,pe.major_id
FROM sys.database_principals AS pr  
JOIN sys.database_permissions AS pe  
    ON pe.grantee_principal_id = pr.principal_id  
where pr.principal_id > 0 --Principal ID O is for user public
and SCHEMA_NAME(pe.major_id) is not null
