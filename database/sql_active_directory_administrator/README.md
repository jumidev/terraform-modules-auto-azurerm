# azurerm_sql_active_directory_administrator

Allows you to set a user or group as the AD administrator for an Azure SQL server.-> **Note:** The `azurerm_sql_active_directory_administrator` resource is deprecated in version 3.0 of the AzureRM provider and will be removed in version 4.0. Please use the `azuread_administrator` block of the [`azurerm_mssql_server`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) resource instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/sql_active_directory_administrator"   
}

inputs = {
   # server_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   login = "The login name of the principal to set as the server administrator..."   
   object_id = "The ID of the principal to set as the server administrator..."   
   # tenant_id → set in tfstate_inputs
}

tfstate_inputs = {
   server_name = "path/to/sql_server_component:name"   
   tenant_id = "path/to/aadb2c_directory_component:tenant_id"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **server_name** | string |  The name of the SQL Server on which to set the administrator. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group for the SQL server. Changing this forces a new resource to be created. | 
| **login** | string |  The login name of the principal to set as the server administrator | 
| **object_id** | string |  The ID of the principal to set as the server administrator | 
| **tenant_id** | string |  The Azure Tenant ID | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **azuread_authentication_only** | string |  Specifies whether only AD Users and administrators can be used to login (`true`) or also local database users (`false`). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
