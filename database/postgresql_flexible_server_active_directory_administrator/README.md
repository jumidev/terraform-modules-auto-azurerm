# azurerm_postgresql_flexible_server_active_directory_administrator

Allows you to set a user or group as the AD administrator for a PostgreSQL Flexible Server.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **server_name** | string | True | -  |  -  | The name of the PostgreSQL Flexible Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group for the PostgreSQL Server. Changing this forces a new resource to be created. | 
| **object_id** | string | True | -  |  -  | The object ID of a user, service principal or security group in the Azure Active Directory tenant set as the Flexible Server Admin. Changing this forces a new resource to be created. | 
| **tenant_id** | string | True | -  |  -  | The Azure Tenant ID. Changing this forces a new resource to be created. | 
| **principal_name** | string | True | -  |  -  | The name of Azure Active Directory principal. Changing this forces a new resource to be created. | 
| **principal_type** | string | True | -  |  `Group`, `ServicePrincipal`, `User`  | The type of Azure Active Directory principal. Possible values are `Group`, `ServicePrincipal` and `User`. Changing this forces a new resource to be created. | 

