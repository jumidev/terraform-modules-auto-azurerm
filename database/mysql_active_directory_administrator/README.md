# azurerm_mysql_active_directory_administrator

Allows you to set a user or group as the AD administrator for an MySQL server in Azure

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.server_name** | string | True | -  |  -  | The name of the MySQL Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group for the MySQL server. Changing this forces a new resource to be created. | 
| **var.login** | string | True | -  |  -  | The login name of the principal to set as the server administrator | 
| **var.object_id** | string | True | -  |  -  | The ID of the principal to set as the server administrator. For a managed identity this should be the Client ID of the identity. | 
| **var.tenant_id** | string | True | -  |  -  | The Azure Tenant ID | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **login** | string  | - | 
| **object_id** | string  | - | 
| **tenant_id** | string  | - | 
| **id** | string  | The ID of the MySQL Active Directory Administrator. | 