# azurerm_sql_active_directory_administrator

Allows you to set a user or group as the AD administrator for an Azure SQL server.-> **Note:** The `azurerm_sql_active_directory_administrator` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the `azuread_administrator` block of the [`azurerm_mssql_server`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) resource instead.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.server_name** | string | True | The name of the SQL Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group for the SQL server. Changing this forces a new resource to be created. | 
| **var.login** | string | True | The login name of the principal to set as the server administrator | 
| **var.object_id** | string | True | The ID of the principal to set as the server administrator | 
| **var.tenant_id** | string | True | The Azure Tenant ID | 
| **var.azuread_authentication_only** | string | False | Specifies whether only AD Users and administrators can be used to login (`true`) or also local database users (`false`). | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **server_name** | string  | - | 
| **resource_group_name** | string  | - | 
| **login** | string  | - | 
| **object_id** | string  | - | 
| **tenant_id** | string  | - | 
| **azuread_authentication_only** | string  | - | 
| **id** | string  | The ID of the SQL Active Directory Administrator. | 