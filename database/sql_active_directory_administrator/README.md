# azurerm_sql_active_directory_administrator



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/sql_active_directory_administrator"   
}

inputs = {
   # server_name → set in component_inputs
   resource_group_name = "${resource_group}"   
   login = "The login name of the principal to set as the server administrator..."   
   object_id = "The ID of the principal to set as the server administrator..."   
   tenant_id = "The Azure Tenant ID"   
}

component_inputs = {
   server_name = "path/to/sql_server_component:name"   
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

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **azuread_authentication_only** | string |  `true`, `false`  |  Specifies whether only AD Users and administrators can be used to login (`true`) or also local database users (`false`). | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **azuread_authentication_only** | string | No  | Specifies whether only AD Users and administrators can be used to login (`true`) or also local database users (`false`). In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the SQL Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
