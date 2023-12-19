# azurerm_mssql_managed_instance_active_directory_administrator

Allows you to set a user, group or service principal as the AAD Administrator for an Azure SQL Managed Instance.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "database/mssql_managed_instance_active_directory_administrator"   
}

inputs = {
   managed_instance_id = "The ID of the Azure SQL Managed Instance for which to set the administrator..."   
   login_username = "The login name of the principal to set as the Managed Instance Administrator..."   
   object_id = "The Object ID of the principal to set as the Managed Instance Administrator..."   
   # tenant_id → set in component_inputs
}

component_inputs = {
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
| **managed_instance_id** | string |  The ID of the Azure SQL Managed Instance for which to set the administrator. Changing this forces a new resource to be created. | 
| **login_username** | string |  The login name of the principal to set as the Managed Instance Administrator. | 
| **object_id** | string |  The Object ID of the principal to set as the Managed Instance Administrator. | 
| **tenant_id** | string |  The Azure Active Directory Tenant ID. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **azuread_authentication_only** | string |  When `true`, only permit logins from AAD users and administrators. When `false`, also allow local database users. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the SQL Managed Instance Active Directory Administrator. | 

Additionally, all variables are provided as outputs.
