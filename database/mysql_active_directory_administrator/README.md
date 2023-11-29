# azurerm_mysql_active_directory_administrator

Allows you to set a user or group as the AD administrator for an MySQL server in Azure

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **server_name** | string | True | -  |  -  | The name of the MySQL Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group for the MySQL server. Changing this forces a new resource to be created. | 
| **login** | string | True | -  |  -  | The login name of the principal to set as the server administrator | 
| **object_id** | string | True | -  |  -  | The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **tenant_id** | string | True | -  |  -  | The Azure Tenant ID | 

