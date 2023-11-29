# azurerm_sql_managed_instance_active_directory_administrator

Allows you to set a user or group as the AD administrator for an Azure SQL Managed Instance.-> **Note:** The `azurerm_sql_managed_instance_active_directory_administrator` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the [`azurerm_mssql_managed_instance_active_directory_administrator`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_managed_instance_active_directory_administrator) resource instead.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **managed_instance_name** | string | True | -  |  -  | The name of the SQL Managed Instance on which to set the administrator. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group for the SQL Managed Instance. Changing this forces a new resource to be created. | 
| **login** | string | True | -  |  -  | The login name of the principal to set as the Managed Instance administrator | 
| **object_id** | string | True | -  |  -  | The ID of the principal to set as the Managed Instance administrator | 
| **tenant_id** | string | True | -  |  -  | The Azure Tenant ID | 
| **azuread_authentication_only** | bool | False | `False`  |  -  | Specifies whether only AD Users and administrators can be used to login (`true`) or also local database users (`false`). Defaults to `false`. | 

